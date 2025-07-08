# 🐳 Docker Commands for Go App

```bash
# Create Docker image    
docker build -t afzal-go .

# Run the image, container will be created
docker run --name mycontainer -p 8080:8080 -it afzal-go

# List of images 
docker images

# See the running/stopped containers 
docker ps -a


