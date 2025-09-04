# Face Auth - Mobile App

Flutter ile geliştirilmiş yüz tanıma mobil uygulaması.

## 🚀 Hızlı Başlangıç

### Gereksinimler
- Flutter 3.9.0+
- Dart 3.0+
- Android Studio / Xcode (platform desteği için)

### Kurulum
```bash
# Paketleri yükle
flutter pub get

# Uygulamayı çalıştır
flutter run
```

## 📱 Desteklenen Platformlar

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ macOS
- ✅ Linux
- ✅ Windows

## 📂 Proje Yapısı

```
mobile/
├── lib/
│   ├── main.dart                    # Ana uygulama
│   ├── core/
│   │   └── config/
│   │       └── supabase_config.dart # Supabase yapılandırması
│   └── features/
│       ├── auth/
│       │   ├── data/services/
│       │   │   └── auth_service.dart    # Authentication servisi
│       │   └── presentation/pages/
│       │       ├── login_page.dart      # Giriş sayfası
│       │       └── register_page.dart   # Kayıt sayfası
│       └── home/
│           └── presentation/pages/
│               └── home_page.dart       # Ana sayfa
├── android/                         # Android yapılandırması
├── ios/                            # iOS yapılandırması
├── web/                            # Web yapılandırması
├── pubspec.yaml                    # Dart paketleri
└── README.md
```

## 📦 Kullanılan Paketler

### Core
- **flutter**: Flutter framework
- **cupertino_icons**: iOS tarzı ikonlar

### State Management
- **flutter_bloc**: Bloc pattern

### Navigation
- **go_router**: Gelişmiş routing

### HTTP & Storage
- **dio**: HTTP client
- **hive**: Local database
- **flutter_secure_storage**: Güvenli depolama

### Backend
- **supabase_flutter**: Supabase entegrasyonu

### Environment
- **flutter_dotenv**: Environment variables

## ⚙️ Konfigürasyon

`.env` dosyası oluşturun:
```env
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_anon_key
API_BASE_URL=your_api_url
```

## 🏗️ Build

### Android
```bash
flutter build apk --release
# veya
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🧪 Test

```bash
# Widget testlerini çalıştır
flutter test

# Integration testler
flutter drive --target=test_driver/app.dart
```

## 🎨 Özellikler

- 🔐 **Güvenli Giriş**: JWT token ile authentication
- 👤 **Yüz Tanıma**: AI tabanlı yüz doğrulama
- 📱 **Responsive Design**: Tüm ekran boyutlarına uyumlu
- 🌙 **Dark Mode**: Karanlık tema desteği
- 🌍 **Çoklu Dil**: i18n desteği
- 💾 **Offline Support**: Local storage ile çevrimdışı kullanım

## 📋 Development

```bash
# Geliştirme modunda çalıştır
flutter run --debug

# Hot reload aktif
# r tuşu - Hot reload
# R tuşu - Hot restart
```

## 🚀 Deployment

1. Platform-specific konfigürasyonları tamamla
2. Release build oluştur
3. App Store / Play Store'a yükle
