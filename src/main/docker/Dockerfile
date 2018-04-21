# 基于那个基础镜像
FROM 192.168.200.133:5000/centosj8
# 设置字符集
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC ALL en_US.UTF-8
# 将本地tmp文件夹挂载到当前容器
VOLUME /TMP
# 将当前容器创建/app文件夹
RUN mkdir /app
# 设置时区
ENV TZ "Asia/Shanghai"
# 将app.jar和runboot复制到/app目录下
ADD docker-maven-1.0.jar /app/app.jar
RUN bash -c 'touch /app/app.jar'

# 把runboot.sh放到容器的/app目录下
ADD runboot.sh /app/
# 设置工作目录/app
WORKDIR /app
RUN chmod a+x runboot.sh
# 运行sh脚本
ENTRYPOINT ["sh","runboot.sh"]




