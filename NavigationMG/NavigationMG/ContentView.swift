//
//  ContentView.swift
//  NavigationMG
//
//  Created by 민근의 mac on 2023/06/28.
//

import SwiftUI

enum StoreState: String , CaseIterable {
    case All = "All"
    case MacBook = "MacBook"
    case iPad = "iPad"
    case iPhone = "iPhone"
    case Watch = "Watch"
    case AirPods = "AirPods"
    
}

//enum - 필터적용하면 화면 바꾸려고 사용
//String을 주어서 해당 case일때 String 값 사용
//CaseIterable을 써서 enum의 case를 배열로 가져올려고 사용
 

struct ContentView: View {
    
    @State var storeState: StoreState = .All //처음 화면은 All이 적용된 화면

    let device = ["MacBook","iPad","iPhone","Watch","AirPods"] //Section Header에 넣어줄 값
    
    let iphone = apples.filter{$0.type == "iPhone"} //iphone만
    let ipad = apples.filter{$0.type == "iPad"} //ipad만
    let macbook = apples.filter{$0.type == "MacBook"} //macbook만
    let watch = apples.filter{$0.type == "Watch"} //watch만
    let airpod = apples.filter{$0.type == "AirPods"} //airpot만
    
    var body: some View {
        var filteredApples: [Apple] {
            if storeState == .All {
                return apples
            } else {
                return apples.filter { $0.type.lowercased() == storeState.rawValue.lowercased() }
            }
        }
        // .All이면 그냥 apples 전체를 그 외에는 storeState의 현재 String값과 같은 값만 담아서
        //lowercased() = String을 소문자로 변경해주는 메서드
        VStack {
            HStack {
                Image(systemName: "apple.logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                    .clipped()
                
                Text("Apple Store").font(.title2).bold()
                
            }.padding()
            //상단 로고
            
            switch storeState {
            case .All:
                NavigationStack {
                    
                    List {
                        let data = [macbook,ipad,iphone,watch,airpod]
                        //배열안에 배열을 만들어줌
                        HStack {
                            Spacer()
                            Picker("", selection: $storeState) {
                                ForEach(StoreState.allCases, id: \.self) { option in
                                    Text(option.rawValue)
                                    
                                } //CaseIterable을 써서 allCases를 사용할수 있음 case를 배열로 가져옴
                                //option.rawValue를 써서 enum에서 정해준 String 값을 가져옴
                            }
                        }
                        ForEach(data.indices) { index in // data에 포함된 횟수만큼 섹션 생성
                            Section(header: Text(device[index]).font(.largeTitle).foregroundColor(.blue)
                                    
                            )
                            {
                                ForEach(data[index], id: \.self) { apple in
                                    
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
                                } //data[index]만큼 네비게이션 생성
                                
                            }
                            
                        }
                        
                    }.listStyle(PlainListStyle())
                }
            default :
                NavigationStack {
                    List {
                        let data = [filteredApples]
                        HStack {
                            Spacer()
                            Picker("", selection: $storeState) {
                                ForEach(StoreState.allCases, id: \.self) { option in
                                    Text(option.rawValue)
                                    
                                }
                            }
                        }
                        Text(storeState.rawValue).font(.largeTitle).foregroundColor(.blue)
                                ForEach(filteredApples, id: \.self) { apple in
                                    
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
    
    
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
