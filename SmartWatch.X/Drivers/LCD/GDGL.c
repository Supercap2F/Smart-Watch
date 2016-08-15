/***********************************************************************************
 * Graphical Display Graphics Library                                              *
 *                                                                                 *
 * Copyright (c) 2016, Supercap2F                                                  *
 * All rights reserved.                                                            *
 *                                                                                 *
 * Redistribution and use in source and binary forms, with or without              *     
 * modification, are permitted provided that the following conditions are met:     *
 *                                                                                 *
 *    * Redistributions of source code must retain the above copyright notice,     *
 *      this list of conditions and the following disclaimer.                      *
 *                                                                                 *
 *    * Redistributions in binary form must reproduce the above copyright notice,  *
 *      this list of conditions and the following disclaimer in the documentation  *
 *      and/or other materials provided with the distribution.                     *
 *                                                                                 *
 *    * Neither the name of 16Bit-PIC-GDGL nor the names of its                    *
 *      contributors may be used to endorse or promote products derived from       *
 *      this software without specific prior written permission.                   *          
 *                                                                                 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"     *
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE       *
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE  *
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE    *
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL      *
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR      *
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER      *
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,   *
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   *
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.            *
 *                                                                                 *
 * Project repo here:                                                              *
 *      https://github.com/Supercap2F/16Bit-PIC-GDGL                               *
 ***********************************************************************************/
/************************************************
 * Included Files                               *
 ************************************************/
#define _SUPPRESS_PLIB_WARNING // get rid of annoying warnings
#include <plib.h>
#include "GDGL.h"
#include "SSD1351.h" // header file for display driver
#include "Fonts\DefaultFont.h"   // the default font file

/************************************************
 * Global Variables                             *
 ************************************************/
int tsize=1;   // text size variable
char txwrap=1; // text wrap variable: 1=wrap 0=don't wrap

/************************************************
 * PlotLine Function - This bit of code is      *
 * based on Bresenham's Line Algorithm but      *
 * was written by "jorticus" and paraphrased by *
 * me. His project here:                        *
 *https://github.com/jorticus/zeitgeber-firmware*                    
 ************************************************/
void PlotLine(int x0, int y0, int x1, int y1, int color) {
	int err2; // second error variable, always twice err 

    int deltaX = GDGL_abs(x1 - x0);   // delta x 
    int deltaY = GDGL_abs(y1 - y0);   // delta y

    int sx = (x0 < x1) ? 1 : -1; // x direction
    int sy = (y0 < y1) ? 1 : -1; // y direction 
    int err = deltaX - deltaY;   // error variable 

    while (1) {
        PlotPoint(x0, y0, color); // Plot the current point on the line

        if((x0==x1)&&(y0==y1))    // if finished drawing line 
            return;               //    return 
        err2=2*err;               //
        if (err2 > -deltaY) {     // check if the error is great enough to increment x0 (for more vertical octants)
            err -= deltaY;        //
            x0 += sx;             //
        }                         //
        if (err2 < deltaX) {      // check if the error is great enough to increment y0 (for more horizontal octants)
            err += deltaX;        //
            y0 += sy;             //
        }
    }
}

/************************************************
 * PlotVLine Function - This function plots a   *
 * optimized vertical line.                     *
 ************************************************/
void PlotVLine(int x, int y, int length, int color) {
    int t;
    if(length<0){        // if length is negative 
        length=0-length; // swap length sign
        y=y-length;      // swap y position
    }
    for(t=0;t<length;t++)       // plot the vertical line
        PlotPoint(x,y+t,color); //
}
/************************************************
 * PlotHLine Function - This function plots a   *
 * optimized horizontal line.                   *
 ************************************************/
void PlotHLine(int x, int y, int length, int color) {
    int t;
    if(length<0){        // if length is negative 
        length=0-length; // swap length sign
        x=x-length;      // swap y position
    }
    for(t=0;t<length;t++)       // plot the horizontal line
        PlotPoint(x+t,y,color); //
}
/************************************************
 * PlotRectangle Function - This function plots *
 * optimized rectangle.                         *
 ************************************************/
