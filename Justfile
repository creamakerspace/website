serve:
  zola serve

webp PATH:
  convert {{PATH}} -auto-orient /tmp/rotate
  cwebp -resize 912 0 /tmp/rotate -o {{without_extension(PATH)}}.webp
  rm /tmp/rotate

webp-loop PATH DIMS="800:600":
  ffmpeg -i {{PATH}} -vcodec libwebp -filter:v fps=fps=20 -lossless 1 -loop 0 -preset default -an -vsync 0 -s {{DIMS}} {{without_extension(PATH)}}.webp

# webm PATH:
#  ffmpeg -i {{PATH}} -c:v libvpx-vp9 -b:a 128k -b:v 1M -c:a libopus {{without_extension(PATH)}}.webm


