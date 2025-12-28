<p align="center">
  <img src="assets/readme/cover.png" alt="Islami App Preview" width="700"/>
</p>

# Islami App 🕌
Islamic mobile application built with Flutter.

Islami App is a comprehensive Islamic application that provides Quran reading, Hadith browsing, Sebha (Tasbeeh), Radio streaming, and Prayer-related features with a clean and user-friendly UI.

---

## 🚀 Features
- Quran Reading with Surah Details
- Hadith Collection & Details
- Sebha (Tasbeeh Counter)
- Islamic Radio Streaming
- Intro & Splash Screens
- Most Recently Accessed Content
- Persistent Local Storage
- Clean & Simple UI
- Responsive UI (Android & iOS)

---

## 🛠️ Tech Stack
- Flutter & Dart
- Shared Preferences
- Provider (State Management)
- Clean UI Architecture
- Local Data Handling
- Custom UI Components

---

## 📱 App Screenshots

<p align="center">
  <img src="assets/readme/Intro Screen.png" width="200"/>
  <img src="assets/readme/Home Screen.png" width="200"/>
  <img src="assets/readme/Hadeth Screen.png" width="200"/>
</p>

<p align="center">
  <img src="assets/readme/Hadeeth Details Screen.png" width="200"/>
  <img src="assets/readme/Sebha Screen.png" width="200"/>
  <img src="assets/readme/Soura Details Screen.png" width="200"/>
</p>

---

## 📦 Project Structure
```text
lib/
 ├── ui/
 │    ├── chapter_details/
 │    │    ├── ChapterDetails.dart
 │    │    └── verse_item.dart
 │    │
 │    ├── common/
 │    │    ├── AppScreenWrapper.dart
 │    │    ├── MostRecentSharedPreferences.dart
 │    │    └── MyStack.dart
 │    │
 │    ├── home/
 │    │    ├── hadeth/
 │    │    ├── prayer/
 │    │    ├── quran/
 │    │    │    ├── chapter_row.dart
 │    │    │    ├── MostRecentSlider.dart
 │    │    │    └── QuranContent.dart
 │    │    │
 │    │    ├── radio/
 │    │    │    └── RadioContent.dart
 │    │    │
 │    │    ├── sebha/
 │    │    │    └── SebhaContent.dart
 │    │    │
 │    │    └── HomeScreen.dart
 │    │
 │    ├── providers/
 │    │    ├── Chapter.dart
 │    │    ├── design.dart
 │    │    └── intro.dart
 │    │
 │    ├── routes.dart
 │    ├── intro_screen.dart
 │    ├── splash_screen.dart
 │    └── main.dart


👨‍💻 Author

Abdelrahman Ghanima
Flutter Mobile Application Developer

⭐ Show Your Support

If you like this project, give it a ⭐ on GitHub!
