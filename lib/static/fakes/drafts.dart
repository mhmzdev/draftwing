import 'package:configs/configs.dart';
import 'package:draftwing/models/draft/draft.dart';

final List<Draft> mockDrafts = [
  Draft(
    uid: 'draft_001',
    title: 'The Future of Flutter Development: What\'s Coming Next',
    tags: ['flutter', 'mobile', 'development', 'technology', 'google'],
    readingLength: ReadingLength.values.randomValue,
    additionalContext:
        'A comprehensive overview of upcoming Flutter features, including new widgets, performance improvements, and cross-platform capabilities. Covers the latest announcements from Google I/O and what developers can expect.',
    createdAt: DateTime(2024, 1, 15, 10, 30),
    updatedAt: DateTime(2024, 1, 18, 14, 22),
    status: DraftStatus.draft,
  ),

  Draft(
    uid: 'draft_002',
    title: 'Building Scalable APIs with Node.js and PostgreSQL',
    tags: ['nodejs', 'postgresql', 'backend', 'api', 'database'],
    readingLength: ReadingLength.values.randomValue,
    additionalContext:
        'Step-by-step guide to creating production-ready APIs using Node.js and PostgreSQL. Includes best practices for database design, query optimization, authentication, and deployment strategies.',
    createdAt: DateTime(2024, 2, 3, 9, 15),
    updatedAt: DateTime(2024, 2, 10, 16, 45),
    status: DraftStatus.values.randomValue,
  ),

  Draft(
    uid: 'draft_003',
    title: 'Quick Tips for Better Code Review',
    tags: ['codereview', 'bestpractices', 'team', 'productivity'],
    readingLength: ReadingLength.values.randomValue,
    additionalContext:
        'Essential tips for conducting effective code reviews that improve code quality and team collaboration. Covers common mistakes to avoid and how to give constructive feedback.',
    createdAt: DateTime(2024, 2, 20, 11, 0),
    updatedAt: DateTime(2024, 2, 20, 11, 0),
    status: DraftStatus.values.randomValue,
  ),

  Draft(
    uid: 'draft_004',
    title: 'Understanding React Server Components: A Deep Dive',
    tags: [
      'react',
      'servercomponents',
      'javascript',
      'webdevelopment',
      'nextjs',
    ],
    readingLength: ReadingLength.values.randomValue,
    additionalContext:
        'An in-depth exploration of React Server Components, covering their architecture, benefits, implementation patterns, and real-world use cases. Includes performance comparisons and migration strategies from traditional React applications.',
    createdAt: DateTime(2024, 3, 1, 8, 20),
    updatedAt: DateTime(2024, 3, 5, 13, 30),
    status: DraftStatus.values.randomValue,
  ),

  Draft(
    uid: 'draft_005',
    title: 'Getting Started with Docker for Beginners',
    tags: ['docker', 'containerization', 'devops', 'beginner'],
    readingLength: ReadingLength.values.randomValue,
    additionalContext:
        'A beginner-friendly introduction to Docker and containerization. Explains core concepts, basic commands, and how to containerize your first application with practical examples.',
    createdAt: DateTime(2024, 1, 28, 15, 45),
    updatedAt: DateTime(2024, 2, 15, 10, 20),
    status: DraftStatus.values.randomValue,
  ),
];
