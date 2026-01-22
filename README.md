# 🌈 Dynamic Color Switching
Effortlessly switch your Flutter app theme at runtime — including fully custom colors and AppBar styling — using a simple controller. No state-management packages required.

---

## ✨ Features
- 🔄 Switch between Light, Dark, and Custom themes at runtime   
- 🎨 Generate theme dynamically from any color (Material 3 ColorScheme.fromSeed)   
- 🧭 Separate control for AppBar color   
- 🧩 Trigger theme change from any widget (button, icon, container, gesture, etc.)   
- ⚡ Smooth UI rebuild using AnimatedBuilder   
- 🧼 No Provider / Bloc / Riverpod required   
- 📦 Clean, library-ready architecture

---

## 📸 Preview
![dynamic color switching](https://github.com/user-attachments/assets/5a5fb729-0eb1-4ba5-9907-dfbecb8849b8)


---

## 📦 Installation
### Add this to your pubspec.yaml:
```yaml
dependencies:
  flutter_dynamic_color_switching:
    path: '.../flutter_dynamic_color_switching/flutter_dynamic_color_switching'
```

### From GitHub
```yaml
dependencies:
  flutter_dynamic_color_switching:
    git:
      url: https://github.com/yourusername/flutter_dynamic_color_switching.git
```

---

## 🚀 Quick Start
### 1️⃣ Import package
```dart
import 'package:flutter_dynamic_color_switching/flutter_dynamic_color_switching.dart';
```

##

### 2️⃣ Initialize Controller
```dart
final DynamicThemeController controller = DynamicThemeController();
```

## 

### 3️⃣ Wrap your `MaterialApp` with `DynamicThemeBuilder`
```dart
DynamicThemeBuilder(
  controller: controller,
  builder: (context, theme) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(controller: controller),
    );
  },
);
```

##

### 4️⃣ Change Theme from ANY widget
**🌞 Light Theme**
```dart
controller.setLightTheme();
```

**🌙 Dark Theme**
```dart
controller.setDarkTheme();
```

**🎨 Custom Theme with AppBar color**
```dart
controller.setCustomTheme(
  primaryColor: Colors.red,
  appBarColor: Colors.black,
);
```

You can call this from:
- ElevatedButton
- IconButton
- GestureDetector
- InkWell
- Custom widgets

---

## 🧠 How It Works
- Uses `ColorScheme.fromSeed`  for Material 3 dynamic colors
- `ChangeNotifier` + `AnimatedBuilder` for rebuild
- Fully UI-independent controller logic
- Designed to be easily extendable for future features (persistence, animations, etc.)

---

## 📁 Package Structure
```text
lib/
 ├── flutter_dynamic_color_switching.dart
 └── src/
     ├── builder/
     ├── controller/
     └── theme/
```

---

## 📄 License
```text
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
