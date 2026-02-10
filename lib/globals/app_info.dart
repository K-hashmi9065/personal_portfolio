class AppInfo {
  // Personal Information
  static const String name = 'Kamran Hashmi';
  static const String title = 'Flutter Developer';
  static const String phone = '+919065433382';
  static const String email = 'kamranhashmi9065@gmail.com';
  static const String location = 'Delhi-110025';
  static const String portfolioUrl = 'Visit My Portfolio';

  // Career Summary
  static const String careerSummary =
      'Results-driven flutter developer with experience building cross-platform mobile and web '
      'applications using Flutter and Dart. Skilled in developing responsive, high-performance UIs, integrating '
      'RESTful APIs, and following clean architecture principles. Proficient in writing clean, maintainable code '
      'and delivering smooth user experiences on Android, iOS, and Web platforms. Eager to apply newly '
      'learned skills in real-world projects while continuously improving Flutter development best practices.';

  // Social Media Links
  static const String githubUrl =
      'https://github.com/K-hashmi9065/K-hashmi9065';
  static const String facebookUrl = 'https://www.facebook.com/k.hashmi.9065';
  static const String instagramUrl = 'https://www.instagram.com/k.hashmi.9065/';
  static const String linkedinUrl = 'https://linkedin.com/in/k-hashmi9065';
  static const String twitterUrl = 'https://x.com/MdKamranHa96834';

  // Professional Titles
  static const List<String> titles = [
    'Flutter Developer',
    'Mobile App Developer',
    'Web App Developer',
    'Software Engineer',
  ];

  // Work Experience
  static const List<Map<String, dynamic>> workExperience = [
    {
      'company': 'Sanjhee Granth and Shahri Vikash Samiti',
      'position': 'Flutter Dev Intern',
      'duration': 'Aug 2025 - Jan 2026',
      'responsibilities': [
        'Developed Flutter applications using Dart, following Clean Architecture principles.',
        'Created reusable widgets and responsive UI layouts for multiple screen sizes.',
        'Integrated RESTful APIs, managed network responses and errors efficiently.',
        'Applied state management solutions (BLoC, Riverpod, Provider) to maintain predictable app state.',
        'Collaborated with team members to enhance application features, UI/UX, and functionality.',
        'Tested and debugged Flutter applications to resolve issues and improve overall app stability.',
      ],
    },
    {
      'company': 'Unihox Technology',
      'position': 'Flutter Developer Intern',
      'duration': 'April 2025 - July 2025',
      'responsibilities': [
        'Developed cross-platform Flutter applications using Dart, focusing on scalable architecture.',
        'Designed modular and reusable UI components to ensure consistency and responsiveness.',
        'Managed application state using BLoC, Riverpod, and Provider to enhance performance and reliability.',
        'Integrated REST APIs with proper error handling, validation and logging to ensure reliable communication.',
        'Collaborated with designers and developers to optimize UI/UX and deliver features on time.',
      ],
    },
  ];

  // Relevant Projects
  static const List<Map<String, dynamic>> projects = [
    {
      'name': 'Money Savings App 💰',
      'description':
          'Developed a cross-platform Flutter saving money app using Dart, following scalable architecture principles.',
      'features': [
        'Implemented Clean Architecture to improve maintainability and future feature expansion.',
      ],
      'githubUrl': 'https://github.com/K-hashmi9065/money-savings-app',
    },
    {
      'name': 'AI Chatbot App 🤖',
      'description':
          'Developed a Flutter-based AI chatbot app enabling real-time conversational interactions.',
      'features': [
        'Integrated AI APIs with a structured architecture to support scalability and future growth.',
      ],
      'githubUrl': 'https://github.com/K-hashmi9065/ai-chatbot-app',
    },
    {
      'name': 'Real Time Chat App 💬',
      'description':
          'Built a cross-platform real-time chat app in Flutter and Dart, enabling instant messaging with a clean and smooth UI.',
      'features': [
        'Implemented clean code structure for easy maintenance and future enhancements.',
      ],
      'githubUrl': 'https://github.com/K-hashmi9065/real-time-chat-app',
    },
  ];

  // Skills
  static const Map<String, List<String>> skills = {
    'Mobile App Development': ['Flutter, Dart, React.js (Basics)'],
    'State Management': ['Riverpod, BLoC, Provider'],
    'Backend & APIs': ['Firebase, RESTful APIs, Dio, HTTP, Node.js'],
    'Architecture & Patterns': ['Clean Architecture, MVC'],
    'Databases': ['Firebase, Supabase, MySQL, MongoDB'],
    'Version Control & Tools': ['Git, GitHub, Postman'],
  };

  // Education
  static const Map<String, String> education = {
    'duration': '2021 - 2025 | INDO GLOBAL COLLEGE, PTU',
    'degree': 'Bachelor of Computer Science Engineering',
  };
}
