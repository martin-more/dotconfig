# add all permissions
function perm-all() {
  chmod -R 777 $1
}

# change owner to me
function perm-claim() {
  sudo chown -R $USER $1
}

