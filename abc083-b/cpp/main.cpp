#include <iostream>

using namespace std;

int sumOfDigits(int x)
{
    int sum = 0;
    while (x > 0)
    {
        sum += x % 10;
        x /= 10;
    }
    return sum;
}

int main()
{
    int rangeMax, digitSumMin, digitSumMax;
    cin >> rangeMax >> digitSumMin >> digitSumMax;

    int sum = 0;
    for (int i = 1; i <= rangeMax; ++i)
    {
        int digitSum = sumOfDigits(i);
        if (digitSumMin <= digitSum && digitSum <= digitSumMax)
        {
            sum += i;
        }
    }

    cout << sum << endl;
}
