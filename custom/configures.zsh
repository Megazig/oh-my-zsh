PATH=$PATH:/usr/local/Trolltech/Qt-4.8.1/bin
PATH=$PATH:/usr/local/idaadv/sdk/bin

alias configure_qt="./configure -release -shared -opensource -fast -largefile -no-qt3support -no-openvg -no-gif -no-libpng -no-libmng -no-libtiff -no-libjpeg -no-phonon -no-phonon-backend -xrender -webkit -script -scripttools -declarative -nomake examples -nomake demos -platform unsupported/linux-clang -sm -confirm-license -gstreamer"

alias configure_clang="../llvm/configure --enable-optimized=yes --enable-targets=host --enable-assertions=no"
alias configure_clang_all="../llvm/configure --enable-optimized=yes --enable-assertions=no"
