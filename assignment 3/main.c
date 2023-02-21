#include<stdio.h>
#include "header.h"
int main()
{
int x,y,r;
scanf("%d %d",&x,&y);
printf("\nWelcome\n");
r=add(x,y);
printf("%d\nAdded\n",r);
r=sub(x,y);
printf("%d\nSubtracted\n",r);
r=mul(x,y);
printf("%d\nMultiplied\n",r);
r=div(x,y);
printf("%d\nDivided\n",r);
printf("Ended");
return 0;
}

