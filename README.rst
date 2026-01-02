#######################################################
Android Applications for Mill Digitalization
#######################################################

This repository contains mobile application projects specifically developed for the **Digitalization of Mill Operations**. These applications are designed to bridge the gap between industrial shop-floor activities and digital management, enabling real-time monitoring and paperless data recording.

*******************
Key Features
*******************

- **Operational Reporting:** Digital forms for mill workers to log daily production, maintenance, and inspection data.
- **Real-time Monitoring:** Integration with IoT devices to view mill machinery status directly from mobile devices.
- **Asset Management:** QR Code/Barcode scanning functionality for tracking equipment and spare parts within the mill.
- **Data Synchronization:** Offline-first capabilities with automated cloud synchronization when network access is available.

**************************
Technical Specifications
**************************

- **Language:** Java / Kotlin
- **Development Tool:** Android Studio
- **Architecture:** MVVM (Model-View-ViewModel) / MVP
- **Connectivity:** REST API, MQTT, or Firebase Realtime Database
- **Minimum SDK:** Android 5.0 (Lollipop) or higher

*******************
Installation Guide
*******************

1. **Clone the Project**
   .. code-block:: bash

      git clone https://github.com/afafirmansyah/android-applications.git

2. **Open in Android Studio**
   - Launch **Android Studio**.
   - Select "Open an Existing Project" and navigate to the project folder.

3. **Configure API/Backend**
   - Locate the configuration file (e.g., ``Constants.java`` or ``gradle.properties``).
   - Update the ``BASE_URL`` to point to your mill's local server or cloud API.

4. **Build and Run**
   - Connect your Android device via USB (with Debug Mode enabled).
   - Click the **Run** button to install the APK on your device.



*******
License
*******

This project is licensed under the MIT License - see the `license.txt` file for details.

*********
Contact
*********

**Ahmad Fauzi Firmansyah**
- **GitHub:** `afafirmansyah <https://github.com/afafirmansyah>`_
- **LinkedIn:** `ahmad-fauzi-firmansyah <https://linkedin.com/in/ahmad-fauzi-firmansyah/>`_