void PlotRectangle(int x, int y, int w, int h, int color) {
    PlotHLine(x,y,w,color);     // plot top line
    PlotHLine(x,y+h-1,w,color); // plot bottom line
    PlotVLine(x,y,h,color);     // plot left line
    PlotVLine(x+w-1,y,h,color); // plot right line
}
/************************************************
 * PlotTriangle Function - This function plots  *
 * triangle ABC.                                *
 ************************************************/
void PlotTriangle(int xA, int yA, int xB, int yB, int xC, int yC, int color){
    PlotLine(xA,yA,xB,yB,color); // plot first segment AB
    PlotLine(xB,yB,xC,yC,color); // plot second segment BC
    PlotLine(xA,yA,xC,yC,color); // plot third segment AC
}
/************************************************
 * PlotCirculeQuadrant Function - This function *
 * plots a quadrant of a circle at a given      *
 * location (x,y). Quadrant numbers:            *
 *     |                                        *
 *   1 | 0                                      *
 * ---------                                    *
 *   2 | 3                                      *
 *     |                                        *
 * Function is based upon Bresenham's circle    *
 * drawing algorithm.                           *
 ************************************************/
int PlotCircleQuadrant(int x0, int y0, int r, int quad, int color) {
   int x=r; 
   int y=0;
   int del_x=1-2*r; 
   int del_y=1;
   int r_err=0;
   
   if(quad<0 || quad>3)         // if sent a number that is not a quadrant 
       return(GDGL_OUTOFRANGE); // return error
   
   while (x>=y) {
     switch(quad) {
           case 3:
               PlotPoint(x0 + x, y0 + y,color); // third quadrant 
               PlotPoint(x0 + y, y0 + x,color); // 
               break;
           case 2:
               PlotPoint(x0 - y, y0 + x,color); // second quadrant
               PlotPoint(x0 - x, y0 + y,color); // 
               break;
           case 1:
               PlotPoint(x0 - x, y0 - y,color); // first quadrant
               PlotPoint(x0 - y, y0 - x,color); // 
               break;
           case 0:
               PlotPoint(x0 + y, y0 - x,color); // zero quadrant 
               PlotPoint(x0 + x, y0 - y,color); // 
               break;
       }
      y++;
      r_err+=del_y;
      del_y+=2;
      if((2*r_err + del_x)>0) {
          x--;
          r_err+=del_x;
          del_x+=2;
      }
   }
   return(GDGL_SUCCESS);
}
/************************************************
 * PlotCircle Function - This function plots a  *
 * circle with the center at x0,y0 and the      *
 * radius r. This is based upon Bresenham's     *
 * circle drawing algorithm.                    *
 ************************************************/
int PlotCircle(int x0, int y0, int r, int color)  {
   int x=r; 
   int y=0;
   int del_x=1-2*r; 
   int del_y=1;
   int r_err=0;
   
   if(r<0)                      // if function is sent a negative radius
       return(GDGL_OUTOFRANGE); //     return error 
   
   while (x>=y) {
      PlotPoint(x0 + x, y0 + y,color); // 3 plot all quadrants (circle drawn with symmetry)
      PlotPoint(x0 + y, y0 + x,color); // 3
      PlotPoint(x0 - y, y0 + x,color); // 2
      PlotPoint(x0 - x, y0 + y,color); // 2            
      PlotPoint(x0 - x, y0 - y,color); // 1
      PlotPoint(x0 - y, y0 - x,color); // 1
      PlotPoint(x0 + y, y0 - x,color); // 0
      PlotPoint(x0 + x, y0 - y,color); // 0
                
      y++;
      r_err+=del_y;
      del_y+=2;
      if((2*r_err + del_x)>0) {
          x--;
          r_err+=del_x;
          del_x+=2;
      }
   }
   return(GDGL_SUCCESS);
}
/************************************************
 * PlotRoundRect Function - Plots a rectangle   *
 * with rounded corners.                        *
 ************************************************/
