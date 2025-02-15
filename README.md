# Bootloader Project for BCN eMotorsport

This project is a bootloader implementation for BCN eMotorsport, based on the [OpenBLT](https://www.feaser.com/openblt/) project from Feaser. For further information, refer to the creator's webpage.

## Summary
The main idea is to have two different codes running on the same microcontroller:
1. The bootloader runs first and checks if a firmware update for the ECU is available. 
2. If a new firmware is detected, the bootloader erases the previous program and starts the new one.
3. If no new firmware is detected after a few milliseconds, the preexisting application starts running.
4. If no application is found in the flash memory, the bootloader will keep running indefinitely.

## Setup and Configuration
### Cloning the Repository
To use this project, first clone it into your project workspace along with the OpenBLT [repository](https://github.com/feaser/openblt).

### Configuring the Bootloader
Make sure the `blt_conf.h` file in the bootloader project is properly configured for the intended ECU. Pay special attention to:
- **CAN baud rate**: It does not need to match the main CAN line baud rate and can be set independently.
- **Receiver ID and Sender ID**: Each ECU in the car should have a different ID, allowing the host to select between the different ECUs connected to the CAN network.
- **Microcontroller compatibility**: This bootloader is adapted for the STM32F405RGT6. Other microcontrollers, such as the one used in the dashboard, will require a different bootloader.
- **LED Configuration**:
  - Modify the `.ioc` file to set the LED pin of your MCU as an output.
  - In `led.c`, update `LedBlinkTask()` to configure the LED pin correctly for different ECUs.
  - Adjust `LedBlinkInit()` to choose the desired blink period.
- **CAN Pin Configuration**:
  - Ensure the CAN pins match the PCB design.

    
### Configuring the Application
Ensure that the application is correctly set up:
1. **Flash Memory Addressing**:
   - In the `STM32F405RGTX_FLASH.ld` file, set the flash start address to `0x08008000` (line 50).
   - Adjust the length to `1024K - 32K`, since the first `32Kb` (`0x8000` bytes in hex) are reserved for the bootloader.
2. **Vector Table Offset**:
   - In `system_stm32f4xx.c` (found in `Core/Src`), uncomment the line:
     ```c
     #define USER_VECT_TAB_ADDRESS
     ```
   - Modify `VECT_TAB_OFFSET` to `0x08008000`.
3. **Startup file**:
   - In the `startup_stm32f405rftx.s` file, in /Core/Surtup, comment the line 97:
     ```c
     bl __libc_init_array
     ```
4. **Srec file generation**:
   - To generate the srec file needed to flash the MCU, right click in the project -> properties -> C/C++ build, open the xpandable -> Settings -> MCU Post build outputs -> Check the srec file generation

### Flashing the Bootloader and Application
1. Once all modifications are complete, erase the MCU memory using **STM32CubeProgrammer**.
2. Load the bootloader program as usual.
3. Verify that the LED blinks at the configured rate (it should never stop blinking).
4. Open the **MicroBoot** application located in the `host` folder of the OpenBLT cloned repository.
5. In **MicroBoot settings**, configure:
   - CAN interface (likely **Kvaser**).
   - Baud rate and receiver and transmitter IDs (as set in `blt_conf.h`).
6. Start the update process. The bootloader should erase and program the flash memory.

## Debugging the Application
When debugging the application, **disable the download process** in the debug configuration to prevent overwriting the application itself:
1. Go to **Debug Configurations**.
2. Under **STM32 C/C++ Application**, select the main application.
3. In the **Startup** tab:
   - Select **Load image and symbols**.
   - Click **Edit** and **disable download**.

## Troubleshooting Checklist
If something isn't working, check the following:
- Is `blt_conf.h` properly configured?
  - Verify the **receiver and transmitter IDs**.
  - Ensure the **CAN baud rate** is correctly set.
  - Check the **flash memory size**.
- Are the LED pins configured correctly?
- Is the Kvaser CAN adapter connected?
  - Power LED should be green.
  - During upload, CAN LED should blink yellow.
  - Remember: Kvaser cannot be used by two applications simultaneously.
- Is `FLASH.id` properly set to `0x08008000`?
- Are you using the correct **Run/Debug** configuration?
  - Make sure you're flashing the correct project in the workspace, as you'll be working with two different projects (bootloader and application).

---
This guide ensures proper configuration and debugging of the bootloader and application. If issues persist, verify all settings and consult OpenBLT documentation for further troubleshooting.
