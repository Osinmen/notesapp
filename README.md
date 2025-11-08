Approach

UI Design
The UI is designed using Flutter’s built-in widgets.
The home screen displays a list of notes. Each note can be tapped to view its details and edited when necessary.
A floating action button is provided to add new notes, and swipe-to-delete functionality is used to remove notes.

State Management
The app uses the Provider package for state management.
The NotesProvider class handles all note-related logic, including adding, editing, deleting, and persisting notes.

Data Persistence
The app uses SharedPreferences to persist data locally.
Notes are converted to JSON strings and stored in a list. When the app restarts, they are retrieved and deserialized back into note objects.

Theme Management
The app uses a separate ThemeProvider to manage light and dark themes.
The current theme state is also saved using SharedPreferences to ensure persistence between sessions.

Clean Code Structure
Custom widgets such as CircularIconButton, CustomAppBar, and CustomFloatingActionButton are used to maintain consistency and readability.

Tools and Libraries Used
provider	State management
shared_preferences	Data persistence
material.dart	UI components
