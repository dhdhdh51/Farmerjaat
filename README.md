# Kisan Ledger (Android, Java + XML)

Offline-first farming ledger for Indian farmers.

## Stack
- Java + XML
- Room + MVVM
- WorkManager reminders
- MPAndroidChart, Glide, Gson, Lottie, OSMdroid
- Material 3 UI

## Modules Included
- Splash + onboarding scaffold
- Dashboard with quick cards
- Field management scaffold
- Expense tracker scaffold
- Fertilizer and watering scheduler scaffold
- Tractor/ploughing, crop timeline, diary, reports, settings, backup/restore entry screens
- Room DB entities/DAO/database/repository/viewmodel setup
- Reminder notifications using WorkManager
- Hindi + English strings scaffold
- GitHub Action for debug APK build

## Build
```bash
./gradlew assembleDebug
```

## Notes
This repository is intentionally lightweight and fully local-storage focused with no login, ads, or cloud dependency.
