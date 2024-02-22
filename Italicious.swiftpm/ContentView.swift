import SwiftUI

struct RecipeDetailViewIngredient {
    var name: String
}


struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var quantity: String
    var ingredients: [(name: String, quantity: String)]
    var steps: [String]
    var diff: Int
    var imageName: String
    var detailViewIngredients: [RecipeDetailViewIngredient] {
        return ingredients.map { RecipeDetailViewIngredient(name: $0.name) }
    }
    var time: String
    var type: String //sa o sw
}


@available(iOS 17.0, *)
struct ContentView: View {
    
    @State private var recipeFilter = ""
    @State private var selectedDifficulty = 0
    
    @State private var currentIndex: Int = 0
    @State private var xOffset: CGFloat = .zero
    
    var recipes: [Recipe]
    
    // Var computed per le ricette salate (sa) e dolci (sw)
    var savoryRecipes: [Recipe] {
        return filteredRecipes.filter { $0.type == "sa" }
    }
    
    var sweetRecipes: [Recipe] {
        return filteredRecipes.filter { $0.type == "sw" }
    }
    
    
    //per il filtro sugli ingredienti/ricette
    var filteredRecipes: [Recipe] {
        var filtered = recipes
        
        // Aggiungi filtro per la difficoltà
        if selectedDifficulty > 0 {
            filtered = filtered.filter { $0.diff == selectedDifficulty }
        }
        
        // Aggiungi filtro per gli ingredienti
        if !recipeFilter.isEmpty {
            let selectedIngredientsArray = recipeFilter.split(separator: ",")
                .map { String($0).trimmingCharacters(in: .whitespaces) }
            filtered = filtered.filter { recipe in
                let recipeIngredients = recipe.ingredients.map { $0.name.lowercased() }
                return selectedIngredientsArray.allSatisfy { ingredient in
                    recipeIngredients.contains { $0.contains(ingredient.lowercased()) }
                }
            }
        }
        
        return filtered
    }
    
    
    
    
    @available(iOS 17.0, *)
    
    var body: some View {
        NavigationView {
            HStack() {
                // Sidebar per il filtro e il selettore di difficoltà
                VStack(alignment: .leading, spacing: 20) {
                    
                    Spacer().frame(height: 20)
                    Text("Which ingredients do you want to cook with?")
                        .font(.title)
                        .bold()
                        .foregroundColor(mc)
                    
                    TextField("Type here", text: $recipeFilter)
                        .padding()
                        .cornerRadius(15)
                        .textFieldStyle(PlainTextFieldStyle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(mc, lineWidth: 1.5)
                        )
                    
                    Divider()
                    
                    Stepper(value: $selectedDifficulty, in: 0...5) {
                        Text("Filter by difficulty: \(selectedDifficulty)")
                            .foregroundColor(mc)
                            .font(.title2)
                    }
                    .padding(.horizontal)
                    
                    VStack{
                        Text("Savory").font(.title).bold().foregroundColor(mcs) .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 5)
                        
                        
                        // SCROLL 1: SAVORY
                        ScrollView(.horizontal) {
                            LazyHStack (spacing: 250) {
                                ForEach(savoryRecipes.indices, id: \.self) { index in
                                    RecipeCard(recipe: savoryRecipes[index], imageName: savoryRecipes[index].imageName)
                                        .scrollTransition(axis: .horizontal) { content, phase in
                                            content
                                                .rotation3DEffect(.degrees(phase.value * -1.0), axis: (x: 0, y: 1, z: 0))
                                                .scaleEffect(x: phase.isIdentity ? 1 : 0.8, y: phase.isIdentity ? 1 : 0.8)
                                        }
                                        .alignmentGuide(.leading, computeValue: { _ in
                                            if index == 0 {
                                                return 130
                                            } else {
                                                return 0
                                            }
                                        })
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 100)
                        }
                        
                        
                        //SCROLL 2
                        Text("Sweet").font(.title).bold().foregroundColor(mcs).shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 5)
                        
                        ScrollView(.horizontal) {
                            LazyHStack (spacing: 250) {
                                ForEach(sweetRecipes.indices, id: \.self) { index in
                                    RecipeCard(recipe: sweetRecipes[index], imageName: sweetRecipes[index].imageName)
                                        .scrollTransition(axis: .horizontal) { content, phase in
                                            content
                                                .rotation3DEffect(.degrees(phase.value * -8.0), axis: (x: 0, y: 1, z: 0))
                                                .scaleEffect(x: phase.isIdentity ? 1 : 0.8, y: phase.isIdentity ? 1 : 0.8)
                                        }
                                        .alignmentGuide(.leading, computeValue: { _ in
                                            if index == 0 {
                                                return 130
                                            } else {
                                                return 0
                                            }
                                        })
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 100)
                        }
                    }
                }
                .padding()
                .background(Color.white)//COLORE SFONDO
                .frame(minWidth: 300, idealWidth: 350, maxWidth: .infinity)
            }
            .navigationBarTitle("Recipes").foregroundColor(.black)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

extension Recipe: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.id == rhs.id
    }
}
