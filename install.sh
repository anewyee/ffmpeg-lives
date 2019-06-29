
tar -xvzf yasm-1.3.0.tar.gz && \
cd yasm-1.3.0/ && \
./configure && \
make && \
make install && \

cd ../ && \
tar -xjvf ffmpeg-4.0.2.tar.bz2 && \
cd ffmpeg-4.0.2/ && \
./configure --enable-shared --prefix=/monchickey/ffmpeg && \
make && \
make install 