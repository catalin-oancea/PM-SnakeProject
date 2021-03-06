/*
** lcd.c
**
** LCD 3310 driver
** Unbuffered version - very small memory footprint
** Target: ATMEGA128 :: AVR-GCC
**
** Written by Tony Myatt - 2007
** Quantum Torque - www.quantumtorque.com
*/

#include <stdio.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "lcd.h"

/* Alphabet lookup */
unsigned char PROGMEM font5x7 [][5] = {
    { 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
    { 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
    { 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
    { 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
    { 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
    { 0x32, 0x34, 0x08, 0x16, 0x26 },   // %
    { 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
    { 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
    { 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
    { 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
    { 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
    { 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
    { 0x00, 0x00, 0x50, 0x30, 0x00 },   // ,
    { 0x10, 0x10, 0x10, 0x10, 0x10 },   // -
    { 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
    { 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
    { 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
    { 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
    { 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
    { 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
    { 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
    { 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
    { 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
    { 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
    { 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
    { 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
    { 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
    { 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
    { 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
    { 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
    { 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
    { 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
    { 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
    { 0x7E, 0x11, 0x11, 0x11, 0x7E },   // A
    { 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
    { 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
    { 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
    { 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
    { 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
    { 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
    { 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
    { 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
    { 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
    { 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
    { 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
    { 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
    { 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
    { 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
    { 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
    { 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
    { 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
    { 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
    { 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
    { 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
    { 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
    { 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
    { 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
    { 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
    { 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
    { 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
    { 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
    { 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
    { 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
    { 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
    { 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
    { 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
    { 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
    { 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
    { 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
    { 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
    { 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
    { 0x0C, 0x52, 0x52, 0x52, 0x3E },   // g
    { 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
    { 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
    { 0x20, 0x40, 0x44, 0x3D, 0x00 },   // j
    { 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
    { 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
    { 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
    { 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
    { 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
    { 0x7C, 0x14, 0x14, 0x14, 0x08 },   // p
    { 0x08, 0x14, 0x14, 0x18, 0x7C },   // q
    { 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
    { 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
    { 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
    { 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
    { 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
    { 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
    { 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
    { 0x0C, 0x50, 0x50, 0x50, 0x3C },   // y
    { 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
    { 0x00, 0x7F, 0x3E, 0x1C, 0x08 },   // > Filled
    { 0x08, 0x1C, 0x3E, 0x7F, 0x00 },   // < Filled
    { 0x08, 0x7C, 0x7E, 0x7C, 0x08 },   // Arrow up
    { 0x10, 0x3E, 0x7E, 0x3E, 0x10 },   // Arrow down
    { 0x3E, 0x3E, 0x3E, 0x3E, 0x3E },   // Stop
    { 0x00, 0x7F, 0x3E, 0x1C, 0x08 }    // Play
};
static unsigned char cursor_row = 0; /* 0-5 */
static unsigned char cursor_col = 0; /* 0-83 */
static unsigned char buffer[6][84];	

/* Function prototypes */
static void lcd_send(unsigned char data, LcdCmdData cd);

/* Performs IO & LCD controller initialization */
void lcd_init(void) {

    // Pull-up on reset pin
    LCD_PORT |= LCD_RST_PIN;

	// Set output bits on lcd port
	LCD_DDR |= LCD_RST_PIN | LCD_CE_PIN | LCD_DC_PIN | LCD_DATA_PIN | LCD_CLK_PIN;

	// Wait after VCC high for reset (max 30ms)
    _delay_ms(15);

    // Toggle display reset pin
    LCD_PORT &= ~LCD_RST_PIN;
    lcd_delay();
    LCD_PORT |= LCD_RST_PIN;

    // Disable LCD controller
    LCD_PORT |= LCD_CE_PIN;

    lcd_send(0x21, LCD_CMD);  // LCD Extended Commands
    lcd_send(0xC8, LCD_CMD);  // Set LCD Vop(Contrast)
    lcd_send(0x06, LCD_CMD);  // Set Temp coefficent
    lcd_send(0x13, LCD_CMD);  // LCD bias mode 1:48
    lcd_send(0x20, LCD_CMD);  // Standard Commands, Horizontal addressing
    lcd_send(0x0C, LCD_CMD);  // LCD in normal mode

    // Clear lcd
    lcd_clear();
}

/**
  *	Schimba adresa pointerului la pixelul 'addr'
  *  x - numarul coloanei (din 84 posibile
  *	 y - numarul linie ( din 6 posibile)
  */
void lcd_gotoXY(uint8_t x, uint8_t y) {

	lcd_send(0x80 | x , LCD_CMD);
	lcd_send(0x40 | y , LCD_CMD);
	
	cursor_row = y;
	cursor_col = x;

}

void lcd_clear(void) {

	int i, j;
	
	lcd_gotoXY(0, 0);  //start with (0,0) position

	for(i = 0; i < 6; i++) {
		lcd_gotoXY(0, i);
		for(j = 0; j < 84; j++) {
			//lcd_send(0x00, LCD_DATA);
			buffer[i][j] = 0x00;
		}
	}
	
    lcd_gotoXY(0, 0);	//bring the XY position back to (0,0)
      
}

void lcd_putchr(unsigned char ch) {

	unsigned char j;
	
	//buffer[cursor_row][cursor_col] = 0x00;
	for(j = 0; j < 5; j++)
		buffer[cursor_row][cursor_col + j] =  pgm_read_byte(&font5x7[ch - 32][j]) << 1;

	//buffer[cursor_row][cursor_col + 6] = 0x00;

	for(j = 0; j < 7; j++)
		lcd_send(buffer[cursor_row][cursor_col + j], LCD_DATA);

} 

void lcd_str(char *str) {

	while(*str){
		lcd_putchr(*str++);
	}

}

/* Sends data to display controller */
static void lcd_send(unsigned char data, LcdCmdData cd) {

    // Enable display controller (active low)
    LCD_PORT &= ~LCD_CE_PIN;

    // Either command or data
    if(cd == LCD_DATA) {
        LCD_PORT |= LCD_DC_PIN;
    } else {
        LCD_PORT &= ~LCD_DC_PIN;
    }

	for (unsigned char i=0;i<8;i++) {
		// Set the DATA pin value
		if((data>>(7-i)) & 0x01) {
			LCD_PORT |= LCD_DATA_PIN;
		} else {
			LCD_PORT &= ~LCD_DATA_PIN;
		}

		// Toggle the clock
		LCD_PORT |= LCD_CLK_PIN;
		LCD_PORT &= ~LCD_CLK_PIN;
	}

	// Disable display controller
    LCD_PORT |= LCD_CE_PIN;

}

void lcd_update(void) {
	
	int i, j;

	for (i = 0; i < 6; i++) {
		lcd_gotoXY(0, i);
		for (j=0; j < 84; j++)
			lcd_send(buffer[i][j], LCD_DATA);
	}
	
	lcd_gotoXY(0, 0);	//bring the XY position back to (0,0)

}

void lcd_setpixel(unsigned char x, unsigned char y) {

	unsigned char value;
	unsigned char row;
	
	row = y / 8;

	value = buffer[row][x];
	value |= (1 << (y % 8));
	buffer[row][x] = value;

	lcd_gotoXY(x, row);
	lcd_send(value, LCD_DATA);

}

/* Set display contrast. Note: No change is visible at ambient temperature */
void lcd_contrast(unsigned char contrast) {
	lcd_send(0x21, LCD_CMD);				// LCD Extended Commands
	lcd_send(0x80 | contrast, LCD_CMD);		// Set LCD Vop(Contrast)
	lcd_send(0x20, LCD_CMD);				// LCD std cmds, hori addr mode
}
