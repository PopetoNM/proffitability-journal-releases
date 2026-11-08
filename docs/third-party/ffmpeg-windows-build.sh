#!/usr/bin/env bash
set -euo pipefail

repo="$PWD"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
if ! command -v gcc >/dev/null || ! command -v make >/dev/null || [[ ! -f /mingw64/include/zlib.h ]]; then
  pacman -Sy --needed --noconfirm mingw-w64-x86_64-gcc mingw-w64-x86_64-zlib make diffutils
fi
gcc --version
cd "$work"
curl -fsSLO --retry 3 https://ffmpeg.org/releases/ffmpeg-9.0.2.tar.xz
printf '%s  ffmpeg-9.0.2.tar.xz\n' 8c3850283eb25fa026482078a04051e0be17347b09ef81a0849bec15a96e002e | sha256sum -c
tar -xf ffmpeg-9.0.2.tar.xz
cd ffmpeg-9.0.2
./configure \
  --disable-everything --disable-autodetect --disable-network --disable-doc \
  --disable-debug --disable-x86asm --enable-small --enable-static --disable-shared \
  --enable-ffmpeg --disable-ffprobe --disable-ffplay --extra-ldflags=-static \
  --enable-protocol=file,pipe --enable-demuxer=image2,wav,mp3,aac,mov \
  --enable-decoder=png,mp3,aac,pcm_s16le,pcm_s24le,pcm_f32le \
  --enable-encoder=gif,aac,mpeg4 --enable-muxer=gif,mp4 \
  --enable-parser=png,mpegaudio,aac \
  --enable-filter=scale,format,split,palettegen,paletteuse,aresample,aformat,anull,null,buffer,buffersink,abuffer,abuffersink \
  --enable-zlib --enable-swscale --enable-swresample
make -j4 ffmpeg.exe
mkdir -p "$repo/native/ffmpeg/bin"
cp ffmpeg.exe "$repo/native/ffmpeg/bin/"
"$repo/native/ffmpeg/bin/ffmpeg.exe" -version
