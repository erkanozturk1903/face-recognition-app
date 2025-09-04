# Face Recognition API - Backend

FastAPI ile geliştirilmiş modern yüz tanıma API'si.

## 🚀 Hızlı Başlangıç

### Gereksinimler
- Python 3.8+
- pip

### Kurulum
```bash
# Virtual environment oluştur
python -m venv venv

# Virtual environment'ı aktif et
source venv/bin/activate  # Linux/Mac
# venv\Scripts\activate   # Windows

# Paketleri yükle
pip install -r requirements.txt

# Geliştirme sunucusunu başlat
uvicorn app.main:app --reload
```

## 📂 Proje Yapısı

```
backend/
├── app/
│   ├── __init__.py
│   ├── main.py              # FastAPI uygulaması
│   ├── api/
│   │   └── v1/
│   │       ├── __init__.py
│   │       └── auth.py      # Authentication endpoints
│   ├── core/
│   │   ├── __init__.py
│   │   ├── auth.py          # Authentication logic
│   │   └── database.py      # Database configuration
│   └── models/
│       ├── __init__.py
│       └── user.py          # User model
├── .env                     # Environment variables
├── .gitignore
└── README.md
```

## 🔗 API Endpoints

### Authentication
- `POST /api/v1/auth/register` - Kullanıcı kayıt
- `POST /api/v1/auth/login` - Giriş yapma
- `POST /api/v1/auth/face-register` - Yüz kaydı
- `POST /api/v1/auth/face-login` - Yüz ile giriş

### Health Check
- `GET /` - API durumu
- `GET /health` - Sağlık kontrolü

## 📖 API Dokümantasyonu

Sunucu çalıştıktan sonra:
- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## ⚙️ Konfigürasyon

`.env` dosyası oluşturun:
```env
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_anon_key
SECRET_KEY=your_secret_key
```

## 🔒 Güvenlik

- JWT token authentication
- CORS middleware
- Supabase integration
- Environment variables

## 🧪 Test

```bash
# Testleri çalıştır
pytest

# Coverage ile
pytest --cov=app
```

## 📦 Gerekli Paketler

- **FastAPI**: Modern web framework
- **Uvicorn**: ASGI server
- **Supabase**: Database ve auth
- **Pydantic**: Data validation
- **PyJWT**: JWT tokens