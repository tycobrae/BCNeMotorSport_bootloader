this is the project of the bootloader of bcnemotorsport

This bootloader is based on the openblt project from feaser, for futher information refer to the webpage of the creator.

Sumary: the main idea is to have 2 diferent codes in the same microcontroller. First one runs and checks for to update the firmware for the ecu, is a now fw is detectec, start erasing the previous proprgam and then starts the new program if no new fw is detected afret a few ms the preexisting aplication starts to run. If ther is no aplicaiton in the flash memory, the bootloader will keep running forever 

For using this project, first clone it in the project workspace and the openblt repo.

Its very important to make sure that the conig_blt.h file in the booloader project is properly configured for the intended ECU, specially the can baud rate (does not need to match the line baudrate, can be any other one), the reciver id and sender id (this should be diferent for every ECU in the car, this will make possible for the host to choose beetwen the diferent ECU's conected to the line. Its also important to mention that this bootloader is adapted to stm32f405rgt6 microcontollers, other midrocontroller like the one used in the dashboard should have a diferent bootloader. Its also important to modify in the led.c file in the function LedBlinkTask() to adapt the pins the led pin of the different ecu's, and also the LedBlinkInit to choose the desired blink period.


3. Make sure that the flash start adress in the STM32F405RGTX_FLASH.ld file of the aplication is properly set to 0x8008000. and the lentgh set to 1024k - 32k, since the first 32k (8000 bytes in hex) are reserved for the bootloader program. Its also important to modify in the system_stm32f4xx.c file in the Core/Src folder to uncoment the line #define USER_VECT_TAB_ADDRESS and modify the vect_tab_offset to 0x08008000.

4. when you have the needed modifications done in the bootloader and the application done, erease the memory of the mcu using stm32cubeprogrammer. Then load the bootloader program as normal and make sure that the led is blinking at the rate you selected in the led.c file, it should never stop blinking. Once yo see it blicking open the microbot app located in the host folder of the open blt cloned repository, click in the setting and meke sure to select the can interface (probably kvaser) the baund rate and the id of the reciver and transmited you choose in the bltconf.h file previously. The program should start erase and programming the flash sector.




4. In case you want to debug the aplication Another important thing is to make sure to diable the download process in the debug configuration of the aplication since it will overwrite the application iself. This can be done in the debug dropdown,  debug configurations, select in the stm32 c/c++ aplication the main application and in the startup tab, select the load ima and symbols, edit and diable the download.



Is not working?

checklist:

is the blt_conf file properly set? check for the reciver and transmiter id. The can baudrate properly set, the size of the flash 

Led pins properly working.?

Kvaser conected? Power green and when starting the upload prcess can led blinking yellow. Remember that the kavaser can not work with 2 applications at the same time.

Flash.id properly set to 0x08008000?

its also importat to check the run/debug file you are uploading to the mcu sin you will be working with 2 projects at the same time in the workspace

