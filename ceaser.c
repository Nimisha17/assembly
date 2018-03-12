#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int main(int argc, char *argv[])
{	
	int n,lens;
	const char *s = "TEST";
	char* e=getenv(s);
	n=atoi(e);
	if (n==NULL)
		n=13;
	char *s[100];
	char new[100];
	strcpy(s,argv[1]);
	strcpy(new,s);
	lens=strlen(s);
	for(int i=0;i<lens;i++)
        {	
		new[i]=new[i]+n;
		if(new[i]<'a'||new[i]>'z')
			new[i]=new[i]-26;
	}
	printf("%s",new);
	
return 0;
}
