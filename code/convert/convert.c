#include <stdio.h>

void upper_lower(void *string,int nums){
    char *p = (char*)string;
    for(int i = 0 ; i<nums ; i++){
        p[i] += 32;
    }
}

int main(int argc,char *argv[]){
    char str[] = {'K','A','N','G','A','R','O','O','\0'};
    printf("before:%s\n",str);
    upper_lower(str,8);
    printf("after:%s\n",str);
    return 0;
}