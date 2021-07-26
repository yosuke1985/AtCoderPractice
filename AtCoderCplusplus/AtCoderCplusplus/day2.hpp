//
//  day2.hpp
//  AtCoderCplusplus
//
//  Created by Yosuke Nakayama on 2021/07/27.
//

#ifndef day2_hpp
#define day2_hpp

#include <stdio.h>

// クラス宣言
class CSample
{
public:
    void set(int num);  // m_numに値を設定する
    int get();          // m_numの値を取得する
private:
    int m_num;
};


#endif /* day2_hpp */
