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
#include <string.h>
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

int SNAKE_SPEED				=  150; 		//initial snake speed
int GAME_LEVEL				= 1;		//initial level
int SNAKE_DIR				= LEFT;		//initial snake direction
int SNAKE_INITIAL_LENGTH		= 15;		//initial snake length

int SCORE = 0;

int OBSTACLES_X[MAX_OBSTACLES];
int OBSTACLES_Y[MAX_OBSTACLES];

int MOMEALA_X, MOMEALA_Y;

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
	for (i = 14; i < 60; i++) { OBSTACLES_X[k] = 16; OBSTACLES_Y[k] = i; k++; }
	for(i = 14; i < 60; i++) { OBSTACLES_X[k] = 32; OBSTACLES_Y[k] = i; k++; }
}

/*
+--------+--------+
|                 |
|        |        |
+-    ---+---    -+
|        |        |
|                 |
+--------+--------+
*/
void get_level_2_obstacles() {
	int i, k = 0;
	
	reset_obstacles();
	for (i = 14; i < 60; i++) {
		OBSTACLES_X[k] = 24;
		OBSTACLES_Y[k] = i;
		k++;
	}
	for (i = 0; i < 5; i++) {
		OBSTACLES_X[k] = 24;
		OBSTACLES_Y[k] = i;
		k++;
	}
	for (i = 83; i > 79; i--) {
		OBSTACLES_X[k] = 24;
		OBSTACLES_Y[k] = i;
		k++;
	}
	for (i = 0; i < 5; i++) {
		OBSTACLES_X[k] = i;
		OBSTACLES_Y[k] = 42;
		k++;
	}
	for (i = 43; i < 48; i++) {
		OBSTACLES_X[k] = i;
		OBSTACLES_Y[k] = 42;
		k++;
	}
	for (i = 18; i < 29; i++) {
		OBSTACLES_X[k] = i;
		OBSTACLES_Y[k] = 42;
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
	free(curr->next);
	curr->next = NULL;

	//Add element in front of the snake's head
	node_t* new_snake = malloc(sizeof(node_t));
	new_snake->x_coord = new_x_coord;
	new_snake->y_coord = new_y_coord;
	new_snake->next = snake;

	return new_snake;
}

node_t* increase_snake(node_t *snake) {
	int new_x_coord = snake->x_coord;
	int new_y_coord = snake->y_coord;

	switch (SNAKE_DIR) {
		case UP: 	new_x_coord--; 	break;
		case DOWN: 	new_x_coord++; 	break;
		case LEFT: 	new_y_coord--; 	break;
		case RIGHT: new_y_coord++; 	break;
		default: 	exit(0);
	}
	
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

int check_collision_food(node_t *snake) {
	if (snake->x_coord == MOMEALA_X && snake->y_coord == MOMEALA_Y)
		return 1;
	return 0;
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
node_t* get_new_snake () {
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

void draw_snake(node_t *snake) {
	int head_x_coord = snake->x_coord;
	int head_y_coord = snake->y_coord;
	
	lcd_setpixel(head_y_coord, head_x_coord);

	snake = snake->next;
	while (snake != NULL) {
		lcd_setpixel(snake->y_coord, snake->x_coord);
		snake = snake->next;
	}
}

void draw_obstacles() {
	int i;
	for (i = 0; i < MAX_OBSTACLES; i++) {
		if (OBSTACLES_X[i] != 0 || OBSTACLES_Y[i] != 0)
			lcd_setpixel(OBSTACLES_Y[i], OBSTACLES_X[i]);
		else
			break;
	}
}

void draw_borders() {
	int i;
	for (i = 0; i < 47; i++) {
		lcd_setpixel(0, i);
		lcd_setpixel(83, i);
	}
	for (i = 0; i < 83; i++) {
		lcd_setpixel(i, 0);
		lcd_setpixel(i, 47);	
	}
}

void draw_food() {
	lcd_setpixel(MOMEALA_Y, MOMEALA_X);
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

void clearLCD() {
	lcd_clear();
	lcd_update();
}

void generate_food(node_t *snake) {
	int head_x_coord = snake->x_coord;
	int head_y_coord = snake->y_coord;
	int ok = 0, i;
	
	node_t *curr;
	
	MOMEALA_X = rand() % SCREEN_HEIGHT;
	MOMEALA_Y = rand() % SCREEN_WIDTH;
	
	
	while (ok == 0) {
		ok = 1;
		
		curr = snake;
		if (MOMEALA_X == 0 || MOMEALA_X == 47 || MOMEALA_Y == 0 || MOMEALA_Y == 83)
			ok = 0;
		
		for (i = 0; i < MAX_OBSTACLES; i++)
			if (MOMEALA_X == OBSTACLES_X[i] && MOMEALA_Y == OBSTACLES_Y[i]) {
				ok = 0;
				break;
			}
		
		if (head_x_coord == MOMEALA_X && head_y_coord == MOMEALA_Y)
			ok = 0;
		else {
			curr = curr->next;
			while (curr != NULL) {
				if (MOMEALA_X == curr->x_coord && MOMEALA_Y == curr->y_coord) {
					ok = 0;
					break;
				}
				curr = curr->next;
			}
		}
		
	}
}

void hello() {
	clearLCD();
	
	lcd_gotoXY(0,0);
	lcd_str("Oancea");
	lcd_gotoXY(0,1);
	lcd_str("Catalin");
	
	lcd_gotoXY(0,3);
	lcd_str("PM 2016");
	lcd_gotoXY(0,4);
	lcd_str("Snake");
	
}

void game_over() {
	clearLCD();
	char *score = (char*) malloc(4 * sizeof(char));
	itoa(SCORE, score, 10);
	lcd_gotoXY(1,1);
	lcd_str("GAME OVER");
	
	lcd_gotoXY(1,2);
	lcd_str(strcat("SCORE: ", score));
	
}
int main(void) {
	

	/* LCD init */
	lcd_init();
	clearLCD();
	//lcd_contrast(0x40);
	
	IO_init();
	hello();
	PORTD |= (1 << PD7);
	_delay_ms(3000);
	PORTD &= ~(1 << PD7);
	
	node_t *snake = get_new_snake();
	
	generate_food(snake);

	
	while (1) {
		snake = move_snake(snake);
		
		clearLCD();
		draw_borders();
		draw_obstacles();
		draw_food();
		draw_snake(snake);
		
		if (check_collision(snake)) {
			set_D7_high();
			game_over();
			return 0;
		}
		
		if (check_collision_food(snake)) {
			SCORE++;
			snake = increase_snake(snake);
			generate_food(snake);
		}
		
		if (SCORE >= 10)
			get_level_2_obstacles();
		
		else if (SCORE >= 3)
			get_level_1_obstacles();
		
		_delay_ms(SNAKE_SPEED);
	}

	return 0;
}
