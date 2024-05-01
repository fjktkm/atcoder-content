#include <iostream>

using namespace std;

int main()
{
    int coin_500, coin_100, coin_50, total;
    cin >> coin_500 >> coin_100 >> coin_50 >> total;

    int count = 0;
    for (int i = 0; i <= coin_500; i++)
    {
        for (int j = 0; j <= coin_100; j++)
        {
            for (int k = 0; k <= coin_50; k++)
            {
                if (i * 500 + j * 100 + k * 50 == total)
                {
                    count++;
                }
            }
        }
    }

    cout << count << endl;
}
