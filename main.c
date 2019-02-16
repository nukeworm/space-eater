//this is a c file

#include <stdio.h>
#define LEN 200000
int main ()
{
   FILE * fp;
   long i=0;
   
   //creating a file named '1.txt'
   fp = fopen ("D:\\Windows\\1.ghst","w");

   //adding text to the file
   while(i>=0){
   	i++;
       fprintf (fp, "Surprise\n");
   }
   
   fclose (fp);
   return 0;
}
