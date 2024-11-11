# Kéo image đã có trên Docker Hub
FROM lenguyenthai/backend-23:latest
# Chạy các lệnh bổ sung nếu cần
# Ví dụ: cài đặt thêm các dependencies hoặc copy thêm files
# Expose cổng dịch vụ nếu cần (tùy thuộc vào ứng dụng của bạn)
EXPOSE 8080

# Nạp file .env và chạy ứng dụng Spring Boot
CMD ["/bin/sh", "-c", "export $(grep -v '^#' /app/.env | xargs) && java -jar app.jar"]