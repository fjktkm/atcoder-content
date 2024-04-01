#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    string placement;
    cin >> placement;

    auto count = count_if(placement.begin(), placement.end(), [](char c)
                          { return c == '1'; });
    cout << count << endl;
}
