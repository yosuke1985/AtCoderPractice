//
//  main.cpp
//  AtCoderCplusplus
//
//  Created by Yosuke Nakayama on 2021/07/27.
//

#include <iostream>
#include "main.hpp"
#include "day2.hpp"
 
using namespace std;
 
int main()
{
    CSample obj;  // CSampleをインスタンス化
    int num;
     
    cout << "整数を入力して下さい:" << endl;
    cin >> num;
     
    obj.set( num );  // CSampleのメンバ変数をセット
    cout << obj.get() << endl;  // メンバ変数の値を出力
 
    return 0;
}
