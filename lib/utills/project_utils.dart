class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iOSLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iOSLink,
    this.webLink,
  });
}

// Hobby Projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/burp.png',
    title: 'BurpSuite',
    subtitle: 'Intercepted, modified, and analyzed HTTP/S traffic to test web application security.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/domain.png',
    title: 'Domain Policy',
    subtitle: 'Designed and implemented custom domain user policies for secure authentication and role-based access.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/fake.png',
    title: 'Evil Twin WIFI',
    subtitle: 'Simulated rogue access points to demonstrate and educate on Wi-Fi network vulnerabilities.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/to-do.jpg',
    title: 'To-Do List App',
    subtitle: 'Built app supporting task creation, updates and deletions with persistent storage.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/weather.jpg',
    title: 'Weather App',
    subtitle: 'Integrated OpenWeatherMap API to display real-time weather info with location-based data.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/qrscanner.png',
    title: 'QR Code Scanner & Generator',
    subtitle: 'Developed an app to scan QR codes and generate custom codes with responsive UI.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  // ProjectUtils(
  //   image: 'assets/projects/portfolio.png',
  //   title: 'Personal Portfolio App',
  //   subtitle: 'Created a responsive portfolio app showcasing skills, resume, and technical projects.',
  //   androidLink: null,
  //   iOSLink: null,
  //   webLink: null,
  // ),
];

// Work Projects
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/nessus.png',
    title: 'Nessus Vulnerability Scanning',
    subtitle: 'Conducted vulnerability scans on enterprise systems and documented critical exposures.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  // ProjectUtils(
  //   image: 'assets/projects/phishing.png',
  //   title: 'Phishing Awareness Campaign',
  //   subtitle: 'Used BlackEye to simulate phishing attacks and measure employee response and awareness.',
  //   androidLink: null,
  //   iOSLink: null,
  //   webLink: null,
  // ),
  ProjectUtils(
    image: 'assets/projects/wireshark.png',
    title: 'Wireshark Network Analysis',
    subtitle: 'Captured and analyzed packet-level data to diagnose security issues and traffic anomalies.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/user.png',
    title: 'Active Directory Management',
    subtitle: 'Configured group policies and user roles to maintain organizational access control.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/evil.png',
    title: 'Evil Twin Attack Simulation',
    subtitle: 'Set up rogue access points to identify and demonstrate unsecured wireless vulnerabilities.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/damp.png',
    title: 'Web App Penetration Testing',
    subtitle: 'Used DVWA, Burp Suite and OWASP ZAP to discover and exploit common web app flaws.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/marlin.png',
    title: 'Marlinspike Exploitation',
    subtitle: 'Exploited Marlinspike to simulate real-world threats and demonstrate exploit techniques.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
  ProjectUtils(
    image: 'assets/projects/ridge.png',
    title: 'Ridgeways Baptist Church Website',
    subtitle: 'Created a fully dynamic website with backend integration, enabling real-time content management for the church.',
    androidLink: 'https://www.ridgewaysbaptistchurch.org/',
    iOSLink: 'https://www.ridgewaysbaptistchurch.org/',
    webLink: 'https://www.ridgewaysbaptistchurch.org/',
  ),
  ProjectUtils(
    image: 'assets/projects/crg.png',
    title: 'Cranford Resource Group Website',
    subtitle: 'Developed a responsive and dynamic website tailored for a community-focused resource group with content automation.',
    androidLink: 'https://crg-africa.com/',
    iOSLink: 'https://crg-africa.com/',
    webLink: 'https://crg-africa.com/',
  ),
  ProjectUtils(
    image: 'assets/projects/namer.png',
    title: 'English Wordlist App',
    subtitle: 'Built a mobile app that helps users expand their English vocabulary with definitions, search and bookmarking features.',
    androidLink: 'https://github.com/GALACHADRELL',
    iOSLink: 'https://github.com/GALACHADRELL',
    webLink: 'https://github.com/GALACHADRELL',
  ),
];
