/*
** lcd.h
**
** LCD 3310 driver
** Target: ATMEGA :: AVR-GCC
**
** Written by Tony Myatt - 2007
** Quantum Torque - www.quantumtorque.com
*/

void lcd_base_addr(unsigned int addr);

#ifndef _NOKIALCD_H_
#define _NOKIALCD_H_

/* Lcd screen size */
#define LCD_X_RES 84
#define LCD_Y_RES 48
#define LCD_CACHE_SIZE ((LCD_X_RES * LCD_Y_RES) / 8)

/* Pinout for LCD */
#define LCD_CLK_PIN     (1<<PA4)
#define LCD_DATA_PIN    (1<<PA3)
#define LCD_DC_PIN      (1<<PA2)
#define LCD_CE_PIN      (1<<PA1)
#define LCD_RST_PIN     (1<<PA0)
#define LCD_PORT        PORTA
#define LCD_DDR         DDRA

/* Special Chars */
#define ARROW_RIGHT     ICON(0)
#define ARROW_LEFT      ICON(1)
#define ARROW_UP        ICON(2)
#define ARROW_DOWN      ICON(3)
#define STOP            ICON(4)
#define PLAY            ICON(5)

/* Function for my special characters */
#define	ICON(x)         'z'+1+x

/* Command type sent to the lcd */
typedef enum { LCD_CMD  = 0, LCD_DATA = 1 } LcdCmdData;

/* Macro pt delay delay */
#define lcd_delay() for(volatile int i=-32000;i<32000;i++)

void lcd_init(void);
void lcd_contrast(unsigned char contrast);
void lcd_clear(void);
void lcd_putchr(unsigned char ch);
void lcd_str(char *str);
void lcd_gotoXY(uint8_t x, uint8_t y);
void lcd_update( void );
void lcd_setpixel(unsigned char x, unsigned char y);

#endif
