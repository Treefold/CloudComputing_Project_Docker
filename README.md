# Installation

## Prerequisites 
Ubuntu machine with docker and nodejs installed

## Git setup:
```bash
git clone https://github.com/Treefold/CloudComputing_Project_Docker
cd CloudComputing_Project_Docker
git clone -b main https://github.com/musat-andreea/BackendProject
git clone -b master https://github.com/musat-andreea/DWBI_Project
```

## Run & Test
```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
open a browser and enter http://{VM_IP}:3000/
```