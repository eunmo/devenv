# EC2 런칭

- t3a medium (t4g는 x86이 안됨)
- key pair은 선택하거나 (eunmo-seoul이 있음) 아니면 새로 생성
  - 생성은 그냥 RSA, pem 형식으로
- 네트워크는 그대로
- SSD (EB) 는 20GB

# 일단 업데이트

```{sh}
sudo apt update && sudo apt upgrade -y
```

껐다 킬때마다 ip가 바뀌는게 좀 빡치기는 함. 하다가 route53에 추가할지도

# 필요 라이브러리들 설치

## APT

```{sh}
sudo apt install git-lfs
```

## Node 18

```{sh}
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
```

## Docker

```{sh}
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
```
