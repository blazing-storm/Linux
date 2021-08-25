#include <stdio.h>
#include<string.h>
int main()
{
  FILE *f;
  char b[1000],c[1000],d[1000];
  int i=0;
  // scanf("%s",a);
  f=fopen("file.txt","r");
  while(fgets(b,1000,f))
  {
    i++;
    //if(fgets(b,1000,f)==EOF)
    // break;
    //if(strlen(b)==EOF)
    //  break;
    if(i%2!=0)
    {
      for(int j=0;j<strlen(b);j++)
        c[j]=b[j];
    }
    else
    {
      for(int j=0;j<strlen(b);j++)
        d[j]=b[j];
    }
  }
  printf("%s %s",c,d);
  fclose(f);
    return 0;
}
