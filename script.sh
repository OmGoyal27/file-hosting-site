sudo docker build -t file-hoster . 

sudo docker run -d -p 6200:6200 -v /home/om/DockerContainers/SambaShare/file-hosting-uploads:/app/uploaded-files --name file-hoster file-hoster

sudo docker update --restart unless-stopped file-hoster