/******************************************************************************/
/* File:   main.c                                                             */
/* Author: Supercap2F                                                         */
/*                                                                            */
/* Created on August 03, 2016, 11:32 PM                                       */
/******************************************************************************/
/* ****************************************************************************/
/* Section: Included Files                                                    */
/* ****************************************************************************/
#define _SUPPRESS_PLIB_WARNING // get rid of annoying warnings 
#include <plib.h>
#include "init_sys.h"
#include "Drivers/LCD/SSD1351.h"

/* ****************************************************************************/
/* Section: Definitions                                                       */
/* ****************************************************************************/
#define FALSE 0
#define TRUE !FALSE
#define FCY 100000000

/* ****************************************************************************/
/* Section: Configuration                                                     */
/* ****************************************************************************/
#pragma config FNOSC    = PRIPLL   // the defualt oscillator is Posc with PLL
#pragma config POSCMOD  = HS       // Posc is in HS mode *MAY NEED TO CHANGE TO XT*
#pragma config FPLLIDIV = DIV_5    // divide the crystal freq. by 5 going into the PLL
#pragma config FPLLMUL  = MUL_19   // multiply it by 20 comming out
#pragma config FPLLODIV = DIV_1    // divide the output from the PLL by one - Posc will be 100MHz

#pragma config ICESEL   = ICS_PGx1 // program on PGEC/PGED 1
#pragma config OSCIOFNC = OFF      // oscillator out pin disabled 

/* ****************************************************************************/
/* Section: Local Functions                                                   */
/* ****************************************************************************/


/* ****************************************************************************/
/* Section: Main Code                                                         */
/* ****************************************************************************/
int main() {
    SYSTEMConfigPerformance(FCY); // setup system to improve performance 
    init_io_ports();              // initialize I/O ports 
    LCD_Setup();                  // setup the LCD
//    dis_RES=1;
//    dis_CS=1;
//    dis_D_C=1;
//    dis_E_RD=1;
//    dis_R_W=1;
//    dis_EN=1;
//    LATE=0xFF;
    
    while(1){ // main loop 
        delay_clock(10000);
        LATDbits.LATD8=1;
        delay_clock(10000);
        LATDbits.LATD8=0;
    }
}

