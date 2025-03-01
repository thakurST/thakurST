//
//  StoryCollectionView.swift
//  SportApp
//
//  Created by SandeepThakur on 01/03/25.
//

import SwiftUI

struct StoryCollectionView: View {
    
    let story: StoryModel
    let gradient = Gradient(colors: [Color(hex: "#141618"),
                                     Color(hex: "#25282E")])
    
    let gradient2 = Gradient(colors: [Color(hex: "#BFDB39"),
                                      Color.blue, Color.orange])
    var body: some View {
        ZStack{
            Color(hex: "#101213").ignoresSafeArea()
            VStack(spacing:0) {
                HStack {
                    Image("\(story.image)").resizable()
                        .frame(width: 60.0, height: 60.0, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                }
                .frame(width: 64.0, height: 64.0, alignment: .center)
                .background(LinearGradient(gradient: gradient2,
                                           startPoint: .leading,
                                           endPoint: .top))
                .cornerRadius(100)
                .shadow(color: Color(hex: "#BFDB39").opacity(0.2), radius: 5, x: 0, y: 12)
                Text(story.name)
                    .font(AppFont.mediumHeadingFont)
                    .foregroundColor(Color.white)
                    .frame(width: 60, height: 30, alignment: .center)
            }.padding()
                .background(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
                .modifier(RoundedEdge(width: 0.3, color: Color(hex: "#22262B"),
                                      cornerRadius: 20)).shadow(color: Color(hex: "#17262B"),
                                                                radius: 0, x: 0, y: 0.3)
        }
    }
    
}

struct StoryCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        StoryCollectionView(story: StoryModel.example)
    }
}
