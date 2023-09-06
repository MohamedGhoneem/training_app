# GENERATE APP LAUNCHER ICON
flutter pub run flutter_launcher_icons:main -f whatsapp_icon.yaml
flutter pub run flutter_launcher_icons:main -f instagram_icon.yaml
flutter pub run flutter_launcher_icons:main -f prod_icon.yaml
flutter pub run flutter_launcher_icons:main -f main_icon.yaml
#This command is deprecated and replaced with "flutter pub run flutter_launcher_icons"

# Run commands
flutter run -t lib/main_dev.dart --flavor dev           #DEBUG MODE
flutter run --profile -t lib/main_dev.dart --flavor dev #PROFILE MODE
flutter run --release -t lib/main_dev.dart --flavor dev #RELAESE MODE

# Build APK commands
flutter build apk --debug -t lib/main_dev.dart --flavor dev   #DEBUG MODE BUILD APK
flutter build apk --profile -t lib/main_dev.dart --flavor dev #PROFILE MODE BUILD APK
flutter build apk --release -t lib/main_dev.dart --flavor dev #RELAESE MODE BUILD APK

# Build APPBUNDLE commands
flutter build appbundle --debug -t lib/main_dev.dart --flavor dev   #DEBUG MODE BUILD APPBUNDLE
flutter build appbundle --profile -t lib/main_dev.dart --flavor dev #PROFILE MODE BUILD APPBUNDLE
flutter build appbundle --release -t lib/main_dev.dart --flavor dev #RELAESE MODE BUILD APPBUNDLE
