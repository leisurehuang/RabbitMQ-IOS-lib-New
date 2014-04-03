#!/bin/sh
rm -f ./librabbitmq.a

# arm64
./configure --host=arm-apple-darwin --with-ssl=no --enable-static=yes --enable-shared=no CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang CFLAGS="-std=c99 -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk" CPP=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cpp AR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ar AS=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/as LIBTOOL=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/libtool STRIP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/strip RANLIB=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ranlib
make clean &&  make
mv ./librabbitmq/.libs/librabbitmq.a ./arm64-apple-drawin/librabbitmq.a

# armv7s
./configure --host=arm-apple-darwin --with-ssl=no --enable-static=yes --enable-shared=no CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang CFLAGS="-std=c99 -arch armv7s -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk" CPP=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cpp AR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ar AS=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/as LIBTOOL=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/libtool STRIP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/strip RANLIB=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ranlib
make clean &&  make
mv ./librabbitmq/.libs/librabbitmq.a ./armv7s-apple-drawin/librabbitmq.a


# armv7
./configure --host=arm-apple-darwin --with-ssl=no --enable-static=yes --enable-shared=no CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang CFLAGS="-std=c99 -arch armv7 -mcpu=cortex-a8 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.1.sdk" CPP=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cpp AR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ar AS=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/as LIBTOOL=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/libtool STRIP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/strip RANLIB=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ranlib
make clean &&  make
mv ./librabbitmq/.libs/librabbitmq.a ./armv7-apple-drawin/librabbitmq.a


# i386
./configure --host=i686-apple-darwin --with-ssl=no --enable-static=yes --enable-shared=no CC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc CFLAGS="-std=c99 -arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.1.sdk" CPP=/usr/bin/cpp AR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ar AS=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/as LIBTOOL=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/libtool STRIP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/strip RANLIB=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/ranlib
make clean &&  make
mv ./librabbitmq/.libs/librabbitmq.a ./i386-apple-drawin/librabbitmq.a

# just for one
lipo -arch arm64 ./arm64-apple-drawin/librabbitmq.a -arch armv7s ./armv7s-apple-drawin/librabbitmq.a -arch armv7 ./armv7-apple-drawin/librabbitmq.a -arch i386 ./i386-apple-drawin/librabbitmq.a -output librabbitmq.a -create