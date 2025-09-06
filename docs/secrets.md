# Gestion des secrets et variables d'environnement

Pour sécuriser les clés API et autres secrets, utilisez le package `flutter_dotenv` et stockez vos variables dans des fichiers `.env` non versionnés.

## Exemple de fichier `.env`
```
API_URL=https://api.example.com
API_KEY=your_api_key_here
```

Ajoutez `.env` à votre `.gitignore` :
```
.env
```

Pour charger les variables :
```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiUrl = dotenv.env['API_URL'];
```

Pour plus de sécurité, utilisez un service externe ou chiffrez les fichiers sensibles.