int PlotRoundedRect(int x, int y, int w, int h, int r, int color){
    if(r<0)                      // if function is sent a negative radius
        return(GDGL_OUTOFRANGE); //     return error 
    
    PlotHLine(x+r,y,w-2*r,color);     // plot top line
    PlotHLine(x+r,y+h-1,w-2*r,color); // plot bottom line
    PlotVLine(x,y+r,h-2*r,color);     // plot left line
    PlotVLine(x+w-1,y+r,h-2*r,color); // plot right line
    
    PlotCircleQuadrant(x+r,y+r,r,1,color);         // plot top left (quad 1) 
    PlotCircleQuadrant(x+w-r-1,y+r,r,0,color);     // plot top right (quad 0)
    PlotCircleQuadrant(x+w-r-1,y+h-r-1,r,3,color); // plot bottom right (quad 3)      
    PlotCircleQuadrant(x+r,y+h-r-1,r,2,color);     // plot bottom left (quad 2)
    return(GDGL_SUCCESS);
}
/************************************************
 * PlotFilledRectangle Function - Plots a       *
 * filled rectangle.                            *
 ************************************************/
void PlotFilledRectangle(int x, int y, int w, int h, int color) {
    int z;
    for(z=x;z<w+x;z++)          // plot the rectangle with vertical lines 
        PlotVLine(z,y,h,color); // 
}
/************************************************
 * PlotRoundFilledSide Function - Function      *
 * plots a rectangle side with rounded corners. *
 * 0 = right, 1 = left. This is based upon      *
 * Bresenham's circle drawing algorithm.        *                    
 ************************************************/
void PlotRoundFilledSide(int x0, int y0, int r, int h, int RorL, int color){
    int x=r; 
    int y=0;
    int del_x=1-2*r; 
    int del_y=1;
    int r_err=0;
   
    while (x>=y) {
        if (RorL==0) {
            PlotVLine(x0+x, y0-y, 2*y+1+h, color);
            PlotVLine(x0+y, y0-x, 2*x+1+h, color);
        }
        if (RorL==1) {
            PlotVLine(x0-x, y0-y, 2*y+1+h, color);
            PlotVLine(x0-y, y0-x, 2*x+1+h, color);
        } 
                
      y++;
      r_err+=del_y;
      del_y+=2;
      if((2*r_err + del_x)>0) {
          x--;
          r_err+=del_x;
          del_x+=2;
      }
   }
}

/************************************************
 * PlotFilledRoundedRect Function - Function    *
 * plots a rectangle with rounded corners.      *
 ************************************************/
int PlotFilledRoundedRect(int x0, int y0, int w, int h, int r, int color) {
    int z;
    if(r<0)                      // if function is sent a negative radius value 
        return(GDGL_OUTOFRANGE); //     return error 
    
    for(z=y0;z<h+y0;z++)                  // plot center of the rounded rectangle 
        PlotHLine(x0+r,z,w-2*r,color);    //
    
    PlotRoundFilledSide(x0+w-r-1, y0+r, r, h-2*r-1, 0, color); // plot right side 
    PlotRoundFilledSide(x0+r,     y0+r, r, h-2*r-1, 1, color); // plot left side 
    return(GDGL_SUCCESS);
}

/************************************************
 * PlotFilledRoundedRect Function - Function    *
 * plots a rectangle with rounded corners.      *
 ************************************************/
int PlotFilledCircle(int x0, int y0, int r, int color){
    if(r<0)                      // if function is sent a negative radius value
        return(GDGL_OUTOFRANGE); //     return error 
    
    PlotVLine(x0, y0-r, 2*r+1, color);
    PlotRoundFilledSide(x0, y0, r, 0, 0, color); // plot right side
    PlotRoundFilledSide(x0, y0, r, 0, 1, color); // plot left side 
    return(GDGL_SUCCESS);
}

/*******************************************************************************
 * Text drawing functions past this point.                                     *
 *******************************************************************************/
/************************************************
 * WriteChar Function - function plots a single *
 * character.                                   *
 ************************************************/
