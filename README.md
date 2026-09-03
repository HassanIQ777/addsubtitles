# addsubtitles
Lets you embed VVT subtitles into an mp4 video.


## Installation
```sh
git clone https://github.com/HassanIQ777/addsubtitles.git && cd addsubtitles
```


## Usage
```sh
./addVVTsubs.sh <FILE> <SUBS>
```

FILE must be a video in .mp4 format.

SUBS must be subtitles in .vvt format.

## Example Usage

```
$ ./addVVTsubs.sh "6 - Selecting Compatible Wireless Adapter for Kali Linux.mp4" "6 - Selecting Compatible Wireless Adapter for Kali Linux English.vtt" 
ffmpeg version n9.0.1 Copyright (c) 2000-2026 the FFmpeg developers
  built with gcc 16 (GCC)
  configuration: --prefix=/usr --disable-debug --disable-static --disable-stripping --enable-amf --enable-avisynth --enable-cuda-llvm --enable-lto --enable-fontconfig --enable-frei0r --enable-gmp --enable-gnutls --enable-gpl --enable-ladspa --enable-lcms2 --enable-libaom --enable-libass --enable-libbluray --enable-libbs2b --enable-libdav1d --enable-libdrm --enable-libdvdnav --enable-libdvdread --enable-libfreetype --enable-libfribidi --enable-libgsm --enable-libharfbuzz --enable-libiec61883 --enable-libjack --enable-libjxl --enable-libmodplug --enable-libmp3lame --enable-libopencore_amrnb --enable-libopencore_amrwb --enable-libopenjpeg --enable-libopenmpt --enable-libopus --enable-libplacebo --enable-libpulse --enable-librav1e --enable-librsvg --enable-librubberband --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libsrt --enable-libssh --enable-libsvtav1 --enable-libtheora --enable-libv4l2 --enable-libvidstab --enable-libvmaf --enable-libvorbis --enable-libvpl --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxcb --enable-libxml2 --enable-libxvid --enable-libzimg --enable-libzmq --enable-nvdec --enable-nvenc --enable-opencl --enable-opengl --enable-shared --enable-vapoursynth --enable-version3 --enable-vulkan --disable-decoder=magicyuv
  libavutil      61.  1.101 / 61.  1.101
  libavcodec     63.  1.101 / 63.  1.101
  libavformat    63.  1.101 / 63.  1.101
  libavdevice    63.  1.101 / 63.  1.101
  libavfilter    12.  1.101 / 12.  1.101
  libswscale     10.  1.101 / 10.  1.101
  libswresample   7.  1.101 /  7.  1.101
Input #0, mov,mp4,m4a,3gp,3g2,mj2, from '6 - Selecting Compatible Wireless Adapter for Kali Linux.mp4':
  Metadata:
    major_brand     : isom
    minor_version   : 512
    compatible_brands: isomiso2avc1mp41
    date            : 2025-05-28T09:12:34.2535659-07:00
    encoder         : Lavf59.27.100
  Duration: 00:06:20.33, start: 0.000000, bitrate: 1316 kb/s
  Stream #0:0[0x1](und): Video: h264 (Main) (avc1 / 0x31637661), yuv420p(progressive), 1920x1080 [SAR 1:1 DAR 16:9], 1248 kb/s, 30 fps, 30 tbr, 90k tbn, start 0.105000 (default)
    Metadata:
      handler_name    : VideoHandler
  Stream #0:1[0x2](und): Audio: aac (HE-AAC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 62 kb/s (default)
    Metadata:
      handler_name    : SoundHandler
Input #1, webvtt, from '6 - Selecting Compatible Wireless Adapter for Kali Linux English.vtt':
  Duration: N/A, bitrate: N/A
  Stream #1:0: Subtitle: webvtt
[sost#0:2 @ 0x5591560e5100] Multiple -codec/-c/-acodec/-vcodec/-scodec/-dcodec options specified for stream 2, only the last option '-codec:s mov_text' will be used.
Stream mapping:
  Stream #0:0 -> #0:0 (copy)
  Stream #0:1 -> #0:1 (copy)
  Stream #1:0 -> #0:2 (webvtt (native) -> mov_text (native))
Press [q] to stop, [?] for help
Output #0, mp4, to 'Downloads/Complete WIFI Hacking Course With Powerful MITM Techniques/3 - Setting Up Wireless Penetration Testing Lab/6 - Selecting Compatible Wireless Adapter for Kali Linux_subbed.mp4':
  Metadata:
    major_brand     : isom
    minor_version   : 512
    compatible_brands: isomiso2avc1mp41
    date            : 2025-05-28T09:12:34.2535659-07:00
    encoder         : Lavf63.1.101
  Stream #0:0(und): Video: h264 (Main) (avc1 / 0x31637661), yuv420p(progressive), 1920x1080 [SAR 1:1 DAR 16:9], q=2-31, 1248 kb/s, 30 fps, 30 tbr, 90k tbn (default)
    Metadata:
      handler_name    : VideoHandler
  Stream #0:1(und): Audio: aac (HE-AAC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 62 kb/s (default)
    Metadata:
      handler_name    : SoundHandler
  Stream #0:2: Subtitle: mov_text (tx3g / 0x67337874)
    Metadata:
      encoder         : Lavc63.1.101 mov_text
[out#0/mp4 @ 0x5591560e7b80] video:57926KiB audio:2910KiB subtitle:4KiB other streams:0KiB global headers:0KiB muxing overhead: 0.490839%
frame=11405 fps=0.0 q=-1.0 Lsize=   61139KiB time=00:06:20.33 bitrate=1316.9kbits/s speed=2.13e+03x elapsed=0:00:00.17
```

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.

## License
This project is licensed under the MIT License See
[`LICENSE`](LICENSE) for details.