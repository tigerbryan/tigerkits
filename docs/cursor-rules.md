# Cursor 使用指南

## 基本信息
- 服务器地址：`43.100.16.213`
- SSH 密钥路径：`/Users/bryanchen/Desktop/cursor1.pem`
- 连接命令：`ssh -i /Users/bryanchen/Desktop/cursor1.pem root@43.100.16.213`

## 项目结构
```
tigerkits/
├── docker-compose.yml    # Docker 服务配置
├── nginx-config/         # Nginx 配置文件
├── scripts/             # 运维脚本
│   ├── deploy.sh        # 部署脚本
│   └── quick-deploy.sh  # 快速部署脚本
└── docs/               # 文档目录
```

## 快速部署
1. 在本地修改代码后，运行快速部署脚本：
```bash
chmod +x scripts/quick-deploy.sh  # 首次使用时添加执行权限
./scripts/quick-deploy.sh
```
2. 输入提交信息
3. 等待部署完成

## 常用操作
### 1. 查看服务状态
```bash
ssh -i /Users/bryanchen/Desktop/cursor1.pem root@43.100.16.213 "docker ps"
```

### 2. 查看服务日志
```bash
# 查看 Homarr 日志
ssh -i /Users/bryanchen/Desktop/cursor1.pem root@43.100.16.213 "docker logs homarr"

# 查看 Nginx 日志
ssh -i /Users/bryanchen/Desktop/cursor1.pem root@43.100.16.213 "docker logs nginx"
```

### 3. 重启服务
```bash
ssh -i /Users/bryanchen/Desktop/cursor1.pem root@43.100.16.213 "cd /opt/homarr && docker-compose restart"
```

## 注意事项
1. 确保本地修改已经提交并推送到 GitHub
2. 使用快速部署脚本可以一键完成所有部署步骤
3. 如果遇到权限问题，请检查 SSH 密钥是否正确
4. 部署完成后，请访问 http://dashboard.tigerkits.com 验证服务是否正常运行

## 故障排除
1. 如果网页无法访问：
   - 检查 Nginx 服务是否正常运行
   - 检查域名解析是否正确
   - 查看 Nginx 错误日志

2. 如果服务启动失败：
   - 检查 Docker 容器状态
   - 查看容器日志
   - 确认配置文件是否正确

3. 如果部署脚本失败：
   - 检查 Git 仓库状态
   - 确认 SSH 连接是否正常
   - 查看服务器磁盘空间是否充足 