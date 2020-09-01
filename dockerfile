FROM node
MAINTAINER wujianfeng
#执行命令，创建文件夹
RUN mkdir -p /usr/src/workPlace_express/expressPro
#将dist目录拷贝到镜像里
COPY package.json /usr/src/workPlace_express/expressPro
COPY server.js /usr/src/workPlace_express/expressPro
#指定工作目录
WORKDIR /usr/src/workPlace_express/expressPro
#安装依赖及构建node应用
RUN npm install
#配置环境变量
 ENV HOST 0.0.0.0
 ENV PORT 3333
 CMD ["node","server.js"]