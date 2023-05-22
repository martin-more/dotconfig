function donames-fn {
  for ID in `docker ps | awk '{print $1}' | grep -v 'CONTAINER'`
  do
    docker inspect $ID | grep Name | head -1 | awk '{print $2}' | sed 's/,//g' | sed 's%/%%g' | sed 's/"//g'
  done
}

function doip-fn {
  echo "IP addresses of all named running containers"

  for DOC in `donames-fn`
  do
    IP=`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}} {{end}}' "$DOC"`
        OUT+=$DOC'\t'$IP'\n'
  done
  echo -e $OUT | column -t
  unset OUT
}

function doex-fn {
  docker exec -it $1 ${2:-bash}
}

function doi-fn {
  docker inspect $1
}

function dol-fn {
  docker logs -f $1
}

