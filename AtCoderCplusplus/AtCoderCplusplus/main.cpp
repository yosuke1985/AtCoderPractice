//
//  main.cpp
//  AtCoderCplusplus
//
//  Created by Yosuke Nakayama on 2021/07/26.
//
// https://cpp-lang.sevendays-study.com/day1.html

#include <iostream>

//int main(int argc, const char * argv[]) {
//    // insert code here...
//    std::cout << "Hello, World!\n";
//    return 0;
//}

//#include <iostream>
//
//using namespace std;
//
//int main(){
//    cout << "HelloWorld." << endl;
//    return 0;
//}

//#include <iostream>
//using namespace std;
//
//int main() {
//    int a, b;
//    cin >> a >> b;
//    int c = a * b;
//    if (c % 2 == 0) cout << "Even" << endl;
//    else cout << "Odd" << endl;
//}

//using namespace std;
//
//int main(){
//    int a;
//    cin >> a;
//    cout << "a=" << a << endl;
//    return 0;
//}

#include <iostream>
#include <string>
 
using namespace std;
 
int main(){
    string s,t;
    t ="入力された文字は、";
    cout << "文字列を入力：";
    cin >> s;
    cout << t+s << "です。" << endl;
    return 0;
}
