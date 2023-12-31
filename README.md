# <p align="center"><b>Glassmorphic LogIn / SignUp</b></p>


#### <p align="center"> A mini swiftUI project showcasing a sleek and interactive login/signup view with a glassmorphic design.
</p>

<br>

## **Features**
- <kbd style="background-color: #f0f0f0">Dynamic UI:</kbd> A modern, glassmorphic UI design providing an elegant user experience.
- <kbd style="background-color: #f0f0f0">Sign Up and Log In:</kbd> Easily switch between sign-up and log-in modes.
- <kbd style="background-color: #f0f0f0">Secure Entry:</kbd> Password field for secure data entry.
- <kbd style="background-color: #f0f0f0">Social Logins:</kbd> Options to sign in with Gmail and Apple.
- <kbd style="background-color: #f0f0f0">Colorful Gradients:</kbd> Utilizes linear gradients for vibrant color combinations.
- <kbd style="background-color: #f0f0f0">Dynamic Shapes:</kbd> Incorporates dynamic shapes to enhance the visual appeal.

<br>

### **Videos and Demos**

| Custom TextFields | Log In Toggle |
|:---------------:|:----------------:|
|<img width="400" src="https://github.com/ZelynaFarrell/GlassmorphismLogin/assets/117409535/8efe4fbc-3326-405a-91a4-55c096ee73f9">|<img width="400" src="https://github.com/ZelynaFarrell/GlassmorphismLogin/assets/117409535/3079a7fc-649a-4466-ae54-016e943b38ad">|


<br>

## **Getting Started**

### **Prerequisites**
- Xcode (with SwiftUI support)
- iOS Simulator or a physical iOS device

<br>

### **Installation**
- Clone or download the project.
- Open the project in Xcode.
- Build and run the project on the desired simulator or device.

<br>

## **Code Overview**
**ContentView**
- Defines the main login/signup view.
- Handles email and password input.
- Allows users to switch between sign-up and log-in modes.

**CustomTextField**
- Custom view for stylized text input.
- Takes a placeholder and binds text input.

**CustomSecureTextField**
- Custom view for secure text input (password).
- Takes a placeholder and binds text input.
- Toggles text visibility.

**GlassBlurView**
- Creates a glassmorphic effect view.
- Optional: Can remove all filters for customization.

**GlassBlurViewHelper**
- Custom UIVisualEffectView for the glassmorphic effect.
- Initializes with specific blur style.
- Handles trait collection changes.

<br>

#### **Libraries Used**
This project uses SwiftUI, Apple's declarative framework for building user interfaces, and does not rely on any external libraries or dependencies.
