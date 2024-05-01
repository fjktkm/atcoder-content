#include <iostream>

using namespace std;

bool isEven(int n)
{
    return n % 2 == 0;
}

int main()
{
    int a, b;
    cin >> a >> b;
    string output = isEven(a) || isEven(b) ? "Even" : "Odd";
    cout << output << endl;
}
