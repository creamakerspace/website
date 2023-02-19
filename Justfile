default:

webp PATH:
  cwebp -resize 912 0 {{PATH}} -o {{without_extension(PATH)}}.webp
