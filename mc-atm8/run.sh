set -e

docker build -t atm8-server docker

docker run --rm --name=atm8-server \
  -h atm8-server \
  -e PROJECT_ID=520914  \
  -e VERSION_ID=4504876  \
  -e API_KEY='$2a$10$PPvB.8hOSWhKXPIdU8954OdUH3kNO/QfZOn2Yzs1OZSdAl1JLlAwK' \
  -v $PWD/config:/config \
  -it \
  atm8-server
