Notes Application

A Flutter-based notes application that allows users to create, read, edit, and delete notes. The app supports dark and light themes, persistent storage using SharedPreferences, and a responsive, reusable UI design.

Features

Create Notes: Add new notes with a title and content.

Read Notes: View full notes with scrolling support.

Edit Notes: Edit existing notes, with changes reflected instantly.

Delete Notes: Swipe to delete notes using Dismissible.

Persistent Storage: Notes are saved locally using SharedPreferences.

Theming: Switch between light and dark modes.

Reusable Components: Circular icon buttons, back buttons, floating action buttons, and text fields for consistency.


Screens

Home Screen:

Shows a list of saved notes in cards.

Floating action button to add a new note.

Note Details Screen:

Displays note title and content.

Edit button navigates to Edit Notes Screen.

Edit Notes Screen:

Allows editing note title and content.

Save button updates the note in the provider and persists changes.

Theme Settings Page:

Toggle switch to switch between light and dark themes.

Persists theme choice using SharedPreferences.

Dependencies

provider
 — State management.

shared_preferences
 — Persistent storage.

flutter_gen
 — Asset generation.
