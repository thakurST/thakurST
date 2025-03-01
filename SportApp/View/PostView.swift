//
//  PostView.swift
//  SportApp
//
//  Created by SandeepThakur on 01/03/25.
//

import SwiftUI

struct PostView: View {
    
    var storyRow = Bundle.main.decode([StoryModel].self, from: "post.json")
    
    // let story: StoryModel
    private var threeColumnGrid = [GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            //Color(hex: "#101213").ignoresSafeArea()
            VStack(spacing: 0.0) {
                // MARK: - View User Info
                HStack {
                    Image("user").resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .cornerRadius(15).aspectRatio(1, contentMode: .fit)
                        .aspectRatio(contentMode: .fill)
                    VStack(alignment: .leading) {
                        Text("Arlene McCoy")
                            .font(AppFont.boldHeadingFont)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                        HStack(){
                            Text("yesterday")
                                .font(AppFont.mediumHeadingFont)
                                .foregroundColor(Color(hex: "#7E8C94"))
                            Text("19:20")
                                .font(AppFont.mediumHeadingFont)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(hex: "#7E8C94"))
                        }
                    }
                    Spacer()
                    HStack {
                        Button {
                            print("tapMenu")
                        } label: {
                            Image("Icon")
                        }.frame(width: 40, height: 40, alignment: .center)
                            .buttonStyle(.plain)
                    }.padding(.trailing,0)
                }.padding(.leading,12)
                    .padding(.trailing,12)
                    .padding(.top,12)
                    .padding(.bottom,12)

                // MARK: - Slider PostView
                
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: threeColumnGrid) {
                            ForEach(storyRow){ item in
                                PostSlideView(story: item)
                            }
                            .padding(.trailing, -35)
                        }.background(Color.clear)
                    }.aspectRatio(16/9, contentMode: .fit)
                }

                // MARK: - Bottom Button View
                HStack {
                    Button {
                        print("taplike")
                    } label: {
                        Image("Heart")
                    }.frame(width: 40, height: 40, alignment: .center)
                    .buttonStyle(.plain)
                    VStack{
                        Text("2K")
                            .font(AppFont.boldHeadingFont)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                        Text("Likes")
                            .font(AppFont.mediumHeadingFont)
                            .foregroundColor(Color(hex: "#7E8C94"))
                            .multilineTextAlignment(.leading)
                    }
                    
                    Button {
                        print("tapcomment")
                    } label: {
                        Image("Comment")
                    }.frame(width: 40, height: 40, alignment: .center)
                        .buttonStyle(.plain)
                    VStack{
                        Text("2K")
                            .font(AppFont.boldHeadingFont)
                            .foregroundColor(Color.white)
                        Text("Comment")
                            .font(AppFont.mediumHeadingFont)
                            .foregroundColor(Color(hex: "#7E8C94"))
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    Button {
                        print("tapshare")
                    } label: {
                        Image("Export")
                    }.frame(width: 40, height: 40, alignment: .center)
                }.padding(.leading,12)
                    .padding(.trailing,12)
                    .padding(.top,12)
                    .padding(.bottom,12)
            }
            .background(Color(hex: "#101213"))
            .cornerRadius(25)
            .modifier(RoundedEdge(width: 0.2, color: Color(hex: "#22262B"),
                                  cornerRadius: 25)).shadow(color: Color(hex: "#17262B"),
                                                            radius: 0, x: 0, y: 0.4)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
