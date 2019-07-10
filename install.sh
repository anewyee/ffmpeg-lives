
cd ../ && \
git clone git://git.videolan.org/x264.git && \
cd x264 && \
./configure --includedir=/usr/local/include --libdir=/usr/local/lib --enable-shared --disable-asm && \
make && \
make install && \

cd ../ffmpeg && \
tar -xvzf yasm-1.3.0.tar.gz && \ 
cd yasm-1.3.0/ && \
./configure && \
make && \
make install && \

cd ../ && \
tar -xjvf ffmpeg-4.0.2.tar.bz2 && \
cd ffmpeg-4.0.2/ && \
./configure --enable-shared --enable-gpl --enable-libx264 --enable-libmp3lame  --enable-libfreetype --prefix=/monchickey/ffmpeg && \
make && \
make install