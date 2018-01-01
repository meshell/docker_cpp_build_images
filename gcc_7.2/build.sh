if [ -z "$1" ]
  then
    IMAGE_NAME=meshell/gcc72
  else
    IMAGE_NAME=$1
fi
sudo docker build --no-cache -t $IMAGE_NAME .
