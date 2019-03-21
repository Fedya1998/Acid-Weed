#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

extern void acid();

int main(int argc, char** argv)
{	
    char buffer[1000000];
    int fd = open(argv[1], O_RDONLY);
    size_t size = read (fd, buffer, 1000000);
              	
    acid(buffer, argv[2], strlen(argv[2]));
    close(fd);
    fd = open(argv[1], O_WRONLY);
    
    
    write (fd, buffer, size);
    close(fd);

	return 0;
}
