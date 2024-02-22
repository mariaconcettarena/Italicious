import SwiftUI


@main
struct RecipesApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 17.0, *) {
                ContentView(recipes: recipes)
            } else {
               
            }
        }
    }
}
