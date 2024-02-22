import Foundation
import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe
    let image: Image
    
    @State private var isPlaying: Bool = false
    @State private var currentStepIndex: Int = 0
    @State private var isStepChecked: [Bool]
    @State private var showCongratulationsAlert = false
    @State private var circleIsMoving = false
    
    init(recipe: Recipe, image: Image) {
        self.recipe = recipe
        self.image = image
        _isStepChecked = State(initialValue: Array(repeating: false, count: recipe.steps.count))
    }
    
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                
                //quantity
                HStack {
                    
                    Image(systemName: "plus.forwardslash.minus")
                    Text("Quantity")
                        .font(.title).bold().foregroundColor(mcs)
                    
                    Text("\(recipe.quantity)").font(Font.body.italic()).foregroundColor(mcs)
                    
                }.shadow(color: Color.black.opacity(0.3), radius: 5, x: -10, y: 5)
                
                //ingredients
                HStack{
                    VStack(alignment: .leading, spacing: 5) {
                        HStack{
                            
                            Image(systemName: "basket")
                            Text("Ingredients")
                                .font(.title).bold().foregroundColor(mcs)
                            
                        }.shadow(color: Color.black.opacity(0.3), radius: 5, x: -10, y: 5)
                        
                        
                        ForEach(recipe.ingredients, id: \.0) { ingredientTuple in
                            HStack {
                                Text("\(ingredientTuple.0)").font(.title3)
                                    .foregroundColor(mcs)
                                
                                Text("\(ingredientTuple.1)").font(Font.title3.italic())
                                    .foregroundColor(mcs)
                            }
                        }
                        
                    }
                    .padding(.bottom, 5)
                    
                    ZStack{
                        
                        Image(recipe.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                     
                            .offset(x: circleIsMoving ? 100 : 100, y: circleIsMoving ? 50 : 100)
                        
                    } .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                            withAnimation(Animation.easeInOut(duration: 1)) {
                                self.circleIsMoving.toggle()
                            }
                        }
                    }
                   .offset(x:0,y:-80)
                    .shadow(radius: 10)
                }
                
                
                //steps
                VStack(alignment: .leading, spacing: 5) {
                    
                    HStack{
                        Image(systemName: "list.clipboard").foregroundColor(mcs)
                        Text("Steps")
                            .font(.title).bold().foregroundColor(mcs)
                    }.shadow(color: Color.black.opacity(0.3), radius: 5, x: -10, y: 5)
                    
                    
                    
                    ForEach(recipe.steps.indices, id: \.self) { index in
                        let isCurrentStep = index == currentStepIndex && isPlaying
                        let stepText = "\(index + 1). \(recipe.steps[index])"
                        
                        if isCurrentStep {
                            Text(stepText)
                                .font(.title3)
                                .foregroundColor(mcs)
                                .opacity(isPlaying ? 1 : 0.5)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                                .background(mc.opacity(0.5))
                                .cornerRadius(8)
                                .scaleEffect(1.2)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .frame(width: 650)
                                .offset(x: 70, y: 10)
                            
                            Spacer()
                            Spacer()
                            
                        } else {
                            Text(stepText)
                                .font(.title3)
                                .foregroundColor(mcs)
                                .opacity(isPlaying ? 0.5 : 1)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .background(mc.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                    
                    
                    Button(action: {
                        isPlaying.toggle()
                    }) {
                        Text(isPlaying ? "Pause" : "Play")
                            .bold()
                            .padding(EdgeInsets(top: 20, leading: 40, bottom: 20, trailing: 40))
                            .background(mc)
                            .cornerRadius(60)
                    }.offset(x: UIScreen.main.bounds.width / 2 - 80, y:20)
                }
                .padding(.bottom, 10)
                
                HStack {
                    if isPlaying && currentStepIndex > 0 {
                        Button(action: {
                            currentStepIndex -= 1
                        }) {
                            Image(systemName: "arrowshape.left").foregroundColor(mc).bold()
                            Text("Previous Step").foregroundColor(mc).bold()
                            
                        }.offset(x: 10, y:-40)
                    }
                    
                    
                    Spacer()
                    
                    if isPlaying && currentStepIndex < recipe.steps.count - 1 {
                        Button(action: {
                            currentStepIndex += 1
                        }) {
                            Text("Next Step").foregroundColor(mc).bold()
                            Image(systemName: "arrowshape.right").foregroundColor(mc).bold()
                        }.offset(x: -10, y:-40)
                    }
                    
                    //ULTIMO STEP
                    if isPlaying && currentStepIndex == recipe.steps.count - 1 {
                        Button(action: {
                            currentStepIndex += 1
                            showCongratulationsAlert = true
                        }) {
                            Text("FINISH").foregroundColor(mc).bold()
                            Image(systemName: "checkmark").foregroundColor(mc).bold()
                        }
                    }
                }
                .padding(.bottom, 5)
            }
            .padding(15)
            
        }.background(Color.white.edgesIgnoringSafeArea(.all))
            .navigationBarTitle(recipe.name)
            .alert(isPresented: $showCongratulationsAlert) {
                Alert(
                    title: Text("Congratulations!"),
                    message: Text("You have completed the recipe successfully."),
                    dismissButton: .default(Text("OK🥳"))
                )
            }
    }
}


