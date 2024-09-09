# Landmarks

**Landmarks** is an iOS app built using SwiftUI. The app showcases a list of notable landmarks, allowing users to browse details, mark favorites, and view their locations on an interactive map. It demonstrates various features of SwiftUI, including declarative UI building, data flow with state management, integration with UIKit components, and integration with MapKit for map-based views.

## Features

- **Landmark List**: Displays a scrollable list of landmarks, each with a thumbnail image, name, and location.
- **Favorite Landmarks**: Users can mark landmarks as favorites, which are visually indicated in the list and can be filtered to show only favorites.
- **Landmark Detail View**: Provides detailed information about each landmark, including an image, location, and descriptive text.
- **Map Integration**: Displays the location of landmarks on a map using `MapKit`.
- **UIKit Integration**: Demonstrates how to integrate UIKit components with SwiftUI for more advanced functionality and compatibility.
- **Adaptive UI**: Utilizes SwiftUI’s adaptive and responsive design to provide a great user experience across different devices and orientations.

## Project Structure

The project is organized into several key components:

### Views

- **`ContentView`**: The entry point of the app, containing the `NavigationStack` and a `TabView` that switches between different sections of the app (e.g., "Landmarks" list and "Favorites").
- **`LandmarkList`**: A view displaying a list of all landmarks, with an option to filter by favorites.
- **`LandmarkRow`**: A row view for each landmark in the list, showing a thumbnail, name, and favorite status.
- **`LandmarkDetail`**: A detailed view for a selected landmark, including a larger image, toggle to mark as favorite, descriptive text, and a map view.
- **`MapView`**: A reusable view that displays a map centered on a specific coordinate, using `MapKit`.
- **`CircleImage`**: A custom view that displays circular images with a border and shadow, used for displaying landmark photos.

### Models

- **`Landmark`**: A data model representing a landmark, including its name, location, description, and favorite status.
- **`ModelData`**: A class conforming to `ObservableObject` that provides a list of landmarks and handles data flow between views, allowing for state management and UI updates.

### Resources

- **`landmarkData.json`**: A JSON file containing predefined data for landmarks, including name, coordinates, description, and other details.
- **Images**: Includes images for each landmark, used within the views to provide a visual representation.

### UIKit Integration

While the app primarily uses SwiftUI, it also demonstrates how to integrate UIKit components to enhance functionality. The following integrations are used:

- **`UIViewRepresentable`**: Utilized to embed UIKit views within SwiftUI. For example, the `MapView` uses `MKMapView` (a UIKit view) to provide map functionality, wrapped in a SwiftUI-compatible way.
- **`UIViewControllerRepresentable`**: Enables embedding full UIKit view controllers within SwiftUI views, allowing for more complex interfaces or reusing existing UIKit components in a SwiftUI context.
- **Combining SwiftUI and UIKit**: This project shows how to leverage the strengths of both frameworks by combining SwiftUI's declarative UI approach with UIKit's powerful and mature components. This integration allows for smooth migration paths in existing apps or the use of advanced UI features not yet available in SwiftUI.



## Usage

1. **Browse Landmarks**: Launch the app to see a list of landmarks. Scroll to browse the full list.
2. **View Details**: Tap on any landmark to see more detailed information, including an image, map location, and additional text.
3. **Mark as Favorite**: Use the toggle in the detail view to mark a landmark as a favorite.
4. **Filter Favorites**: Navigate to the "Favorites" tab to view only the landmarks marked as favorites.

## Key SwiftUI Concepts

- **Declarative UI**: The app leverages SwiftUI's declarative syntax to define the user interface, allowing for a more readable and concise codebase.
- **State Management**: Uses `@State`, `@Binding`, and `@EnvironmentObject` properties to manage and propagate state changes throughout the app's views.
- **UIKit Integration**: Shows how to use `UIViewRepresentable` and `UIViewControllerRepresentable` to integrate UIKit components and view controllers with SwiftUI views.
- **Custom Views**: Demonstrates how to create reusable custom views (`CircleImage`, `MapView`) and compose them into larger views.
- **Navigation and Tab Views**: Implements `NavigationStack` for hierarchical navigation and `TabView` for top-level navigation between different sections.
