/* -----------------------------------------------
Program : Tubes.c
Deskripsi : Tubes Matematika Terpana 2 berdasarkan paper
Author :  Muhammad Hargi Muttaqin
Versi / tanggal : 03/30-Jan-21/ pk. 09:51
Compiler : Dev-C++ 5.11
---------------------------------------------------*/

#include<stdio.h>
#include<conio.h>
#include<windows.h>

gotoxy(int x,int y){
	
	HANDLE handle;
	COORD coord;
	coord.X =x;
	coord.Y =y;
	handle  = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleCursorPosition(handle,coord);
}

void loading(int x,int y){
	system("COLOR 70");
	system("cls");
	int i;
	gotoxy(50,9); printf("              _         _");
	gotoxy(50,10); printf("  __   ___.--'_`.     .'_`--.___   __");
	gotoxy(50,11); printf(" ( _`.'. -   'o` )   ( 'o`   - .`.'_ )");
	gotoxy(50,12); printf(" _\.'_'      _.-'     `-._      `_`./_");
	gotoxy(50,13); printf("( \`. )    //\`         '/\\    ( .'/ )");
	gotoxy(50,14); printf(" \_`-'`---'\\__,       ,__//`---'`-'_/");
	gotoxy(50,15); printf("  \`        `-\         /-'        '/");
	gotoxy(50,16); printf("   `                               '  ");
	gotoxy(x,y-1);printf("Loading...");
	
	
	for(i=x;i<=x+19;i++){
	    gotoxy(i,y);printf("%c",196);
		gotoxy(i,y+1);printf("%c",196);	
	}
	for(i=y;i<=y+1;i++){
	    gotoxy(x,i);printf("%c",179);
		gotoxy(x+19,i);printf("%c",179);	
	}
	gotoxy(x,y);printf("%c",218);
	gotoxy(x+19,y);printf("%c",191);
	gotoxy(x,y+1);printf("%c",192);
	gotoxy(x+19,y+1);printf("%c",217);
	for ( i = x; i<=x+19;i++){
		gotoxy(i,y);printf("%c",220);
		gotoxy(i,y+1);printf("%c",223);
		Sleep(20);
	}
	system("cls");
}

void turunan1(){
	system("color 02");
	int a,b,c,n,o,i,kbaru,pbaru,k2,p2,kx,px,k2x,p2x;
	system ("cls");
	printf("Masukkan angka untuk Turunan F(x,y) ax^n + by^o + c \n");
	printf("Angka Untuk a\n");
	scanf ("%d", &a);
	printf("Angka Untuk b\n");
	scanf ("%d", &b);
	printf("Angka Untuk c\n");
	scanf ("%d", &c);
	printf("Angka Untuk n\n");
	scanf ("%d", &n);
	printf("Angka Untuk o\n");
	scanf ("%d", &o);
	printf("Persamaan : \n");
	printf("f(x,y): (%d x^%d) + (%d y^%d) + (%d) \n \n",a,n,b,o,c);
	printf("====================================================Turunan Parsial terhadap Y=========================================\n");
	printf("\nHasil turunan fy(x,y): ");
	if (o==1){
		pbaru = 0;
		printf ("(%d)",b);
	}
	else{
		kbaru = b * o;
		pbaru = o - 1;
		printf ("(%d y^%d) \n",kbaru,pbaru);	
	}
	printf ("\nHasil turunan fyy(x,y) :");
	if (pbaru == 0){
		printf ("(0) \n");
	}
	else if (pbaru == 1){
		printf ("(%d)",kbaru);
	}
	else {
	k2 = kbaru * pbaru;
	p2 = pbaru - 1;
	printf ("(%d y^%d) \n",k2,p2);
	}
	printf("\n====================================================Turunan Parsial terhadap X==========================================\n");
	printf("\nHasil turunan fx(x,y): ");
	if (n==1){
		px = 0;
		printf ("(%d)",a);
	}
	else{
		kx = a * n;
		px = n - 1;
		printf ("(%d x^%d) \n",kx,px);	
	}
	printf ("\nHasil turunan fxx(x,y) :");
	if (px == 0){
		printf ("(0) \n");
	}
		else if (px == 1){
		printf ("(%d)",kx);
	}
	else {
	
	k2x = kx * px;
	p2x = px - 1;
	printf ("(%d y^%d) \n",k2x,p2x);
	}
	
	printf ("\nBerdasarkan paper maka yang harus di sigmakan adalah fungsi fx(x,y)");
	
	printf ("\nKembali ke menu?");
	printf ("\n1. Ya");
	printf ("\n2. Tidak\n");
	scanf("%d",&i);
	if (i==1){
		main();
	}
	else {
	}
}

