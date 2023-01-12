#include <iostream>

using namespace std;

int LoopFor(int i, int n) // i - счётчик, n - кол-во шагов
{
    if (n > 0)
    {
        cout << "Привет | счётчик: " << i << endl;
        n--;
        i++;
        LoopFor(i, n);
    }
    return 1;
}

int main()
{
    setlocale(LC_ALL, "Russian");
    LoopFor(1, 10);
}
