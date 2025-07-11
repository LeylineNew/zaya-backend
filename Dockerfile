FROM python:3.11-slim

WORKDIR /app

# 设置环境变量
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# 复制依赖文件
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制应用代码
COPY . .

# 创建非root用户（安全最佳实践）
RUN useradd --create-home --shell /bin/bash app && chown -R app:app /app
USER app

# 暴露端口（Cloud Run会自动设置PORT环境变量）
EXPOSE 8080

# 启动命令（使用环境变量PORT，默认8080）
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]