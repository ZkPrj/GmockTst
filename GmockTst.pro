





win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/ -lgmock
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/ -lgmockd
else:unix: LIBS += -L$$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/ -lgmock

INCLUDEPATH += $$PWD/../../googletest-master/googletest-master/googlemock/include
DEPENDPATH += $$PWD/../../googletest-master/googletest-master/googlemock/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/libgmock.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/libgmockd.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gmock.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gmockd.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/libgmock.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/ -lgtest
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/ -lgtestd
else:unix: LIBS += -L$$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/ -lgtest

INCLUDEPATH += $$PWD/../../googletest-master/googletest-master/googletest/include
DEPENDPATH += $$PWD/../../googletest-master/googletest-master/googletest/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/libgtest.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/libgtestd.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/gtest.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/gtestd.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../googletest-master/googletest-master/build-googlemock-Desktop_Qt_5_10_0_MinGW_32bit-Debug/gtest/libgtest.a

SOURCES += \
    main.cpp \
    soundextest.cpp