void turunan2 (){
	system("color 0A");
	int x,a,b,c,i,n,o,kbaru,pbaru,k2,p2,kx,px,k2x,p2x;
	system ("cls");
	printf("Masukkan angka untuk Turunan F(x,y) ax^n + by^o + cxy \n");
	printf("Angka Untuk a\n");
	scanf ("%d", &a);
	printf("Angka Untuk b\n");
	scanf ("%d", &b);
	printf("Angka Untuk c\n");
	scanf ("%d", &c);
	printf("Angka Untuk n\n");
	scanf ("%d", &n);
	printf("Angka Untuk o\n");
	scanf ("%d", &o);
	printf("Persamaan : \n");
	printf("f(x,y): (%d x^%d) + (%d y^%d) + (%d xy) \n \n",a,n,b,o,c);
	printf("====================================================Turunan Parsial terhadap Y=========================================\n");
	printf("\nHasil turunan fy(x,y): ");
	if (o==1){
		pbaru = 0;
		printf ("(%d) + (%d x)",b,c);
	}
	else{
		kbaru = b * o;
		pbaru = o - 1;
		printf ("(%d y^%d)+ (%d x) \n",kbaru,pbaru);	
	}
	printf ("\nHasil turunan fyy(x,y) :");
	if (pbaru == 0){
		printf ("(0) \n");
	}
	else if (pbaru == 1){
		printf ("(%d)",kbaru);
	}
	else {
	k2 = kbaru * pbaru;
	p2 = pbaru - 1;
	printf ("(%d y^%d) \n",k2,p2);
	}
	printf ("\nHasil turunan fyx(x,y) :");
	printf ("(%d) \n",c);
	
	printf("\n====================================================Turunan Parsial terhadap X==========================================\n");
	printf("\nHasil turunan fx(x,y): ");
	if (n==1){
		px = 0;
		printf ("(%d) + (%d y)",a,c);
	}
	else{
		kx = a * n;
		px = n - 1;
		printf ("(%d x^%d)+(%dy) \n",kx,px,c);	
	}
	printf ("\nHasil turunan fxx(x,y) :");
	if (px == 0){
		printf ("(0) \n");
	}
		else if (px == 1){
		printf ("(%d)",kx);
	}
	else {
	
	k2x = kx * px;
	p2x = px - 1;
	printf ("(%d y^%d) \n",k2x,p2x);
	}
	
	printf ("\nHasil turunan fxy(x,y) :");
	printf ("(%d) \n",c);
	printf ("\nBerdasarkan paper maka yang harus di sigmakan adalah fungsi f(x,y)");
	
	printf ("\nKembali ke menu?");
	printf ("\n1. Ya");
	printf ("\n2. Tidak\n");
	scanf("%d",&i);
	if (i==1){
		main();
	}
	else {
	}
	
}
void paper(){
	system("color 50");
	int i;
	system ("cls");
	printf ("PERAMALAN PENDAPATAN REKSA DANA DALAM SETAHUN MENGGUNAKAN METODE REGRESI LINIER SEDERHANA\n");
	printf ("Oleh Happrila Yuliana Jayanti\n");
	
	printf ("\nKembali ke menu?");
	printf ("\n1. Ya");
	printf ("\n2. Tidak\n");
	scanf("%d",&i);
	if (i==1){
		main();
	}
	else {
	}
}

int main(){
	loading(30,12);
	system("color DF");
	int i;
	system ("cls");
	printf ("|==============================================================================|\n");
	printf ("| ----------------- Kalkulator Turunan Parsial Sederhana ----------------------|\n");
	printf ("|==============================================================================|\n");
	printf (" \nSilahkan Pilih Fungsi mana yang ingin digunakan :\n");
	printf (" 1. F(x,y) = ax^n + by^o + c \n");
	printf (" 2. F(x,y) = ax^n + by^o + cxy \n");
	printf (" 3. Paper yang digunakan\n");
	printf (" 4. Exit\n");
	printf ("Masukkan angka yang ingin di pilih \n");
	scanf ("%d",&i);	
	


	if (i == 1){
		turunan1();
	}
	else if(i == 2){
		turunan2();	
	}	
	else if (i == 3){
		paper();
	}
	else{
	}

}
