#include "print.h"

void kernel_main() {
    print_clear();
    print_set_color(PRINT_COLOR_WHITE, PRINT_COLOR_BLUE);
    print_str("KirihaOS\n\n");
    print_str("> ");
}

void read_input() {
    extern char kb_input;

    print_char(kb_input);
}