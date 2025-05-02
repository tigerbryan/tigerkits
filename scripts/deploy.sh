#!/bin/bash

# 更新代码
cd /root/tigerkits
git pull

# 复制配置文件
cp -r nginx-config /opt/homarr/
cp docker-compose.yml /opt/homarr/

# 重启服务
cd /opt/homarr
docker-compose down
docker-compose up -d

# 输出状态
echo "部署完成！"
docker ps 