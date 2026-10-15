import 'package:flutter/material.dart';

class InformationData {
  final IconData icon;
  final String title;
  final String description;
  final String introduction;
  final List<String> whatYouWillLearn;
  final String requirements;
  final List<String> benefits;

  const InformationData({
    required this.icon,
    required this.title,
    required this.description,
    required this.introduction,
    required this.whatYouWillLearn,
    required this.requirements,
    required this.benefits,
  });
}

final List<InformationData> informationList = [
  InformationData(
    icon: Icons.school,
    title: 'Flutter Course',
    description:
    'Learn Flutter from basic to advanced level.',
    introduction:
    'Flutter is a UI toolkit developed by Google for building '
        'beautiful applications for Android, iOS, web and desktop '
        'using a single codebase.',
    whatYouWillLearn: [
      'Dart programming basics',
      'Flutter widgets',
      'Stateless and Stateful widgets',
      'Layouts and UI design',
      'Navigation between screens',
      'Forms and validation',
      'API integration',
      'State management',
      'Building and releasing applications',
    ],
    requirements:
    'Basic programming knowledge is helpful, but beginners '
        'can also start learning Flutter.',
    benefits: [
      'Build applications for multiple platforms',
      'Fast application development',
      'Hot reload',
      'Modern user interfaces',
      'Good career opportunities',
    ],
  ),

  InformationData(
    icon: Icons.book,
    title: 'Programming Resources',
    description:
    'Useful programming learning resources for students.',
    introduction:
    'Programming resources help students improve coding skills '
        'and understand software development concepts.',
    whatYouWillLearn: [
      'Programming fundamentals',
      'Data structures and algorithms',
      'Object-oriented programming',
      'Database concepts',
      'Web development',
      'Mobile development',
      'Problem solving',
    ],
    requirements:
    'A computer and basic interest in programming are enough '
        'to start learning.',
    benefits: [
      'Improve coding skills',
      'Prepare for technical interviews',
      'Build academic projects',
      'Develop problem-solving abilities',
    ],
  ),

  InformationData(
    icon: Icons.computer,
    title: 'Online Learning',
    description:
    'Explore useful online learning resources and courses.',
    introduction:
    'Online learning allows students to study different '
        'subjects through digital courses, tutorials and educational '
        'resources.',
    whatYouWillLearn: [
      'Choose suitable courses',
      'Learn at your own pace',
      'Practice online exercises',
      'Use digital resources',
      'Track learning progress',
    ],
    requirements:
    'An internet connection and a mobile phone, tablet or '
        'computer are required.',
    benefits: [
      'Flexible learning',
      'Learn from anywhere',
      'Access many subjects',
      'Improve professional skills',
    ],
  ),

  InformationData(
    icon: Icons.work,
    title: 'Software Developer Jobs',
    description:
    'Explore software development job opportunities.',
    introduction:
    'Software developers design, develop, test and maintain '
        'software applications used by individuals and organizations.',
    whatYouWillLearn: [
      'Software development',
      'Programming languages',
      'Application development',
      'Database management',
      'Testing and debugging',
      'Version control',
    ],
    requirements:
    'A relevant degree or suitable software development skills '
        'can be helpful.',
    benefits: [
      'Strong career opportunities',
      'Opportunities in many industries',
      'Remote work possibilities',
      'Continuous learning',
    ],
  ),

  InformationData(
    icon: Icons.business_center,
    title: 'Career Opportunities',
    description:
    'Find career opportunities in different industries.',
    introduction:
    'There are many career opportunities in technology, '
        'business, education, finance, healthcare and other fields.',
    whatYouWillLearn: [
      'Different career paths',
      'Professional skills',
      'Resume preparation',
      'Interview preparation',
      'Career planning',
    ],
    requirements:
    'Identify your interests and develop skills related to '
        'your preferred career.',
    benefits: [
      'Better career planning',
      'Improved job readiness',
      'More career choices',
      'Professional development',
    ],
  ),

  InformationData(
    icon: Icons.work_outline,
    title: 'Fresher Jobs',
    description:
    'Explore job opportunities suitable for fresh graduates.',
    introduction:
    'Fresher jobs are entry-level positions for students and '
        'graduates beginning their professional careers.',
    whatYouWillLearn: [
      'Job searching',
      'Resume preparation',
      'Interview skills',
      'Communication skills',
      'Workplace basics',
    ],
    requirements:
    'A suitable educational qualification and basic job-related '
        'skills are generally required.',
    benefits: [
      'Gain professional experience',
      'Develop workplace skills',
      'Start a professional career',
      'Learn from experienced employees',
    ],
  ),

  InformationData(
    icon: Icons.event,
    title: 'Upcoming Events',
    description:
    'Check upcoming technical and educational events.',
    introduction:
    'Technical conferences, seminars and educational events '
        'provide opportunities to learn and connect with others.',
    whatYouWillLearn: [
      'Technical knowledge',
      'Industry trends',
      'New technologies',
      'Professional networking',
      'Career opportunities',
    ],
    requirements:
    'Check event registration requirements and eligibility '
        'before attending.',
    benefits: [
      'Gain new knowledge',
      'Meet professionals',
      'Discover career opportunities',
      'Improve communication skills',
    ],
  ),

  InformationData(
    icon: Icons.groups,
    title: 'Community Events',
    description:
    'Discover community meetings and networking events.',
    introduction:
    'Community events bring students, developers and '
        'professionals together to share knowledge and experiences.',
    whatYouWillLearn: [
      'Networking',
      'Team collaboration',
      'Community participation',
      'Knowledge sharing',
      'Communication skills',
    ],
    requirements:
    'Anyone interested in the relevant topic can usually '
        'participate.',
    benefits: [
      'Build professional connections',
      'Learn from others',
      'Participate in discussions',
      'Find collaboration opportunities',
    ],
  ),

  InformationData(
    icon: Icons.calendar_month,
    title: 'Workshops',
    description:
    'Find useful workshops, seminars and training programs.',
    introduction:
    'Workshops provide practical learning experiences through '
        'activities and hands-on practice.',
    whatYouWillLearn: [
      'Practical skills',
      'Industry tools',
      'Problem solving',
      'Hands-on project experience',
    ],
    requirements:
    'Requirements depend on the workshop topic and level.',
    benefits: [
      'Practical experience',
      'Better understanding of concepts',
      'New technical skills',
      'Certificate opportunities in some programs',
    ],
  ),

  InformationData(
    icon: Icons.campaign,
    title: 'Technology News',
    description:
    'Read the latest technology-related information.',
    introduction:
    'Technology news provides information about software, '
        'devices, artificial intelligence and digital developments.',
    whatYouWillLearn: [
      'Technology trends',
      'Software developments',
      'Artificial intelligence updates',
      'Mobile technology',
      'Web technology',
      'Digital innovations',
    ],
    requirements:
    'No special requirements are needed.',
    benefits: [
      'Stay updated',
      'Understand new technologies',
      'Discover career trends',
      'Improve technology awareness',
    ],
  ),

  InformationData(
    icon: Icons.newspaper,
    title: 'Education News',
    description:
    'Stay updated with important education news.',
    introduction:
    'Education news provides information about programs, '
        'examinations, scholarships and learning opportunities.',
    whatYouWillLearn: [
      'Education updates',
      'Examination information',
      'Scholarship announcements',
      'Learning opportunities',
      'Academic developments',
    ],
    requirements:
    'Students should regularly check reliable sources for '
        'important announcements.',
    benefits: [
      'Stay informed',
      'Find new opportunities',
      'Plan education effectively',
      'Avoid missing announcements',
    ],
  ),

  InformationData(
    icon: Icons.public,
    title: 'General News',
    description:
    'Get useful updates and important information.',
    introduction:
    'General news provides information about events, public '
        'announcements and developments relevant to students and '
        'the community.',
    whatYouWillLearn: [
      'Important announcements',
      'Community updates',
      'Public information',
      'Current developments',
    ],
    requirements:
    'Important information should be verified using reliable '
        'official sources.',
    benefits: [
      'Stay informed',
      'Understand current developments',
      'Find useful information',
    ],
  ),

  InformationData(
    icon: Icons.workspace_premium,
    title: 'Student Scholarships',
    description:
    'Find scholarship opportunities for eligible students.',
    introduction:
    'Scholarships provide financial support to students for '
        'education and may be based on academic performance, '
        'financial need or other criteria.',
    whatYouWillLearn: [
      'Scholarship eligibility',
      'Application process',
      'Required documents',
      'Important deadlines',
      'Scholarship benefits',
    ],
    requirements:
    'Eligibility depends on the specific scholarship. Always '
        'check the official requirements.',
    benefits: [
      'Financial support',
      'Reduced education expenses',
      'Support for higher studies',
      'Academic encouragement',
    ],
  ),

  InformationData(
    icon: Icons.school,
    title: 'Higher Education Scholarships',
    description:
    'Explore scholarship opportunities for higher education.',
    introduction:
    'Higher education scholarships can help students continue '
        'their studies at colleges and universities.',
    whatYouWillLearn: [
      'Scholarship types',
      'Eligibility requirements',
      'Application procedures',
      'Required documents',
    ],
    requirements:
    'Students must meet the academic and other requirements '
        'specified by the scholarship provider.',
    benefits: [
      'Support higher education',
      'Reduce financial burden',
      'Encourage academic development',
    ],
  ),

  InformationData(
    icon: Icons.card_giftcard,
    title: 'Merit Scholarships',
    description:
    'Learn about scholarships based on academic performance.',
    introduction:
    'Merit scholarships are generally awarded to students who '
        'demonstrate strong academic performance or achievement.',
    whatYouWillLearn: [
      'Academic eligibility',
      'Application requirements',
      'Selection process',
      'Scholarship benefits',
    ],
    requirements:
    'Students normally need to satisfy the academic criteria '
        'defined by the scholarship provider.',
    benefits: [
      'Financial assistance',
      'Recognition of achievement',
      'Support for further education',
    ],
  ),

  InformationData(
    icon: Icons.account_balance,
    title: 'Government Schemes',
    description:
    'Learn about useful government schemes and services.',
    introduction:
    'Government schemes are programs created to provide '
        'support and services to eligible citizens and communities.',
    whatYouWillLearn: [
      'Scheme objectives',
      'Eligibility criteria',
      'Application process',
      'Required documents',
      'Available benefits',
    ],
    requirements:
    'Eligibility and application requirements vary by scheme.',
    benefits: [
      'Access public services',
      'Financial or educational support',
      'Awareness of government programs',
    ],
  ),

  InformationData(
    icon: Icons.groups,
    title: 'Student Welfare Schemes',
    description:
    'Explore schemes designed to support students.',
    introduction:
    'Student welfare programs can provide educational, financial '
        'or other support to eligible students.',
    whatYouWillLearn: [
      'Student support programs',
      'Eligibility',
      'Application procedures',
      'Required documents',
    ],
    requirements:
    'Requirements depend on the specific welfare program.',
    benefits: [
      'Educational support',
      'Financial assistance in eligible programs',
      'Better access to education',
    ],
  ),

  InformationData(
    icon: Icons.info_outline,
    title: 'Public Services',
    description:
    'Find information about useful public services.',
    introduction:
    'Public services are services provided by government '
        'organizations to support citizens and communities.',
    whatYouWillLearn: [
      'Types of public services',
      'Official information',
      'Application procedures',
      'Required documents',
    ],
    requirements:
    'Requirements vary depending on the service.',
    benefits: [
      'Better awareness',
      'Easier access to information',
      'Understanding of application procedures',
    ],
  ),

  InformationData(
    icon: Icons.computer,
    title: 'Latest Technology',
    description:
    'Explore new technologies and digital trends.',
    introduction:
    'Technology is continuously developing and introducing new '
        'tools, platforms and solutions.',
    whatYouWillLearn: [
      'Technology trends',
      'Cloud computing',
      'Artificial intelligence',
      'Mobile technology',
      'Web technologies',
      'Digital transformation',
    ],
    requirements:
    'Basic computer knowledge is helpful.',
    benefits: [
      'Stay updated',
      'Discover career fields',
      'Improve digital skills',
      'Understand industry trends',
    ],
  ),

  InformationData(
    icon: Icons.phone_android,
    title: 'Mobile App Development',
    description:
    'Learn about modern mobile application development.',
    introduction:
    'Mobile application development involves creating software '
        'applications for smartphones and tablets.',
    whatYouWillLearn: [
      'Mobile UI design',
      'Application development',
      'Flutter development',
      'APIs and databases',
      'Testing applications',
      'App deployment',
    ],
    requirements:
    'Basic programming knowledge and a computer are recommended.',
    benefits: [
      'Build mobile applications',
      'Develop programming skills',
      'Create portfolio projects',
      'Explore mobile development careers',
    ],
  ),

  InformationData(
    icon: Icons.smart_toy,
    title: 'Artificial Intelligence',
    description:
    'Explore artificial intelligence and modern AI technologies.',
    introduction:
    'Artificial Intelligence enables computer systems to perform '
        'tasks that normally require human intelligence, such as '
        'learning, reasoning and recognizing patterns.',
    whatYouWillLearn: [
      'AI fundamentals',
      'Machine learning basics',
      'Data and models',
      'AI applications',
      'Responsible use of AI',
    ],
    requirements:
    'Basic mathematics, programming and computer knowledge can '
        'help with advanced AI concepts.',
    benefits: [
      'Understand modern AI',
      'Explore career opportunities',
      'Build AI-based projects',
      'Develop future-ready skills',
    ],
  ),

  InformationData(
    icon: Icons.business_center,
    title: 'Software Internships',
    description:
    'Discover internship opportunities in software development.',
    introduction:
    'Software internships give students practical experience '
        'working on software projects and professional practices.',
    whatYouWillLearn: [
      'Software development',
      'Team collaboration',
      'Version control',
      'Testing',
      'Project development',
      'Professional communication',
    ],
    requirements:
    'Students should have basic programming knowledge and '
        'skills related to the internship.',
    benefits: [
      'Gain practical experience',
      'Build a professional portfolio',
      'Improve technical skills',
      'Understand workplace practices',
    ],
  ),

  InformationData(
    icon: Icons.computer,
    title: 'Technology Internships',
    description:
    'Explore internships in technology and IT fields.',
    introduction:
    'Technology internships allow students to gain practical '
        'experience in software, data, cloud and IT.',
    whatYouWillLearn: [
      'Industry tools',
      'Technical skills',
      'Project development',
      'Teamwork',
      'Professional practices',
    ],
    requirements:
    'Requirements depend on the organization and internship role.',
    benefits: [
      'Practical industry experience',
      'Improved technical skills',
      'Career exposure',
      'Professional networking',
    ],
  ),

  InformationData(
    icon: Icons.school,
    title: 'Student Internships',
    description:
    'Find internship opportunities suitable for students.',
    introduction:
    'Student internships help learners gain practical experience '
        'while continuing their education.',
    whatYouWillLearn: [
      'Workplace communication',
      'Project management basics',
      'Technical skills',
      'Professional behavior',
      'Team collaboration',
    ],
    requirements:
    'Students should check internship eligibility, duration '
        'and required skills before applying.',
    benefits: [
      'Gain experience before graduation',
      'Improve resume quality',
      'Learn professional skills',
      'Understand career interests',
    ],
  ),
];
