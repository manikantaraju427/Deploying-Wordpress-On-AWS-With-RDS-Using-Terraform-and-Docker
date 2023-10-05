# Deploying wordpress on AWS/Azure with RDS using Terraform, and Docker.( AWS)

#task 1: Create a Terraform script to deploy a VM. The VM should be in public subnet

#task 2: In the same VM Create a Dockerfile to deploy Apache webserver + PHP + Wordpress. Use COPY, ARG, RUN, ENTRYPOINT, CMD, WORKDIR in Dockerfile.

#task 3: Build the docker image, tag the image and push the docker image to Docker Hub and run the container.

#task 4 : Deploy the RDS on AWS/Azure and it should be on private subnet.

#task 5 : Connect your Wordpress container with RDS database.

#Setup the Wordpress and attach all the screenshot and code to Github. 

# install Terraform
![WhatsApp Image 2023-10-05 at 13 59 33](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/94ecb0cd-e77b-4cb7-ab7c-83d3ee70a48a)

After installing Terraform

* aws configure

  ![WhatsApp Image 2023-10-05 at 14 08 17](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/ea8a9f5d-05a9-4a3e-9edb-d6a4bc863b7c)
  
Created  Terraform script with .tf extension

Now, navigated to the Terraform directory where all of the Terraform files are located. 

#run the following command to install all of the necessary plugins

$terraform init

![WhatsApp Image 2023-10-05 at 14 15 56](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/80cb8805-510a-48b9-9cb6-a0c35dd57453)

$terrafrom plan

![WhatsApp Image 2023-10-05 at 14 21 05](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/fb724504-843c-4a22-bad4-74269d3a7a39)

$terrafrom apply

![WhatsApp Image 2023-10-05 at 14 23 26](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/956af609-f062-4e98-917b-8f5a91720582)

After running the terraform apply command , required infrastructure to be created

RDS instance is created

![WhatsApp Image 2023-10-05 at 14 28 40](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/68b7961e-c106-4452-8c2d-3f7669af00cd)

ec2 insatnce created

![WhatsApp Image 2023-10-05 at 14 32 05](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/ceed1f27-6b63-4585-824e-755ff06a39f9)

 After creating all resources over Terraform

 # docker

 installed docker on my system , check with $sudo systemctl status docker 
 

 created Dockerfiles
 
$Dockerfile
 
$Dockerfilephp

then build this images

$docker-compose.yaml

# Docker Hub

login docker hub


![WhatsApp Image 2023-10-05 at 16 55 40](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/6b29ed6d-230d-4f44-af96-f3c690386d83)


$docker tag : sudo docker tag wordpress:latest manikantaraju/discover:new_version


$docker push : sudo docker push manikantaraju/discover:new_version

see the pushed image listed in the repository


![WhatsApp Image 2023-10-05 at 16 55 40 (2)](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/d752398d-1069-4115-8334-df59f55fdd56)


![WhatsApp Image 2023-10-05 at 16 55 40 (1)](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/1f4d1fcf-7272-474a-b8ef-1af09afa1cdd)



# Wordpress login

http://44.198.174.168:80     EC2 public ip + portnumber


![WhatsApp Image 2023-10-05 at 16 55 53](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/3d5d1c5f-3bfa-49f0-87c0-01a3c35c0769)


Click on continue button

![WhatsApp Image 2023-10-05 at 16 55 40 (4)](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/64afa07f-dec3-426e-aeb1-dd235b9c7ccc)


![WhatsApp Image 2023-10-05 at 16 55 40 (3)](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/f69f57d9-4234-40c5-9f84-08aa24c08aa5)


![WhatsApp Image 2023-10-05 at 16 55 40 (5)](https://github.com/manikantaraju427/Discover-Dollar/assets/125948783/72c7721d-8fe2-449f-bbe3-df2d0ae3fc23)


i have deployed Wordpress successfully as per task






