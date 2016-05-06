#include <stdlib.h>
#include <stdio.h>

#define SCREEN_WIDTH		84
#define SCREEN_HEIGHT		48

#define UP					1
#define RIGHT				2
#define DOWN				3
#define LEFT				4


int SNAKE_SPEED				= 1; 		//initial snake speed
int GAME_LEVEL				= 1;		//initial level
int SNAKE_DIR				= LEFT;		//initial snake direction
int SNAKE_INITIAL_LENGTH	= 10;		//initial snake length

int SNAKE_BOARD[SCREEN_HEIGHT][SCREEN_WIDTH];

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
* Returns empty board
*/
char** get_empty_board () {
	int i, j;
	char **board = malloc(sizeof(char*) * SCREEN_HEIGHT);
	for (i = 0; i < SCREEN_HEIGHT; i++) {
		board[i] = malloc(sizeof(char) * SCREEN_WIDTH);
		for (j = 0; j < SCREEN_WIDTH; j++)
			board[i][j] = ' ';
	}

	return board;
}

/**
* Returns level 1 board
*/
char** get_level1_board () {
	int i;
	char **board = get_empty_board();

	for (i = 0; i < SCREEN_WIDTH; i++)
		board[0][i] = board[SCREEN_HEIGHT - 1][i] = '#';
	for (i = 0; i < SCREEN_HEIGHT; i++)
		board[i][0] = board[i][SCREEN_WIDTH - 1] = '#';

	return board;
}

/**
* Returns level 2 board
*/
char** get_level2_board () {
	int i;
	char **board = get_level1_board();

	for (i = SCREEN_WIDTH / 4; i < 3 * SCREEN_WIDTH / 4; i++)
		board[SCREEN_HEIGHT / 3][i] = board[2 * SCREEN_HEIGHT / 3][i] = '#';
	return board;
}

/**
* Returns level 3 board
*/
char** get_level3_board () {
	int i;
	char **board = get_level1_board();

	for (i = SCREEN_HEIGHT / 4; i < 3 * SCREEN_HEIGHT / 4; i++)
		board[i][SCREEN_WIDTH / 2] = '#';
	for (i = SCREEN_WIDTH / 4; i < 3 * SCREEN_WIDTH / 4; i++)
		board[SCREEN_HEIGHT / 3][i] = board[2 * SCREEN_HEIGHT / 3][i] = '#';

	return board;
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
* Checks if the snake has collided with an obstacle.
* Returns 1 if snake has collided, 0 otherwise
*/
int check_collision_obstacles (node_t *snake, char** board) {
	int head_x_coord = snake->x_coord;
	int head_y_coord = snake->y_coord;
	int i, j;

	if (board[head_x_coord][head_y_coord] == '#')
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

void print_matrix (char **a) {
	int i, j;
	for (i = 0; i < SCREEN_HEIGHT; i++) {
		for (j = 0; j < SCREEN_WIDTH; j++)
			printf("%c", a[i][j]);
		printf("\n");
	}
	printf("\n");
}
void print_snake (node_t *snake) {
	node_t *curr = snake;
	char **a = get_level3_board();
	int i, j;

	while (curr != NULL) {
		a[curr->x_coord][curr->y_coord] = '@';
		curr = curr->next;
	}
	print_matrix(a);
}
int main() {
	node_t *snake = get_new_snake(SNAKE_INITIAL_LENGTH);
	print_snake(snake);
	snake = move_snake(snake);
	print_snake(snake);
	snake = move_snake(snake);
	print_snake(snake);
	snake = move_snake(snake);
	print_snake(snake);
	snake = move_snake(snake);
	print_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	change_snake_direction(UP);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	snake = move_snake(snake);
	print_snake(snake);
	printf("Colision self: %d\n", check_collision_self(snake));
	printf("Colision board: %d\n", check_collision_obstacles(snake, get_level3_board()));
	return 0;
}
