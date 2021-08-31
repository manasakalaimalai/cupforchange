//
//  MoodFoods.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 28/08/21.
//

import SwiftUI

struct FoodView: View {

    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sadmoods) { sadmood in
                            MoodFoods(sadmood: sadmood)
                        }
                        .frame(width: 200, height: 280)

                        // Extra space after last article
                        Spacer()
                        .padding()

                    } //: END OF HSTACK
                    .padding(.horizontal, 30)

                } //: END OF SCROLLVIEW
            .frame(width: UIScreen.main.bounds.width, height: 300)
        }
}

struct MoodFoods: View {
    var sadmood: Sad = Bundle.main.decode("resourcessad.json")

    var body: some View {
        ZStack {
            VStack {
                Text(sadmood.food)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .kerning(1.0)
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                    .padding(.horizontal, 10)
                Image(sadmood.foodimage)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10)
                    .opacity(0.8)
                    .frame(width: 200, height: 100)
            }
            .frame(width: 190, height: 240)
            .background(LinearGradient(gradient: Gradient(colors: [Color("pastel3"), Color("pastel17")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
        }
        
        .frame(width: 200, height: 250)
        .background(Color("pastel11"))
        .cornerRadius(20)
        .shadow(color: Color("pastel13"), radius: 5, x: 5.0, y: 5.0)

    }
}

struct MoodFoods_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}