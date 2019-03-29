cat releasenotes.md
echo "END OF FILE"
content=$(cat < releasenotes.md && echo .) &&
  content=${content%.} &&
  printf %s "${content:0:5000}" > releasenotes_truncated.md
cat releasenotes_truncated.md