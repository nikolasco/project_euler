#include <iostream>
#include <cmath>

using namespace std;
typedef unsigned long long ull;

int main() {
  ull i = 1, sum = 0;
  while (true) {
    ull divs = 0, sr = floor(sqrt(sum));
    sum += i;
    for (ull f = 1; f < sr; f++) {
      if(0 == sum % f) divs += 2;
    }
    if (divs > 500) break;
    i++;
  }
  cout << sum << endl;
  return 0;
}
