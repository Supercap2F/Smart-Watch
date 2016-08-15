/******************************************************************************/
/* File:   SSD1351.h                                                          */
/* Author: Supercap2F                                                         */
/*                                                                            */
/* Created on August 04, 2016, 6:00 PM                                        */
/******************************************************************************/
#ifndef SSD1351_H
#define	SSD1351_H
/******************************************************************************/
/* Section: Definitions                                                       */
/******************************************************************************/
/* 
 * Section: Screen info
 * Notes:
 *      D0:7 are on PORTE
 */
#define dis_RES  LATDbits.LATD9
#define dis_CS   LATDbits.LATD10
#define dis_D_C  LATBbits.LATB15
#define dis_E_RD LATDbits.LATD4
#define dis_R_W  LATDbits.LATD5
#define dis_EN   LATFbits.LATF3

#define Scrn_W 128 // screen width
#define Scrn_H 128 // screen heigth

/* 
 * Section: Returnable codes 
 */
#define SUCCESS 1
#define OUT_OF_RANGE 2

/* 
 * Section: Passable codes 
 */
#define CMD 0
#define DAT 1

/* 
 * Section: Display Commands
 */
#define SET_COL_ADDR       0x15
#define SET_ROW_ADDR       0x75
#define WRITE_RAM_CMD      0x5C
#define READ_RAM_CMD       0x5D
#define SET_COLOR_DEPTH    0xA0
#define SET_DIS_START_LINE 0xA1
#define SET_DIS_OFFSET     0xA2
#define SET_DIS_OFF        0xA4
#define SET_DIS_ON         0xA5
#define SET_DIS_NORM       0xA6
#define SET_DIS_INVRT      0xA7
#define FUNCTION_SELECT    0xAB
#define DIS_NOP            0xAD
#define SET_SLEEP_ON       0xAE
#define SET_SLEEP_OFF      0xAF
#define DIS_NOP_2          0xB0
#define SET_RESET          0xB1
#define SET_SEG_LOW_VOLT   0xB4
#define SET_GPIO           0xB5
#define SET_SEC_PRECHARGE  0xB6
#define GRAY_SCALE_WIDTH   0xB8
#define USE_BUILT_IN_LUT   0xB9 
#define SET_PRECHARGE_VOLT 0xBB
#define SET_VCOMH_VOLT     0xBE
#define SET_CONTRAST       0xC1
#define MSTR_CTRST_CURENT  0xC7
#define SET_MUX_RATIO      0xCA
#define DIS_NOP_3          0xD1
#define DIS_NOP_4          0xE3
#define SET_COMMAND_LCK    0xFD
#define HORIZONTAL_SCROLL  0x96
#define STOP_MOVING        0x9E
#define START_MOVING       0x9F

/* 
 * Section: colors
 */
#define RED     0xF800
#define GREEN   0x07E0
#define BLUE    0x001F
#define CYAN    0x07FF
#define MAGENTA 0xF81F
#define YELLOW  0xFFE0 
#define BLACK   0x0000
#define WHITE   0xFFFF

/******************************************************************************/
/* Section: Function prototypes                                               */
/******************************************************************************/
void LCD_Setup(void);
int  LCD_SetAddr(unsigned char column, unsigned char page, unsigned char endcolumn, unsigned char endpage);
void LCD_Write(unsigned int cmd, unsigned int DorC);
int  PlotPoint(int x, int y, int state);
void LCD_ClearDisplay(void);
void LCD_SetRotation(unsigned char rot);
void delay_clock(unsigned int d);
#endif	/* SSD1351_H */

