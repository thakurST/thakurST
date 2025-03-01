//
//  PostSlideView.swift
//  SportApp
//
//  Created by SandeepThakur on 01/03/25.
//

import SwiftUI

struct PostSlideView: View {
    
    let story: StoryModel
    
    var body: some View {
        ZStack {
            HStack {
                Image("\(story.image)")
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fit)
                    .cornerRadius(10.0)
                    .padding(.leading)
                    .padding(.trailing)
            }.background(Color.clear)
            .frame(width: UIScreen.screenWidth - 15)
        }
    }
}

struct PostSlideView_Previews: PreviewProvider {
    static var previews: some View {
        PostSlideView(story: StoryModel.example)
    }
}

extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
