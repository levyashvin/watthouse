# WattHouse

*Empowering EV owners with a community-driven charging solution.*

---

## Overview

WattHouse is a mobile application designed to address the growing challenge of limited EV charging infrastructure. By enabling homeowners to share their EV chargers with others, WattHouse creates a decentralized, community-driven network of charging locations. This solution aims to reduce range anxiety, foster EV adoption, and promote environmental sustainability.

---

## Features

- **User Authentication**  
  Secure phone number-based login using Firebase Authentication.  

- **Real-Time Map Integration**  
  - Displays nearby EV charging spots registered by other users.  
  - Interactive markers with location details, availability, and optional pricing.  

- **Charging Spot Registration**  
  - Users can register their home EV chargers.
  - Includes address entry, availability settings, and optional pricing.

- **Community Reviews and Ratings**  
  - Users can rate and review charging locations to maintain trust and reliability.

- **Push Notifications** *(Optional)*  
  - Notify users of nearby charging spot availability or reservation updates.

---

## Tech Stack

### **Frontend**

- **Flutter**: Cross-platform UI framework for Android and iOS.
- **Dart**: Programming language used with Flutter.

### **Backend**

- **Firebase Authentication**: Secure user login via phone numbers.
- **Firebase Firestore**: Cloud-hosted NoSQL database for storing user profiles, charging spot data, and reviews.
- **Firebase Crashlytics**: Real-time crash monitoring and debugging.

### **APIs**

- **Google Maps API**: Real-time map rendering and navigation.  
- **Google Places API** *(Optional)*: Provides auto-suggestions for precise address entry.

---

## Setup Instructions

### Prerequisites

- Install [Flutter](https://flutter.dev/docs/get-started/install) on your local machine.
- Create a Firebase project ([Firebase setup guide](https://firebase.google.com/docs/flutter/setup)).
- Generate a Google Maps API key ([Google Maps API guide](https://developers.google.com/maps/gmp-get-started)).

### Steps to Run the App

1. **Clone the Repository**  
   Clone the repository to your local machine:
   ```bash
   git clone [https://github.com/levyashvin/watthouse.git](https://github.com/levyashvin/watthouse.git)
   cd watthouse
   ```

2. **Install Dependencies**

Run the following command to install all required dependencies:

```bash
flutter pub get
```

3. **Set Up Firebase**

- Go to the Firebase Console and create a new project.
- Add an Android app to the project:
    - Register the app with your app's package name (e.g., com.example.watthouse).
    - Download the google-services.json file and place it in the android/app/ directory.
- Add an iOS app to the project:
    - Register the app with your app's bundle ID.
    - Download the GoogleService-Info.plist file and place it in the ios/Runner/ directory.
- Add Firebase Authentication and Firestore to your project in the Firebase Console.

4. **Configure Google Maps API Key**

**For Android:**

Add the following line to android/app/src/main/AndroidManifest.xml inside the `<application>` tag:

```xml
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY_HERE" />
```

Replace `YOUR_API_KEY_HERE` with your Google Maps API key.

**For iOS:**

Open ios/Runner/AppDelegate.swift and add the following line inside the `didFinishLaunchingWithOptions` method:

```swift
GMSServices.provideAPIKey("YOUR_API_KEY_HERE")
```

Replace `YOUR_API_KEY_HERE` with your Google Maps API key.

**Add Permissions**

- Add permissions to android/app/src/main/AndroidManifest.xml:

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

- Add permissions to ios/Runner/Info.plist:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>Your location is used to find nearby EV charging spots.</string>
```

5. **Run the App**

Use the following command to run the app on a connected device or emulator:

```bash
flutter run
```

**Remember to replace `your-username` with your actual GitHub username.** 

**Also, ensure you have the necessary API keys and configurations set up in your Firebase project and Google Cloud Platform.**
