//
//  ContentView.swift
//  SportApp
//
//  Created by SandeepThakur on 01/03/25.
//

import SwiftUI

struct ContentView: View {
    
    var storyRow = Bundle.main.decode([StoryModel].self, from: "menu.json")
    var postRow = Bundle.main.decode([StoryModel].self, from: "post.json")
    
    private var threeColumnGrid = [GridItem(.flexible())]
    
    var soccersRow = [StoryModel(id: UUID(), image: "basketball", name: "Basketball"),
                      StoryModel(id: UUID(), image: "boxing", name: "Boxing"),
                      StoryModel(id: UUID(), image: "golf", name: "Golf"),
                      StoryModel(id: UUID(), image: "tennis", name: "Tennis"),
                      StoryModel(id: UUID(), image: "winner", name: "Olympic")]
    
    var body: some View {
        VStack(spacing:0) {
            // MARK: - Header
            HStack {
                Image("logo").aspectRatio(contentMode: .fit).padding(.leading, 10)
                Text("Allsportstarsin")
                    .textCase(.uppercase)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Spacer()
                HStack {
                    Button {
                        print("tap")
                    } label: {
                        Image("Notification")
                            .resizable()
                    }.frame(width: 40, height: 40, alignment: .center)
                }
                HStack {
                    Button {
                        print("tap")
                    } label: {
                        Image("Search")
                            .resizable()
                    }.frame(width: 40, height: 40, alignment: .center)
                }.padding(.trailing, 10)
            }.background(Color(hex: "#171A1C"))
            
            // MARK: - Post List
            
            HStack {
                List {
                    Section {
                        // MARK: - StoryView
                        VStack(spacing:0) {
                            HStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHGrid(rows: threeColumnGrid) {
                                        ForEach(storyRow) { item in
                                            StoryCollectionView(story: item)
                                        }
                                    }.padding(.leading,10)
                                }.frame(height: 140)
                            }
                            
                            // MARK: - Category
                            HStack(spacing:0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHGrid(rows: threeColumnGrid) {
                                        ForEach(soccersRow) { item in
                                            CategoryCollectionView(story: item)
                                        }
                                    }.padding(.leading, 16)
                                }.frame(height: 120)
                            }
                        }.background(Color(hex: "#101213"))
                            .listRowInsets(EdgeInsets())
                            .listRowBackground(EmptyView())
                            .listSectionSeparator(.hidden)
                            .listRowSeparator(.hidden)
                    }
                    .background(Color.red)
                    ForEach(postRow) { section in
                        PostView()
                    }
                    .listRowBackground(EmptyView())
                    .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    .listRowSeparator(.hidden)
                }.listStyle(.plain)
            }
        }.background(Color(hex: "#101213"))
    }
      
    func getCustomFontNames() {
        // get each of the font families
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            // print array of names
            print("Family: \(family) Font names: \(names)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
