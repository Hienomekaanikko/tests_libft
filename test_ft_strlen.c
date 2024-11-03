#include "../Libft/libft.h"
#include <stdio.h>
#include <stdlib.h>

//Strlen tests

int main(void) {
    // strlen
    printf("With input Hello, original strlen returns integer: %lu\n", strlen("Hello"));
    printf("With input Hello ft_strlen returns integer: %d\n", ft_strlen("Hello"));

    return 0;
}
