# 🌟 Personal Portfolio Website

A modern, responsive portfolio website built with Flutter, showcasing professional experience, skills, projects, and contact information. This cross-platform application works seamlessly on Web, Android, and iOS.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

## 👨‍💻 About

This portfolio website belongs to **Kamran Hashmi**, a passionate Flutter Developer specializing in building cross-platform mobile and web applications. The website features a clean, modern design with smooth animations and responsive layouts.

## ✨ Features

- 📱 **Fully Responsive** - Works perfectly on desktop, tablet, and mobile devices
- 🎨 **Modern UI/UX** - Clean and professional design with smooth animations
- ⚡ **Fast Performance** - Optimized for quick loading and smooth interactions
- 🌐 **Cross-Platform** - Built with Flutter for Web, Android, and iOS
- 📊 **Dynamic Content** - Easy to update personal information, projects, and experience
- 🔗 **Social Integration** - Direct links to GitHub, LinkedIn, Facebook, Instagram, and Twitter
- 📧 **Contact Section** - Easy ways to get in touch
- 💫 **Animated Text** - Eye-catching text animations using animated_text_kit
- 📜 **Smooth Scrolling** - Scrollable positioned navigation with smooth transitions

## 📋 Pages/Sections

1. **Home** - Welcome section with animated text showcasing different roles
2. **About** - Personal information and career summary
3. **Skills** - Technical skills organized by category (Mobile Development, State Management, Backend & APIs, etc.)
4. **Projects** - Showcase of relevant projects with descriptions and GitHub links
5. **Experience** - Professional work experience timeline
6. **Contact** - Contact information and social media links

## 🛠️ Technologies & Packages

### Core

- **Flutter SDK** (>=2.18.2 <3.0.0)
- **Dart**

### Dependencies

- **google_fonts** (^4.0.3) - Beautiful custom fonts
- **animated_text_kit** (^4.2.2) - Animated text effects
- **animate_do** (^3.0.2) - Smooth animations
- **scrollable_positioned_list** (^0.3.5) - Advanced scrolling functionality
- **url_launcher** (^6.1.10) - Launch URLs for social media and email links
- **cupertino_icons** (^1.0.2) - iOS-style icons

### Dev Dependencies

- **flutter_lints** (^2.0.0) - Recommended lints for Flutter projects

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

- Flutter SDK (>=2.18.2)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Chrome (for web development)

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/K-hashmi9065/personal-portfolio-website.git
   cd personal-portfolio-website-master
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**

   For Web:

   ```bash
   flutter run -d chrome
   ```

   For Android:

   ```bash
   flutter run -d android
   ```

   For iOS:

   ```bash
   flutter run -d ios
   ```

4. **Build for production**

   Web:

   ```bash
   flutter build web
   ```

   Android:

   ```bash
   flutter build apk --release
   ```

   iOS:

   ```bash
   flutter build ios --release
   ```

## 📁 Project Structure

```
lib/
├── globals/
│   ├── app_assets.dart       # Image and asset paths
│   ├── app_colors.dart       # Color scheme
│   ├── app_info.dart         # Personal information, projects, experience
│   ├── app_text_styles.dart  # Text styles
│   └── constants.dart        # App constants
├── views/
│   ├── main_dashboard.dart   # Main navigation and routing
│   ├── home_page.dart        # Home section
│   ├── about_me.dart         # About section
│   ├── skills_page.dart      # Skills section
│   ├── my_portfolio.dart     # Projects section
│   ├── work_experience.dart  # Experience section
│   ├── contact_us.dart       # Contact section
│   └── footer_class.dart     # Footer component
├── widgets/
│   └── profile_animation.dart # Animated profile image
└── main.dart                 # App entry point
```

## 🎨 Customization

### Update Personal Information

Edit `lib/globals/app_info.dart` to customize:

- Personal details (name, email, phone, location)
- Career summary
- Social media links
- Work experience
- Projects
- Skills
- Education

### Change Images

Replace images in `assets/images/` directory:

- `pro11.png` - Profile image 1 (Home page)
- `pro12.png` - Profile image 2 (About page)
- Social media icons (face.png, git.png, in.png, insta.png, twit.png)
- Skill icons (coding.png, brush-stroke.png, analytics.png)
- Project images (work1.jpg, work2.jpg)

Update image paths in `lib/globals/app_assets.dart` if needed.

### Modify Colors

Edit `lib/globals/app_colors.dart` to change the color scheme.

### Adjust Styles

Customize text styles in `lib/globals/app_text_styles.dart`.

## 📱 Responsive Design

The application uses responsive design principles:

- Desktop view (>768px): Full navigation bar with all menu items visible
- Tablet/Mobile view (<768px): Hamburger menu with popup navigation

## 🔗 Connect

- **Portfolio**: [Visit Site](#)
- **GitHub**: [K-hashmi9065](https://github.com/K-hashmi9065)
- **LinkedIn**: [k-hashmi9065](https://linkedin.com/in/k-hashmi9065)
- **Email**: kamranhashmi9065@gmail.com
- **Phone**: +919065433382

## 📄 License

This project is open source and available for personal and educational use.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Google Fonts for beautiful typography
- All the open-source package contributors

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

---

**Made with ❤️ using Flutter**

_Last Updated: February 2026_
