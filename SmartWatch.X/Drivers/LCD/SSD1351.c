/******************************************************************************/
/* File:   SSD1351.c                                                          */
/* Author: Supercap2F                                                         */
/*                                                                            */
/* Created on August 04, 2016, 6:00 PM                                        */
/******************************************************************************/
/******************************************************************************/
/* Section: Includes                                                          */
/******************************************************************************/
#define _SUPPRESS_PLIB_WARNING
#include <plib.h>
#include "SSD1351.h"

/******************************************************************************/
/* Section: LCD_Write Function                                                */
/******************************************************************************/
void LCD_Write(unsigned int cmd, unsigned int DorC) {
    int x;
    dis_E_RD=1;   // setup the latch 
    dis_CS=0;     // make sure the chip is selected
    dis_R_W=0;    // make this a write operation
    dis_D_C=DorC; // is it a data or command 
    
    delay_clock(300);
    
    LATE=cmd;
    
    delay_clock(300);
    
    dis_E_RD=0;      // clock the data in 
    
    delay_clock(300);
}

/******************************************************************************/
/* Section: LCD_Setup Function                                                */
/******************************************************************************/
void LCD_Setup(void) {
    long x;
    
    delay_clock(100000); // delay for 1ms for vdd to become stable
    dis_RES=1; // reset display
    delay_clock(100000);
    dis_RES=0; // finish reset
    delay_clock(100000);
    dis_RES=1;
    
    
    dis_EN=1;  // turn on VCC
    delay_clock(100000);
    
    
    LCD_Write(SET_COMMAND_LCK,CMD); // unlock all commands 
    LCD_Write(0x12,DAT);
    LCD_Write(SET_COMMAND_LCK,CMD);  
    LCD_Write(0xB1,DAT);
    
    LCD_Write(SET_SLEEP_OFF,CMD);   // send display on command 
    
    LCD_Write(SET_COL_ADDR,CMD);    // set the column addresses 
    LCD_Write(0,DAT);               // 0 for the start address
    LCD_Write(127,DAT);             // 127 for the end address
    
    LCD_Write(SET_ROW_ADDR,CMD);    // set the row addresses 
    LCD_Write(0,DAT);               // 0 for the start address
    LCD_Write(127,DAT);             // 127 for the end address
    
    LCD_Write(SET_COLOR_DEPTH,CMD); // set the color depth to 65K and other things too
    LCD_Write(0b01000000,DAT);      //
    
    LCD_Write(SET_DIS_NORM,CMD);    // set to normal display
    
    LCD_Write(FUNCTION_SELECT,CMD); // select the 8 bit interface and internal VDD
    LCD_Write(0b00000001,DAT);      //
    
    LCD_Write(SET_SEG_LOW_VOLT,CMD); // set the VSL to internal
    LCD_Write(0b10100010,DAT);       //
    LCD_Write(0b10110101,DAT);       //
    LCD_Write(0b01010101,DAT);       //
    
    
    //LCD_Write(SET_DIS_ON,CMD); 
    
    
    LCD_Write(WRITE_RAM_CMD,CMD);
    //
        LCD_Write(0xFF,DAT);
        LCD_Write(0x00,DAT);
    //}
    
}

int  PlotPoint(int x, int y, int state) {}

void delay_clock(unsigned int d) { 
    unsigned int startTime = ReadCoreTimer();
    while ( ReadCoreTimer() - startTime < d/2);  
 } 