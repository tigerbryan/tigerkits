#!/bin/bash

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 部署到服务器
echo -e "${GREEN}正在部署到服务器...${NC}"
ssh -i /Users/bryanchen/Desktop/cursor1.pem root@43.100.16.213 "/root/tigerkits/scripts/deploy.sh"

echo -e "${GREEN}部署完成！${NC}" 