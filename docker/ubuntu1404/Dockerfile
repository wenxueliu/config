#设置继承镜像
FROM ubuntu:14.04
#提供一些作者的信息
MAINTAINER wenxueliu73@163.com
#下面开始运行命令,此处更改ubuntu的源为国内163的源
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update

#安装 ssh 服务
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd


#取消pam限制
#RUN sed -ri 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd

#开放端口
EXPOSE 22

#设置自启动命令
CMD ["/usr/sbin/sshd" "-D"]
