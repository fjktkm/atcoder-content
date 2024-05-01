#include <iostream>
#include <vector>
#include <numeric>

using namespace std;

int main()
{
    int length;
    cin >> length;
    vector<int> num_list(length);
    for (int &num : num_list)
    {
        cin >> num;
    }

    int num_list_or = accumulate(num_list.begin(), num_list.end(), 0, [](int a, int b)
                                 { return a | b; });

    int count = 0;
    while (num_list_or % 2 == 0)
    {
        num_list_or >>= 1;
        count++;
    }

    cout << count << endl;
}
