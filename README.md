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
./configure --enable-shared --enable-gpl --enable-libx264 --enable-libmp3lame --prefix=/monchickey/ffmpeg
make
make install
```

## config

- 配置
```
root@mmc:/home/mmc/yee/ffmpeg/ffmpeg-4.0.2# vi /etc/ld.so.conf
```
添加一行：
```
/monchickey/ffmpeg/lib/
```
- 重载：
```
root@mmc:/home/mmc/yee/ffmpeg/ffmpeg-4.0.2# ldconfig
```
查看版本：
```
root@mmc:/monchickey/ffmpeg# /monchickey/ffmpeg/bin/ffmpeg -version
```
- 添加环境变量：
```
root@mmc:/usr/share/ffmpeg# vi /etc/profile
```
添加一行：
```
export PATH=/monchickey/ffmpeg/bin/:$PATH
```

```
root@mmc:/usr/share/ffmpeg# source /etc/profile
root@mmc:/usr/share/ffmpeg# ffmpeg -version
```

- 检查

```
root@mmc:/usr/share/ffmpeg# ffmpeg -version
ffmpeg version 4.0.2 Copyright (c) 2000-2018 the FFmpeg developers
built with gcc 5.4.0 (Ubuntu 5.4.0-6ubuntu1~16.04.11) 20160609
configuration: --enable-shared --prefix=/monchickey/ffmpeg
libavutil      56. 14.100 / 56. 14.100
libavcodec     58. 18.100 / 58. 18.100
libavformat    58. 12.100 / 58. 12.100
libavdevice    58.  3.100 / 58.  3.100
libavfilter     7. 16.100 /  7. 16.100
libswscale      5.  1.100 /  5.  1.100
libswresample   3.  1.100 /  3.  1.100
```



