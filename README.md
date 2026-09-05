# Flutter/Dart Öğrenme Sürecim

Bu repository, Flutter ve Dart öğrenme sürecimde yaptığım konu bazlı çalışmalar, küçük denemeler ve demo uygulamalardan oluşmaktadır.

Öğrenme sürecimi ağırlıklı olarak HardwareAndro YouTube kanalındaki **“Temelden Zirveye Flutter”** eğitim serisi üzerinden sürdürüyorum.

## Uygulama Projeleri

### [Smart Control Home UI](smart_control_home_app/)

Öğrendiğim Flutter ve Dart yapılarını pekiştirmek için hazırladığım akıllı ev kontrol paneli arayüzü. Proje; gündüz/gece görünümü, cihaz kartları, favoriler ve oda bazlı filtreleme özelliklerini içerir. Eğitim amaçlı bir UI çalışmasıdır ve herhangi bir API, veritabanı veya IoT entegrasyonu bulunmaz.

## Şu Ana Kadar Çalıştığım Konular

- Flutter proje yapısı
- Scaffold
- AppBar
- Text ve temel text stilleri
- SizedBox
- Container
- Padding
- Card
- Button yapıları
- Color ve temel tema kullanımı
- Row & Column
- StatelessWidget
- Custom Widget oluşturma
- Image kullanımı
- Stack
- ListTile
- Indicator yapıları
- Basit ortak/reusable widget yapıları
- StatefulWidget ve state yönetiminin temelleri
- Widget lifecycle
- Navigation ve sayfalar arası geçişler
- ListView ve dinamik liste yapıları

## İlerleyen Aşamalarda

Eğitim serisi ilerledikçe Flutter'ın daha kapsamlı konuları üzerinde çalışmayı hedefliyorum. Bunlar arasında:

- Formlar ve kullanıcı girdileri
- Future, async ve await
- JSON ve veri modelleme
- REST API kullanımı
- Local Storage
- Uygulama mimarisi
- State Management yaklaşımları
- Provider benzeri state management çözümleri
- Tema ve uygulama genelinde stil yönetimi
- Responsive UI geliştirme
- Animasyonlar
- Hata yönetimi
- Daha kapsamlı demo uygulamalar

## Proje Yapısı

```text
lib/
├── 101/       # Flutter temelleri ve konu bazlı çalışmalar
├── 202/       # İleri aşamalardaki çalışmalar, ilerleyen süreçlerde 303 eklenecektir
├── core/      # Ortak yardımcı yapılar ve yeniden kullanılabilir bileşenler
├── demos/     # Öğrenilen konularla hazırlanan küçük demo uygulamalar
└── main.dart
