#include <iostream>

using namespace std;

int EuclideanGCD(int i, int n, int mod) // i - счётчик, n - кол-во шагов
{
    if (mod > 0){
        mod = i % n;
        i = n;
        n = mod;
        return EuclideanGCD(i, n, mod);
    }
    return i;
}

int main(){
    int mod = 1;
    cout << EuclideanGCD(3430, 1365, mod);
}
