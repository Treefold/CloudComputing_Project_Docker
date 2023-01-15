# Installation

## Prerequisites 
Ubuntu machine with docker and nodejs installed

## Git setup:
```bash
git clone https://github.com/Treefold/CloudComputing_Project_Docker
cd CloudComputing_Project_Docker
git clone https://github.com/musat-andreea/BackendProject
```

## Run & Test
```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
curl http://{VM_IP}:80/api/
```