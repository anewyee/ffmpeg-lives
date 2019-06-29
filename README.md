# ffmpeg

编译新版本的ffmpeg，用于24H稳定推流服务。

## Link new Version
- [ffmpeg 4.0](http://www.ffmpeg.org/download.html)
- [yasm](http://yasm.tortall.net/) [yasm github](https://github.com/yasm/yasm)

## yasm install
> Yasm is a complete rewrite of the NASM assembler.

```
tar -xvzf yasm-1.3.0.tar.gz
cd yasm-1.3.0/
./configure
make
make install
```


## ffmpeg install

```
tar -xjvf ffmpeg-4.0.2.tar.bz2
cd ffmpeg-4.0.2/
./configure --enable-shared --prefix=/monchickey/ffmpeg
make
make install
```