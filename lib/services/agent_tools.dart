import 'package:firebase_vertexai/firebase_vertexai.dart';

class AgentTools {
  AgentTools._();

  static final _instance = AgentTools._();
  static AgentTools get ins => _instance;

  Schema get jsonSchema => Schema(
    SchemaType.object,
    properties: {
      'title': Schema(SchemaType.string, description: 'The article title'),
      'body_markdown': Schema(
        SchemaType.string,
        description: 'The article content in markdown format',
      ),
      'tags': Schema(
        SchemaType.array,
        items: Schema(SchemaType.string),
        description: 'List of relevant tags for the article',
      ),
      'published': Schema(
        SchemaType.boolean,
        description: 'Publication status (always false for drafts)',
      ),
      'description': Schema(
        SchemaType.string,
        description: 'Brief description of the article',
        nullable: true,
      ),
      'reading_time_minutes': Schema(
        SchemaType.integer,
        description: 'Estimated reading time in minutes',
        nullable: false,
      ),
    },
  );
}
