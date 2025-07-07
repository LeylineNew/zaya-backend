# 🤖 Zaya Chatbot Backend

This is the FastAPI backend for **Zaya**, the embedded chatbot for the Leyline platform. Zaya detects user intent, responds using OpenAI, and logs full conversations to Feishu for internal tracking and analysis.

---

## ✨ Features

- 🎯 **Intent Detection** – Handles Creator / Developer / Bug Reporter roles
- 💬 **AI-Powered Replies** – Uses OpenAI to generate helpful, on-brand responses
- 📝 **Conversation Logging** – Stores messages, timestamps, URLs, and summaries
- 🧾 **Feishu Bitable Sync** – Logs entries to internal Feishu tables for review and filtering
- 🌐 **Environment Tagging** – Supports `dev`, `staging`, `prod` environments

---

## 🛠 Setup Instructions

### 1. Clone the Repository

```
git clone https://github.com/LeylineNew/zaya-chatbot-backend.git
cd zaya-chatbot-backend
```

### 2. Set Up a Virtual Environment

```
python3 -m venv venv
source venv/bin/activate
```
### 3. Install Dependencies

```
pip install -r requirements.txt
```

### 4. Configure Your Environment Variables
Copy the example file and fill in your own credentials:

```
cp .env.example .env
```

Edit the .env file with your actual keys:

```
OPENAI_API_KEY=your-openai-api-key
FEISHU_APP_ID=your-feishu-app-id
FEISHU_APP_SECRET=your-feishu-app-secret
FEISHU_TABLE_ID=main-feishu-table-id
FEISHU_TABLE_APP_TOKEN=main-bitable-app-token
```

🚀 Run the Server
Start the FastAPI server with:

```
uvicorn main:app --reload
```

The API will be available at:
http://localhost:8000/api/zaya-log
