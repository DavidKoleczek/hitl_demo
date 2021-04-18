# hitl_demo
Create Python 3.8 Environment

Install packages
- pip3 install torch==1.8.1+cpu torchvision==0.9.1+cpu torchaudio===0.8.1 -f https://download.pytorch.org/whl/torch_stable.html
- pip install gym
- pip install stable-baselines3
- pip install pygame
- pip install Box2D


docker build -t hitldemo . 
docker create -it --name HITLDemo hitldemo
docker start HITLDemo
docker exec -it HITLDemo python3 keyboard_agent.py