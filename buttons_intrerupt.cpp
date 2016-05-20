/*
 * PM - 2016
 * lab0.c
 */

#define F_CPU 16000000

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/signal.h>

#define BTN_UP 		PB0
#define BTN_RIGHT	PB1
#define BTN_DOWN 	PB2
#define BTN_LEFT	PB3

/* intreruperea pentru pin change PB0 si PB1 */
ISR(PCINT1_vect)
{
    // PB0 apasat
    if((PINB & (1 << BTN_UP)) == 0)
    {
  		PORTD |= (1 << PD7);
  		_delay_ms(100);
  		PORTD &= ~(1 << PD7);
    }
    
    // PB1 apasat
    if((PINB & (1 << BTN_RIGHT)) == 0)
    {
  		PORTD |= (1 << PD7);
  		_delay_ms(1000);
  		PORTD &= ~(1 << PD7);
    }
	
    // PB2 apasat
    if((PINB & (1 << BTN_DOWN)) == 0)
    {
  		PORTD |= (1 << PD7);
  		_delay_ms(3000);
  		PORTD &= ~(1 << PD7);
    }
	
    // PB3 apasat
    if((PINB & (1 << BTN_LEFT)) == 0)
    {
  		PORTD |= (1 << PD7);
  		_delay_ms(10000);
  		PORTD &= ~(1 << PD7);
    }
	
}

/* initializeaza intrarile si iesirile */
void IO_init()
{
	/* Setez pinul PD7 ca iesire. */
	DDRD |= (1 << PD7);
	/* Sting LED-ul. */
	PORTD &= ~(1 << PD7);
	
    
    // butoanele sunt puse ca intrare, cu rezistenta de pull-up
    DDRB &= ~((1 << PB0) | (1 << PB1) | (1 << PB2) | (1 << PB3));
    PORTB |= ((1 << PB0) | (1 << PB1) | (1 << PB2) | (1 << PB3));
    
    // intreruperile sunt activate pentru PCINT8 (PB0) si PCINT9 (PB1)
    PCICR  = (1 << PCIE1);
    PCMSK1 = (1 << PCINT8) | (1 << PCINT9) | (1 << PCINT10) | (1 << PCINT11);

	sei();
}

int main(void) {
	IO_init();
	
	while(1) {
	    //main logic
	}

	return 0;
}
