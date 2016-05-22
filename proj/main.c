/*
 * PM - 2016
 * lab0.c
 */

#define F_CPU 16000000

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/signal.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "lcd.h"


#define BTN_UP 		PB0
#define BTN_RIGHT	PB1
#define BTN_DOWN 	PB2
#define BTN_LEFT	PB3


#define SCREEN_WIDTH			84
#define SCREEN_HEIGHT			48
#define MAX_OBSTACLES			100

#define UP					1
#define RIGHT				2
#define DOWN				3
#define LEFT				4

int SNAKE_SPEED				=  300; 		//initial snake speed
int GAME_LEVEL				= 1;		//initial level
int SNAKE_DIR				= LEFT;		//initial snake direction
int SNAKE_INITIAL_LENGTH		= 15;		//initial snake length

int OBSTACLES_X[MAX_OBSTACLES];
int OBSTACLES_Y[MAX_OBSTACLES];

typedef struct node {
    int x_coord;
	int y_coord;
    struct node * next;
} node_t;

typedef struct food {
	int x_coord;
	int y_coord;
} food_t;

/**
* Resets obstacle arrays
*/
void reset_obstacles() {
	int i = 0;
	for(i = 0; i < MAX_OBSTACLES; i++)
		OBSTACLES_X[i] = OBSTACLES_Y[i] = 0;
}

/*
+-----------------+
|                 |
|     -------     |
|                 |
|     -------     |
|                 |
+-----------------+
*/
void get_level_1_obstacles() {
	int i, k = 0;
	
	reset_obstacles();
	
	for (i = 14; i < 60; i++) {
		OBSTACLES_X[k] = 16;
		OBSTACLES_Y[k] = i;
		k++;
	}
	
	for(i = 14; i < 60; i++) {
		OBSTACLES_X[k] = 32;
		OBSTACLES_Y[k] = i;
		k++;
	}
	
}

/**
* Moves the snake one square in the current direction. Removes the last bit of
* the tail and adds one bit in front of the snake.
* Returns new instance of snake
*/
node_t* move_snake (node_t *snake) {
	node_t *curr = snake;
	int new_x_coord = snake->x_coord;
	int new_y_coord = snake->y_coord;

	switch (SNAKE_DIR) {
		case UP: 	new_x_coord--; 	break;
		case DOWN: 	new_x_coord++; 	break;
		case LEFT: 	new_y_coord--; 	break;
		case RIGHT: new_y_coord++; 	break;
		default: 	exit(0);
	}

	//Remove tail of the snake
	while (curr->next->next != NULL)
		curr = curr->next;
	curr->next = NULL;

	//Add element in front of the snake's head
	node_t* new_snake = malloc(sizeof(node_t));
	new_snake->x_coord = new_x_coord;
	new_snake->y_coord = new_y_coord;
	new_snake->next = snake;

	return new_snake;
}

/**
* Checks if the snake has collided with a border.
* Returns 1 if snake has collided, 0 otherwise
*/
int check_collision_border(node_t *snake){
	int head_x_coord = snake->x_coord;
	int head_y_coord = snake->y_coord;
	if(head_x_coord == 0 || head_x_coord == 47 || head_y_coord == 0 || head_y_coord == 83)
		return 1;
	return 0;
}

/**
* Checks if the snake has collided with an obstacle.
* Returns 1 if snake has collided, 0 otherwise
*/
int check_collision_obstacles (node_t *snake) {
	int head_x_coord = snake->x_coord;
	int head_y_coord = snake->y_coord;
	int i;
	for(i = 0; i < MAX_OBSTACLES; i++)
		if(head_x_coord == OBSTACLES_X[i] && head_y_coord == OBSTACLES_Y[i])
			return 1;
	return 0;
}

/**
* Checks if the snake collided with himself.
* Returns 1 if snake has collided with himself, 0 otherwise
*/
int check_collision_self (node_t *snake) {
	int head_x_coord = snake->x_coord;
	int head_y_coord = snake->y_coord;

	snake = snake->next;
	while (snake != NULL) {
		if (snake->x_coord == head_x_coord && snake->y_coord == head_y_coord)
			return 1;
		snake = snake->next;
	}

	return 0;
}

/**
* checks for any type of collision
* return 1 if colided, 0 otherwise
*/
int check_collision(node_t *snake) {
	return check_collision_self(snake) || check_collision_obstacles(snake) || check_collision_border(snake);
}

/**
* Changes snake direction only if the new direction is not oposite to the
* current direction
* (E.g Cannot go DOWN when the current direction is UP)
*/
void change_snake_direction (int new_direction) {
	if (abs (new_direction - SNAKE_DIR) != 2)
		SNAKE_DIR = new_direction;
}

/**
* Creates and returns a snake positioned @ the middle of the screen
*/
node_t* get_new_snake (int sname_size) {
	int i;
	node_t *snake_head = malloc(sizeof(node_t));
	node_t *curr = snake_head;

	snake_head->x_coord = SCREEN_HEIGHT/2;
	snake_head->y_coord = SCREEN_WIDTH/2;
	snake_head->next = NULL;

	for (i = 0; i < SNAKE_INITIAL_LENGTH; i++) {
		node_t *snake_bit = malloc(sizeof(node_t));
		snake_bit->x_coord = curr->x_coord;
		snake_bit->y_coord = curr->y_coord + 1;
		snake_bit->next = NULL;

		curr->next = snake_bit;
		curr = curr->next;
	}

	return snake_head;
}

/* intreruperea pentru pin change PB0 si PB1 */
ISR(PCINT1_vect) {
    // PB0 apasat
    if((PINB & (1 << BTN_UP)) == 0)
		change_snake_direction(UP);
		
    // PB1 apasat
    if((PINB & (1 << BTN_RIGHT)) == 0)
		change_snake_direction(RIGHT);
	
	// PB2 apasat
    if((PINB & (1 << BTN_DOWN)) == 0)
		change_snake_direction(DOWN);
	
	// PB3 apasat
    if((PINB & (1 << BTN_LEFT)) == 0)
		change_snake_direction(LEFT);
	
}

/* initializeaza intrarile si iesirile */
void IO_init() {
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

void set_D7_high() { PORTD |= (1 << PD7); }
void set_D7_low() { PORTD &= ~(1 << PD7); }

int main(void) {
	

	/* LCD init */
	lcd_init();
	lcd_contrast(0x40);
	lcd_goto_xy(1, 1);
	lcd_str("Catalin");
	
	
	IO_init();
	
	PORTD |= (1 << PD7);
	_delay_ms(1000);
	PORTD &= ~(1 << PD7);
	_delay_ms(1000);
	
	node_t *snake = get_new_snake(SNAKE_INITIAL_LENGTH);
	get_level_1_obstacles();
	
	while (1){
		snake = move_snake(snake);
		if (check_collision(snake)) {
			set_D7_high();
			return 0;
		}
		
		_delay_ms(SNAKE_SPEED);
	}

	return 0;
}
