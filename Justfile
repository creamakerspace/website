serve:
  zola serve

webp PATH:
  cwebp -resize 912 0 {{PATH}} -o {{without_extension(PATH)}}.webp

webp-loop PATH:
  ffmpeg -i {{PATH}} -vcodec libwebp -filter:v fps=fps=20 -lossless 1 -loop 0 -preset default -an -vsync 0 -s 800:600 {{without_extension(PATH)}}.webp

webp-loop-vert PATH:
  ffmpeg -i {{PATH}} -vcodec libwebp -filter:v fps=fps=20 -lossless 1 -loop 0 -preset default -an -vsync 0 -s 600:800 {{without_extension(PATH)}}.webp

webm PATH:
  ffmpeg -i {{PATH}} -c:v libvpx-vp9 -b:a 128k -b:v 1M -c:a libopus {{without_extension(PATH)}}.webm


