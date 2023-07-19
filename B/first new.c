#include<stdio.h>
#include<ctype.h>

void First(char[],char);
void addToRes(char[],char);
int n;
char prodnset[10][10];

main(){
	int i;
	char choice;
	char ch;
	char result[20];
	printf("Enter num of prodns: ");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		scanf("%s",prodnset[i]);
	}
	do{
		printf("\nFind first of: ");
		scanf(" %c",&ch);
		First(result,ch);
		printf("First of (%c) is {",ch);
		for(i=0;result[i]!='\0';i++)
			printf(" %c ",result[i]);
		
		printf("}\n");
		printf("Enter y to continue: ");
		scanf(" %c",&choice);
	}
	while(choice=='y'||choice=='Y');
}

void First(char result[],char c){
	int i,j,k;
	int foundeps;
	char subresult[20];
	
	subresult[0]='\0';
	result[0]='\0';
	if(!(isupper(c))){
		addToRes(result,c);
		return;
	}
	for(i=0;i<n;i++){
		if(prodnset[i][0]==c){
			if(prodnset[i][2]=='$'){
				addToRes(result,'$');
			}
			else{
				j=2;
				while(prodnset[i][j]!='\0'){
					foundeps=0;
					First(subresult,prodnset[i][j]);
					for(k=0;subresult[k]!='\0';k++){
						addToRes(result,subresult[k]);
					}
					for(k=0;subresult[k]!='\0';k++)
						if(subresult[k]=='$'){
							foundeps=1;
							break;
						}
					if(!foundeps)
						break;
					j++;	
				}
			}
		}
	}
	return;
}

void addToRes(char result[],char val){
	int k;
	for(k=0;result[k]!='\0';k++)
		if(result[k]==val){
			return;
		}
	result[k]=val;
	result[k+1]='\0';
}

/*
E=TD
D=+TD
D=$
T=FS
S=xFS
S=$
F=(E)
F=a
*/

