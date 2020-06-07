#include <iostream>

typedef long long ll;

extern "C" ll vyvod(ll element);
extern "C" ll proverka(ll element);

int main()
{
	ll element = 0;
	int rows_size = 1, columns_size = 1;
	std::string str;
	std::cout << "Enter rows size: ";
	std::cin >> rows_size;
	std::cout << "Enter columns size: ";
	std::cin >> columns_size;
	int **arr;
    // создание
    arr = new int * [rows_size];    // массив указателей
    for (int i = 0; i < rows_size; i++)
        arr[i] = new int [columns_size];     // инициализация указателей
    // основное тело
  	for (int i = 0; i < rows_size; i++)
  	{
		for (int j = 0; j < columns_size; j++)
		{
			while(1)
			{
				std::cout << "\nEnter element [" << i << "]" << "[" << j << "] ";
				std::cin >> str;
				arr[i][j] = std::stoi( str );
				if(proverka(arr[i][j]) == 0)
					break;
				else
					std::cout << "Enter valid number!";
			}		
		}
	}
	std::cout << "\nYour array is: \n";
  	for (int i = 0; i < rows_size; i++) 
  	{
    	for (int j = 0; j < columns_size; j++) 
    	{
    		std::cout << "	" << vyvod(arr[i][j]);
       	}
       	std::cout << std::endl;
    }
    // уничтожение
   	for (int i = 0; i < rows_size; i++) 
   	{
       	delete [] arr[i];
    }
    delete [] arr;
	return 0;
}