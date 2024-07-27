echo "list of all the container running on thie machine"
docker ps -a
echo "Stopping all containers running on this machine"
docker stop $(docker ps -aq)
sleep 10
echo "Removing all the containers running on this machine"
docker rm -v -f $(docker ps -aq)
echo "Shutting down this machine now $(shutdown -h now)"
shutdown -h now
