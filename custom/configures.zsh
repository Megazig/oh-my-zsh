#PATH=$PATH:/usr/local/Trolltech/Qt-4.8.1/bin
PATH=$PATH:/usr/local/Trolltech/Qt-4.8.5/bin
PATH=$PATH:/usr/local/idaadv/sdk/bin

alias configure_qt="./configure -release -shared -opensource -fast -largefile -no-qt3support -no-openvg -no-gif -no-libpng -no-libmng -no-libtiff -no-libjpeg -no-phonon -no-phonon-backend -xrender -webkit -script -scripttools -declarative -nomake examples -nomake demos -platform unsupported/linux-clang -sm -confirm-license -gstreamer"

alias configure_clang="../llvm/configure --enable-optimized=yes --enable-targets=host --enable-assertions=no"
alias configure_clang_all="../llvm/configure --enable-optimized=yes --enable-assertions=no"

alias configure_vim="make distclean && ./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-perlinterp --enable-cscope --enable-multibyte --with-compiledby=stephen.daniel.simpson@gmail.com"

#alias configure_gcc="../configure -v --with-pkgversion='Debian 4.8.1-10' --enable-languages=c,c++ --prefix=/usr --program-suffix=-4.9 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.9 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-gnu-unique-object --enable-plugin --with-system-zlib --disable-browser-plugin --with-arch-directory=i386 --with-tune=generic --enable-checking=release --build=i486-linux-gnu --host=i486-linux-gnu --target=i486-linux-gnu"
alias configure_gcc="../configure -v --with-pkgversion='Debian 4.8.1-10' --enable-languages=c,c++ --prefix=/usr --program-suffix=-4.9 --enable-shared --enable-linker-build-id --libexecdir=/usr/lib --without-included-gettext --enable-threads=posix --with-gxx-include-dir=/usr/include/c++/4.9 --libdir=/usr/lib --enable-nls --with-sysroot=/ --enable-clocale=gnu --enable-libstdcxx-debug --enable-libstdcxx-time=yes --enable-gnu-unique-object --enable-plugin --with-system-zlib --disable-browser-plugin --with-tune=generic --enable-checking=release --build=i486-linux-gnu --host=i486-linux-gnu --target=i486-linux-gnu"

alias qmake_clang="qmake -r -spec unsupported/linux-clang"
