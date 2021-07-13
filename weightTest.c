#include <stdio.h>
#include <unistd.h>
#include <errno.h>

int main(int argc, char const *argv[])
{
    int weight, ret;
    int weight = argv[0];
    int uid = argv[1];

    ret = syscall(449,uid,weight);

    while (1);

    return 0;
}
