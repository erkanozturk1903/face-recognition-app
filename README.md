# Face Recognition App

Modern bir yüz tanıma uygulaması - Flutter mobil uygulama ve FastAPI backend ile geliştirilmiştir.

## 📱 Proje Yapısı

```
face-recognition-app/
├── backend/          # FastAPI Backend
└── mobile/           # Flutter Mobile App
```

## 🚀 Özellikler

- **Yüz Tanıma Sistemi**: Gelişmiş AI ile güvenli kimlik doğrulama
- **Cross-Platform**: iOS, Android ve Web desteği
- **Modern API**: FastAPI ile RESTful backend
- **Real-time**: Anlık yüz tanıma ve doğrulama
- **Güvenli**: Supabase entegrasyonu ile veri güvenliği

## 🛠️ Teknolojiler

### Backend
- **FastAPI**: Modern Python web framework
- **Supabase**: Database ve Authentication
- **Python**: Ana programlama dili

### Mobile
- **Flutter**: Cross-platform mobil framework
- **Dart**: Programlama dili
- **Bloc Pattern**: State management
- **Go Router**: Navigation
- **Supabase**: Backend entegrasyonu

## 📋 Kurulum

### Backend Kurulumu
```bash
cd backend
python -m venv venv
source venv/bin/activate  # Windows: venv\\Scripts\\activate
pip install -r requirements.txt
uvicorn app.main:app --reload
```

### Mobile Kurulumu
```bash
cd mobile
flutter pub get
flutter run
```

## 🔧 Konfigürasyon

1. `.env` dosyalarını oluşturun (backend ve mobile klasörlerinde)
2. Supabase credentials'larını ekleyin
3. API endpoint'lerini yapılandırın

## 📖 API Dokümantasyonu

Backend çalıştırıldıktan sonra:
- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

## 🤝 Katkıda Bulunma

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/AmazingFeature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some AmazingFeature'`)
4. Branch'inizi push edin (`git push origin feature/AmazingFeature`)
5. Pull Request oluşturun

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

## 📞 İletişim

Proje Sahibi: [Erkan Öztürk](https://github.com/erkanozturk1903)