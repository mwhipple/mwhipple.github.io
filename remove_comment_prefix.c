/**
 *
 */

#include <stdio.h>

int main(int _argc, char * _argv) {
	char * line = NULL;
	size_t len;

	while ((getline(&line, &len, stdin) != -1)) {
		for (;*line == '#'; line++);
		printf("%s", line);
	}
}
