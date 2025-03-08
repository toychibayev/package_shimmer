# Shimmer Loading Placeholder

Shimmer Loading Placeholder is a Flutter package that provides a visually appealing shimmer effect for loading states. Instead of displaying empty spaces or spinners, it enhances the user experience by showing placeholders with an animated shimmer effect.

## 📌 Features

✅ Shimmer effect for loading placeholders  
✅ Compatible with any widget  
✅ Customizable shimmer colors  
✅ Adjustable animation speed  
✅ Works seamlessly with ListView and GridView  
✅ Supports rounded corners  
✅ Configurable shimmer direction (left-to-right or right-to-left)  

## 📦 Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  shimmer_loading_placeholder: latest_version
```

## 🚀 Usage

### 1️⃣ Basic ShimmerContainer

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

### 2️⃣ Using with ListView

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

### 3️⃣ Customizing shimmer colors

```dart
ShimmerContainer(
  baseColor: Colors.grey[300]!,
  highlightColor: Colors.grey[100]!,
  child: Container(height: 100, width: 200, color: Colors.grey),
)
```

### 4️⃣ Using with GridView

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

## 🛠 Configuration

| Parameter        | Type           | Description |
|-----------------|---------------|-------------|
| `child`         | `Widget`       | The widget inside the shimmer container |
| `baseColor`     | `Color`        | The base background color |
| `highlightColor` | `Color`       | The shimmer highlight color |
| `duration`      | `Duration`     | Animation duration |
| `borderRadius`  | `BorderRadius` | Corner radius customization |

## 🧪 Testing

To run tests, use the following command:

```sh
flutter test
```

## 📜 License

This project is licensed under the MIT License.

---

If you encounter any issues or have feature suggestions, feel free to open an issue on [GitHub](https://github.com/toychibayev/package_shimmer). 🚀

