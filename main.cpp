#include "gmock/gmock.h"



class Soundex
{
public:
    Soundex() {}
};

TEST(SoundexEncoding, RetainSoleLetterOfOneLetterWord){
    Soundex soundx;
}

int main(int argc, char** argv) {
    testing::InitGoogleMock(&argc, argv);
    return RUN_ALL_TESTS();
}
