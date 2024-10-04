# 使用官方的OpenJDK基础镜像
FROM openjdk:8-jre-slim

# 设置工作目录
WORKDIR /app

# 复制构建好的JAR文件到工作目录
COPY target/myapp.jar /app/myapp.jar

# 暴露应用运行的端口
EXPOSE 8080

# 运行应用程序
CMD ["java", "-jar", "myapp.jar"]
