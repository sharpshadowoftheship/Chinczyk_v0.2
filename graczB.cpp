#include <iostream>
#include <fstream>
#include <random>
using namespace std;
//graczB
int a[6];
int b[6];
int c[6];
int d[6];
bool wybor_gracza_do_ruchu(int ktory)
{
	int dostepni=0;
	for(int i=0; i<4; i++)
	{
		if(b[i]!=0)
		{
			dostepni++;
		}
	}
	if(ktory<=dostepni)
	{
		return true;
	}return false;
}
int indeks_ktorego(int ktory)
{
	int wkolejce=0;
	for(int i=0; i<4; i++)
	{
		if(b[i]!=0)
		{
			wkolejce++;
		}
		if(wkolejce==ktory)
		{
			return i;
		}
	}
	return 5;
//5 czyli wszyscy na respie;
}

int losowanie_liczby()
{
	random_device rd;
	uniform_int_distribution<int>dist(1,6);
	int pom=dist(rd);
	return pom;
}

void zwykly_ruch(int nowa_pozycja, int indeks_gracza)
{
	if(nowa_pozycja>40)
	{
		nowa_pozycja%=10;
	}
	for(int i=0; i<4; i++)
	{
		if(i==indeks_gracza)
		{
			b[i]=nowa_pozycja;
			i=4;
		}
	}
}
//funkcja dodaje gracza jesli sie da lub wyswietla ze gracz nie moze tego dokonac jesli sie nie da i kaze wykonac funkcje zwykly ruch 
//szóstke trzeba obsłużyć w mainie
bool dodawanie_gracza()
{ 	int flaga=0;
	for(int i=0; i<4; i++)
	{
		if(b[i]==0)
		{
			b[i]=11;
			i=4;
			flaga=1;
		}
	}
	if(flaga==0)
	{
		cout<<"Nie mozesz dodać gracza, ponieważ wszyscy już są na planszy"<<"\n";
	}
	return flaga==1;
}
//nowa_pozycja_nie_moze_byc_0
bool bicie_gracza(int nowa_pozycja, int indeks_gracza)
{

	if(nowa_pozycja>40)
	{
		nowa_pozycja%=10;
	}
	int flaga=0;
	for(int i=0; i<4; i++)
	{
		if(b[i]==nowa_pozycja)
		{
			b[indeks_gracza]=0;
			flaga=1;
			i=4;
		}	
		//w powyzszym ifie swoj bije swego, wizualnie tak to wyglada, a tak naprawde sprowadzamy bijacego na respa a bity pozostaje gdzie byl jako ze jestesmy w obrebie jednego gracza;
		if(a[i]==nowa_pozycja)
		{
			flaga=1;
			a[i]=0;
			b[indeks_gracza]=nowa_pozycja;
			i=4;
		}	
		if(c[i]==nowa_pozycja)
		{
			flaga=1;
			c[i]=0;
			b[indeks_gracza]=nowa_pozycja;
			i=4;
		}	
		if(d[i]==nowa_pozycja)
		{
			flaga=1;
			d[i]=0;
			b[indeks_gracza]=nowa_pozycja;
			i=4;
		}	
	}
	return flaga==1;
}
int main()
{
	ifstream ina("a.txt");
	ofstream outa("a2.txt");
	ifstream inb("b.txt");
	ofstream outb("b2.txt");
	ifstream inc("c.txt");
	ofstream outc("c2.txt");
	ifstream ind("d.txt");
	ofstream outd("d2.txt");
	ifstream inf("f.txt");
	ofstream outf("f2.txt");
	for(int i=0; i<4; i++)
	{
		ina>>a[i];
		inb>>b[i];
		inc>>c[i];
		ind>>d[i];
	}
	cout<<"Wcisnij p aby rzucic kostka"<<"\n";
	char p;
	string whattodo;
	while(true)
	{
		cin>>p;
		if(p=='p')
		{
			break;
		}
		cout<<"?"<<"\n";
	}
	int pom,losu,flaga_ifmore=0;
	losu=losowanie_liczby();
	cout<<"Wylosowales"<<" "<<losu<<"\n";
	if(losu==6)
	{
		cout<<"Chcesz dodac piona czy ruszyc ktoregos z obecnych?"<<"\n";
		cout<<"Jesli chcesz dodac wpisz 'add' , jesli ruszyc wpisz 'move'"<<"\n";
		cin>>whattodo;
		if(whattodo=="move")
		{

				cout<<"Kotrym pionem chcesz zagrac?"<<"\n";
				int ktory;
				cin>>ktory;
				while(wybor_gracza_do_ruchu(ktory)==0)
				{
					cout<<"Wybierz gracza o nizszym numerze"<<"\n";
					cin>>ktory;
				}
				if(ktory!=0)
				{
				
				int pom;
				pom=indeks_ktorego(ktory);
				//5 dla indeks_ktorego(ktory) nie powinna wypasc skoro dodawanie gracza nie powiodlo sie;
				if(bicie_gracza(b[pom]+6, pom)==0)
				{
					zwykly_ruch(b[pom]+6,pom);
				}
				else
				{
					flaga_ifmore++;
				}
				}
		}
		else if(whattodo=="add")
		{
			if(dodawanie_gracza()==0)
			{
				cout<<"Kotrym pionem chcesz zagrac?"<<"\n";
				int ktory;
				cin>>ktory;
				while(wybor_gracza_do_ruchu(ktory)==0)
				{
					cout<<"Wybierz gracza o nizszym numerze"<<"\n";
					cin>>ktory;
				}
				if(ktory!=0)
				{
				
				int pom;
				pom=indeks_ktorego(ktory);
				//5 dla indeks_ktorego(ktory) nie powinna wypasc skoro dodawanie gracza nie powiodlo sie;
				if(bicie_gracza(b[pom]+6, pom)==0)
				{
					zwykly_ruch(b[pom]+6,pom);
				}
				else
				{
					flaga_ifmore++;
				}
				}
			}

		}
		flaga_ifmore++;
	}
	else
	{
			
				cout<<"Kotrym pionem chcesz zagrac?"<<"\n";
				int ktory;
				cin>>ktory;
				while(wybor_gracza_do_ruchu(ktory)==0)
				{
					cout<<"Wybierz gracza o nizszym numerze"<<"\n";
					cin>>ktory;
				}
				if(ktory!=0)
				{
				
				int pom;
				pom=indeks_ktorego(ktory);
				//5 dla indeks_ktorego(ktory) nie powinna wypasc skoro dodawanie gracza nie powiodlo sie;
				if(bicie_gracza(b[pom]+6, pom)==0)
				{
					zwykly_ruch(b[pom]+6,pom);
				}
				else
				{
					flaga_ifmore++;
				}
				}
	}
	for(int i=0; i<4; i++)
	{
		outa<<a[i]<<" ";
		outb<<b[i]<<" ";
		outc<<c[i]<<" ";
		outd<<d[i]<<" ";
	}
	outf<<flaga_ifmore;

}
