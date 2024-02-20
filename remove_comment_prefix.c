/**
 * There's a bug somewhere in here that leads to some output getting mangled...
 * but where that could be popping up is unclear.
 */

#include <stdio.h>

int main(int _argc, char * _argv) {
	char * line = NULL;
	int prefix_len;
	size_t len;

	while ((getline(&line, &len, stdin) != -1)) {
		for (prefix_len=0 ;line[prefix_len] == '#'; prefix_len++);
		printf("%s", line+prefix_len);
	}
}
