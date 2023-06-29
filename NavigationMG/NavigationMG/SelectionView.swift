//
//  SelectionView.swift
//  NavigationMG
//
//  Created by 민근의 mac on 2023/06/29.
//

import SwiftUI

struct SelectionView: View {

    @State let storeState: StoreState
    var body: some View {
        VStack{
            NavigationStack {
                List {
                    HStack {
                        Spacer()
                        Picker("", selection: $storeState) {
                            ForEach(StoreState.allCases, id: \.self) { option in
                                Text(option.rawValue.capitalized)
                            }
                        }
                        
                    }
                    Text("MacBook").font(.largeTitle).foregroundColor(.blue)
                            ForEach(macbook, id: \.self) { apple in
                                
                                NavigationLink {
                                    DetailView(url: apple.url)
                                } label: {
                                    VStack {
                                        Text("\(apple.name)").font(.title).bold()
                                    }
                                    
                                }
                                Section(footer: HStack {
                                    Spacer()
                                    Text(apple.price)
                                }) {
                                    
                                }
                          
                    }
                    
                }.listStyle(PlainListStyle())
            }
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
