# Flipkart Clone App (MVP)

Zero budget e-commerce app inspired by Flipkart.

Built with **Flutter + Firebase**.

## Features (MVP)
- Phone / Email Login
- Product Listing & Search
- Product Details
- Cart
- Place Order
- Basic Order Tracking

## Setup Instructions

1. Clone the repo
```bash
git clone https://github.com/sknuralam134-svg/flipkart-clone-app.git
cd flipkart-clone-app
```

2. Install dependencies
```bash
flutter pub get
```

3. Setup Firebase
- Create a Firebase project
- Add Android & iOS apps
- Download `google-services.json` and `GoogleService-Info.plist`
- Place them in the correct folders
- Enable Authentication (Phone + Email)
- Enable Firestore Database

4. Run the app
```bash
flutter run
```

## Project Structure
```
lib/
  main.dart
  models/
  screens/
  services/
  widgets/
```

## Next Steps
- Add real products in Firestore
- Integrate Razorpay for payments
- Add seller panel later

Made with ❤️ for learning.
