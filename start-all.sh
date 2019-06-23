echo -e "-------------------------"
echo -e "Starting MC2PD Containers"
echo -e "-------------------------"
cd mc2pd 
docker-compose up --build -d
cd ..

cd portainer
./start-portainer.sh

