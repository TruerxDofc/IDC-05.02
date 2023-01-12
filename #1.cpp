#include <iostream>

using namespace std;

int SumTo(int n)
{
    if (n != 1)
        return n + SumTo(n - 1);
    return 1;
}

int main()
{
    int n = 5;
    cin >> n;
    int result = SumTo(n);
    cout << "sum of " << n << " is equal to " << result << endl;
    return 0;
}
