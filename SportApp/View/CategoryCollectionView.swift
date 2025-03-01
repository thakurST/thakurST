//
//  CategoryCollectionView.swift
//  SportApp
//
//  Created by SandeepThakur on 01/03/25.
//

import SwiftUI

struct CategoryCollectionView: View {
    
    let story: StoryModel
    let gradient = Gradient(colors: [Color(hex: "#141618"),
                                     Color(hex: "#25282E")])
    var body: some View {
        VStack(spacing:0){
           // Color(hex: "#101213").ignoresSafeArea()
            VStack {
                Image("\(story.image)").resizable()
                    .frame(width: 40.0, height: 40.0, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    //.stroke(Color.red, lineWidth: 2.0)
                    //.animation(.spring(), value: 0.3)
            }.padding()
                .innerShadow(using: Rectangle())
                .background(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
                .modifier(RoundedEdge(width: 0.3, color: Color(hex: "#22262B"), cornerRadius: 20)).shadow(color: Color(hex: "#17262B"), radius: 0, x: 0, y: 0.3)
            VStack {
                Text(story.name)
                    .font(AppFont.mediumHeadingFont)
                    .foregroundColor(Color.white)
                    .frame(width: 80, height: 24, alignment: .center)
            }
        }.background(Color(hex: "#101213"))
    }
    
}

struct CategoryCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollectionView(story: StoryModel.example)
    }
}
