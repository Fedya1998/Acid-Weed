#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

extern void weed();
extern void prepare();

int main(int argc, char** argv) {	
	char buffer[1000000];
    char output[500];

    int fd = open(argv[1], O_RDONLY);
    read (fd, buffer, 1000000);
    weed(buffer, output, argv[2]);
    printf ("\n\n\n-------------------------\n\n\nFile: %s\nYour secret: %s\nOutput:\n%s\n", argv[1], argv[2], output);
	
    return 0;
}
