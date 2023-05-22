# backup file or directory
function file-bak() {
  cp -r $1{,.bak}
}
# file size
function size-file() {
  du -h $1
}
# directory size
function size-dir() {
  du -hs $1
}
function size-dir-list() {
  du -d 1 -h $1 | sort -h -r
}
# tar
function tar-compress() {
  tar -czvf archive.tar.gz $1
}
function tar-decompress() {
  tar -zxv -f $1
}

