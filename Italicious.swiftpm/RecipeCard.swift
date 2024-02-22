//
//  RecipeCard.swift
//  NC2
//
//  Created by Maria Concetta on 06/02/24.
//

import Foundation
import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe
    let imageName: String
    
    var body: some View {
        
        NavigationLink(destination: RecipeDetailView(recipe: recipe, image: Image(recipe.imageName))) {
            ZStack{
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 330, height: 300)
                        .cornerRadius(30)
                       
                Rectangle().frame(width: 330, height:80)
                    .offset(x:0,y:110).foregroundColor(mc)
                 
                HStack{
                    
                    //DIFFICOLTA'
                    //TEMPO
                    VStack{
                        Image(systemName: "fork.knife").foregroundColor(.white)
                        
                        Text(String(recipe.diff))
                            .font(.headline)
                            .offset(x:0,y:5)
                        .foregroundColor(.white)}
                    
                    
                    
                    //NOME
                    Text(recipe.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .lineLimit(1)
                                .frame(width: 200)
                    
                    //TEMPO
                    VStack{
                        Image(systemName: "clock").foregroundColor(.white)
                        
                        Text(String(recipe.time))
                            .font(.headline)
                            .offset(x:0,y:5)
                        .foregroundColor(.white)}
                    
                   
                
                   
                }.offset(x:0,y:105)
                
                
                
                    
            }.frame(width:330,height:300)
        }
        .background(Color.white)
        .cornerRadius(30)
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: -10, y: 5)
        .frame(width: 100, height: 100)
    }
}
