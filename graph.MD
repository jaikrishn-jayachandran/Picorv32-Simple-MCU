%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#0f172a',
    'primaryTextColor': '#f8fafc',
    'primaryBorderColor': '#3b82f6',
    'lineColor': '#64748b',
    'secondaryColor': '#1e293b',
    'tertiaryColor': '#334155',
    'background': '#030712'
  }
}}%%

flowchart TB
    subgraph System_Boundary ["ESP32 Secure OTA Ecosystem Architecture"]
        direction TB

        subgraph MCU_Core ["ESP32 Microcontroller Unit (SoC Layer)"]
            direction TB
            CPU["Tensilica Xtensa / RISC-V Dual-Core CPU<br/>- RTOS Task Scheduler (FreeRTOS)<br/>- Background Daemon: MQTT & OTA Listener Task"]
            Crypto["Hardware Crypto Accelerator<br/>- AES-256 Engine<br/>- SHA-256 Digest Verification Module"]
            NetStack["ESP-IDF Network Stack<br/>- Wi-Fi Driver & TCP/IP Stack<br/>- mbedTLS Security Layer"]
        end

        subgraph Memory_Map ["Flash Memory & Storage Topology (SPI Flash)"]
            direction LR
            subgraph Boot_Sec ["Bootloader Region"]
                ROM["1st Stage ROM Bootloader"]
                BL2["2nd Stage Bootloader (Boot Manager)"]
            end
            subgraph Part_Sec ["Partition Layout"]
                NVS["NVS Partition<br/>- FACTORY_DEVICE_ID<br/>- FACTORY_DEVICE_FAMILY<br/>- NVS_VERSION (u32)<br/>- FACTORY_AES_KEY (32-Byte)<br/>- Wi-Fi & MQTT Credentials"]
                OTA_DATA["OTA Data Partition<br/>- Active Slot Pointer (ota_0 / ota_1)"]
                App0["ota_0 Slot<br/>Active / Fallback Firmware Image"]
                App1["ota_1 Slot<br/>Inactive / Update Target Image"]
            end
        end

        subgraph Cloud_Infra ["Cloud & CI/CD Pipeline (External Infrastructure)"]
            direction TB
            subgraph Git_Repo ["GitHub Codebase"]
                Src["User Space Application Code"]
                Cfg["config.json (Version Metadata Manifest)"]
            end
            subgraph CI_Pipeline ["GitHub Actions Runner"]
                Compiler["ESP-IDF Toolchain Compiler (.bin)"]
                Signer["Python AES-256 Encryption & Signer Utility"]
            end
            subgraph MQTT_Broker ["HiveMQ Cloud Broker (Port 8883)"]
                Topic["Topic: /esp32-ota/trigger/jaikrishn-jayachandran<br/>Payload: Ciphertext Token (DoS Mitigation)"]
            end
        end

        %% Inter-layer connections
        Src -->|git push| Compiler
        Compiler --> Signer
        Signer -->|Encrypted MQTT Packet| Topic
        Topic -->|TLS / MQTT Stream| NetStack
        NetStack --> Crypto
        Crypto -->|Decrypted Trigger Payload| CPU
        CPU -->|HTTPS GET Manifest Check| Cfg
        CPU -->|Read/Write State| NVS
        BL2 --> OTA_DATA
        OTA_DATA --> App0
        OTA_DATA --> App1
    end