#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main()
{
    char *current_binsym = (char *) calloc(5, sizeof(char));
    char symbol = 0;

    int answer_pos = 0;
    int i = 0;
    //char binsym[] = "0000";
    char *data = NULL;
    scanf("%ms", &data);
    //int length = strlen(data);
    char *answer = (char *) calloc(1000000 * 4, sizeof(char));

    int n = 0;
    while (1) {
        symbol = data[n];
        if (!symbol)            //'\0' или EOF
        {
            break;
        }

        switch (symbol) {
        case '0':
            strncpy(current_binsym, "0000", 5);
            break;
        case '1':
            strncpy(current_binsym, "0001", 5);
            break;
        case '2':
            strncpy(current_binsym, "0010", 5);
            break;
        case '3':
            strncpy(current_binsym, "0011", 5);
            break;
        case '4':
            strncpy(current_binsym, "0100", 5);
            break;
        case '5':
            strncpy(current_binsym, "0101", 5);
            break;
        case '6':
            strncpy(current_binsym, "0110", 5);
            break;
        case '7':
            strncpy(current_binsym, "0111", 5);
            break;
        case '8':
            strncpy(current_binsym, "1000", 5);
            break;
        case '9':
            strncpy(current_binsym, "1001", 5);
            break;
        case 'A':
            strncpy(current_binsym, "1010", 5);
            break;
        case 'B':
            strncpy(current_binsym, "1011", 5);
            break;
        case 'C':
            strncpy(current_binsym, "1100", 5);
            break;
        case 'D':
            strncpy(current_binsym, "1101", 5);
            break;
        case 'E':
            strncpy(current_binsym, "1110", 5);
            break;
        case 'F':
            strncpy(current_binsym, "1111", 5);
            break;
        }
        //strncpy( current_binsym, binsym );

        //sprintf( answer, "%s", current_binsym );
        for (i = 0; i < 4; i++) {
            answer[answer_pos++] = current_binsym[i];
        }

        n++;
    }


    for (i = 0; answer[i] == '0'; i++);
    if (i == answer_pos) {
        printf("0\n");
    } else {
        printf("%s\n", answer + i);
    }


    free(answer);
    free(data);
    free(current_binsym);

    return 0;
}
