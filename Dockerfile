
# Sử dụng image Tomcat chính thức
FROM tomcat:9.0-jdk17

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ Maven build sang Tomcat
COPY dist/MyWeb.war /usr/local/tomcat/webapps/ROOT.war

# Mở port
EXPOSE 8080

# Lệnh chạy Tomcat
CMD ["catalina.sh", "run"]


