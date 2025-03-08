# Shimmer Loading Placeholder

Shimmer Loading Placeholder - bu Flutter uchun yuklanish jarayonida vizual jozibali effekt yaratish uchun ishlatiladigan package. Bu paket yuklanayotgan ma'lumotlarning shaklini ko'rsatish orqali foydalanuvchilar uchun yanada yaxshiroq tajriba yaratadi.

## 📌 Xususiyatlar

✅ Shimmer effektli yuklanish joy tutgichi (placeholder)
✅ Istalgan widgetga qo‘llash mumkin
✅ Shimmer ranglarini sozlash imkoniyati
✅ Animatsiya tezligini boshqarish
✅ ListView va GridView bilan mos ishlash
✅ Burchaklarni yumaloqlash
✅ Shimmer yo‘nalishini o‘zgartirish (chapdan o‘ngga yoki teskari)

## 📦 O‘rnatish

```yaml
dependencies:
  shimmer_loading_placeholder: latest_version
```

## 🚀 Ishlatish

### 1️⃣ Oddiy ShimmerContainer

```dart
import 'package:flutter/material.dart';
import 'package:shimmer_loading_placeholder/shimmer_loading_placeholder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Shimmer Example')),
        body: Center(
          child: ShimmerContainer(
            child: Container(height: 100, width: 200, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
```

### 2️⃣ ListView bilan ishlatish

```dart
ListView.builder(
  itemCount: 5,
  itemBuilder: (_, index) => const Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: ShimmerContainer(
      child: ListTile(
        leading: CircleAvatar(radius: 30),
        title: SizedBox(height: 10, width: 100, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white))),
      ),
    ),
  ),
)
```

### 3️⃣ Shimmer effektining ranglarini o‘zgartirish

```dart
ShimmerContainer(
  baseColor: Colors.grey[300]!,
  highlightColor: Colors.grey[100]!,
  child: Container(height: 100, width: 200, color: Colors.grey),
)
```

### 4️⃣ GridView bilan ishlatish

```dart
GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  itemCount: 6,
  itemBuilder: (_, index) => const Padding(
    padding: EdgeInsets.all(8.0),
    child: ShimmerContainer(
      child: SizedBox(height: 100, width: 100, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white))),
    ),
  ),
)
```

## 🛠 Sozlamalar
| Parametr | Turi | Tavsif |
|----------|------|--------|
| `child` | `Widget` | Ichidagi widget |
| `baseColor` | `Color` | Asosiy fon rangi |
| `highlightColor` | `Color` | Shimmer yaltirash rangi |
| `duration` | `Duration` | Animatsiya davomiyligi |
| `borderRadius` | `BorderRadius` | Burchaklarni yumaloqlash |

## 🧪 Testlar
Paketni test qilish uchun:
```sh
flutter test
```

## 📜 Litsenziya
Bu loyiha MIT litsenziyasi asosida tarqatiladi.

---

Paketni ishlatishda muammo yuzaga kelsa yoki yangi takliflaringiz bo‘lsa, [GitHub Issues](https://github.com/toychibayev/package_shimmer) bo‘limiga murojaat qiling. 🚀