int WriteChar(int x0, int y0, unsigned char letter, int color, int backcolor){
    int x,y,ySize,xSize;
    unsigned char mask;
    
    if(letter<0x20||letter>0x7E) // if function is sent a ASCII character it can't print
        return(GDGL_OUTOFRANGE); // return Out of Range error 
    letter-=0x20;                // subtract unused ASCII characters so variable  
                                 // 'letter' can be used for an arrays value
    
    for(x=x0;x<(5*tsize)+x0;x+=tsize){           // Please don't try to understand this - just accept it. 
        mask=1;                                  // reset mask variable 
        for(y=y0;y<(8*tsize)+y0;y=y+tsize){      //
            for(xSize=0;xSize<tsize;xSize++)     // 
                for(ySize=0;ySize<tsize;ySize++) // 
                    PlotPoint(x+xSize,y+ySize,((Dfont[letter][((x-x0)/tsize)] & mask) ? color:backcolor));
            mask<<=1;                            // shift the mask left 1 bit
        }
    }
    return(GDGL_SUCCESS);
}
/************************************************
 * WriteChar Function - function plots a string *
 ************************************************/
int WriteString(int x0, int y0, char *string, int color, int backcolor){
    int error_code=0;
    
    while(*string) // will loop until NULL is reached (0x00)
    {
        error_code=WriteChar(x0, y0, *string, color, backcolor); // write the current character to the screen
        
        if(error_code!=GDGL_SUCCESS) // if WriteChar returns an error 
            return(error_code);      // stop and return it to the user 
        
        if(txwrap) {                         // if the user wants the text to wrap:
            if(Scrn_W-(x0+5*tsize)<5*tsize){ // if there is not enough room to print the character on the same line
                y0+=8*tsize;                 // drop the current line down one 
                if(Scrn_H-y0<8*tsize)        // if there's not enough room to print the character on the next line
                    return(GDGL_PRNTCUTOFF); // return error
                x0=0;                        // reset x axis
                string++;                    // increment the current character
            }
            else {                                  // else 
                x0+=5*tsize;                        // do the regular text stuff
                PlotVLine(x0,y0,7*tsize,backcolor); //
                string++;                           //
                x0++;                               //
            }
        }
        else {                                 // else if the user does not want the text to wrap:
            x0+=5*tsize;                       // increment the x axis to make a spot for the new character
            PlotVLine(x0,y0,7*tsize,backcolor);// plot a blank line between characters
            string++;                          // increment the current character
            x0++;                              // increment x axis to make room for line just plotted
        }
    }
    return(GDGL_SUCCESS); // return success code 
}
/************************************************
 * SetTextSize Function - sets the current      *
 * text size.                                   *
 ************************************************/
int SetTextSize(int Tx_size){
    if(Tx_size==0)               // if size is zero
        return(GDGL_OUTOFRANGE); // return error 
    tsize=Tx_size;               // else set global size variable to Tx_size
    return(GDGL_SUCCESS);        // return success 
}
/************************************************
 * SetTextWrap Function - sets the text to wrap *  
 * or not.                                      *
 ************************************************/
void SetTextWrap(char Tx_wrap){
    if(Tx_wrap)   // if Tx_wrap is 1
        txwrap=1; // set the text to wrap
    else          // else
        txwrap=0; // set it to not wrap
}
/*******************************************************************************
 * Bitmap functions past this point                                            *
 *******************************************************************************/
/************************************************
 * PlotBitmap Function - plots a R5 G6 B5       *  
 * bitmap.                                      *
 ************************************************/
void PlotBitmap(int x0, int y0, int w, int h,const unsigned short *image){
    int x,y;
    for(y=0;y<h;y++)
        for(x=0;x<w;x++)
            PlotPoint(x+x0,y+y0,*(image+(x+y*w)));    
}

int GDGL_abs(int num) {
  if(num<0)         // if the number is negative 
    return(-num);   //  return it's positive 
  else              // else 
    return(num);    //  return the number 
}
/*********************************************************************************
 * REASOURCES:                                                                   *
 * http://web.engr.oregonstate.edu/~sllu/bcircle.pdf - circle drawing algorithm  *
 * https://en.wikipedia.org/wiki/Xiaolin_Wu%27s_line_algorithm
 * https://github.com/jorticus/zeitgeber-firmware
 *********************************************************************************/

