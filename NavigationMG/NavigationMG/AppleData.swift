//
//  AppleData.swift
//  NavigationMG
//
//  Created by 민근의 mac on 2023/06/28.
//

import Foundation

struct Apple: Hashable {
    var type: String
    var name: String
    var url: String
    var price: String

}

let apples: [Apple] = [
    Apple(type: "MacBook",name: "MacBook Pro", url:"https://www.apple.com/kr/macbook-pro/",price: "₩1,790,000~"),
    Apple(type: "MacBook",name: "MacBook Air", url:"https://www.apple.com/kr/macbook-air/",price: "₩1,590,000~"),
    
    Apple(type: "iPad",name: "iPad Pro", url:"https://www.apple.com/kr/shop/buy-ipad/ipad-pro",price: "₩1,249,000~"),
    Apple(type: "iPad",name: "iPad Air", url:"https://www.apple.com/kr/shop/buy-ipad/ipad-air",price: "₩929,000~"),
    Apple(type: "iPad",name: "iPad 10세대", url:"https://www.apple.com/kr/shop/buy-ipad/ipad",price: "₩679,000~"),
    Apple(type: "iPad",name: "iPad 9세대", url:"https://www.apple.com/kr/shop/buy-ipad/ipad-10-2",price: "₩499,000~"),
    Apple(type: "iPad",name: "iPad mini", url:"https://www.apple.com/kr/shop/buy-ipad/ipad-mini",price: "₩769,000~"),
    Apple(type: "iPad",name: "Apple Pencil", url:"https://www.apple.com/kr/shop/select-apple-pencil",price: "₩149,000~"),
    Apple(type: "iPad",name: "Keyboard", url:"https://www.apple.com/kr/shop/select-ipad-keyboards",price: "₩244,000~"),
    
    Apple(type: "iPhone",name: "iPhone 14 Pro" , url:"https://www.apple.com/kr/shop/buy-iphone/iphone-14-pro" ,price: "₩1,550,000~"),
    Apple(type: "iPhone",name: "iPhone 14", url:"https://www.apple.com/kr/shop/buy-iphone/iphone-14",price: "₩1,250,000~"),
    Apple(type: "iPhone",name: "iPhone 13", url:"https://www.apple.com/kr/shop/buy-iphone/iphone-13",price: "₩950,000~"),
    Apple(type: "iPhone",name: "iPhone 12", url:"https://www.apple.com/kr/shop/buy-iphone/iphone-12",price: "₩950,000~"),
    Apple(type: "iPhone",name: "iPhone SE", url:"https://www.apple.com/kr/shop/buy-iphone/iphone-se",price: "₩650,000~"),
    
    Apple(type: "Watch",name: "Apple Watch Ultra", url:"https://www.apple.com/kr/shop/buy-watch/apple-watch-ultra",price: "₩1,149,000~"),
    Apple(type: "Watch",name: "Apple Watch Series 8", url:"https://www.apple.com/kr/shop/buy-watch/apple-watch",price: "₩599,000~"),
    Apple(type: "Watch",name: "Apple Watch SE", url:"https://www.apple.com/kr/shop/buy-watch/apple-watch-se",price: "₩359,000~"),
    Apple(type: "Watch",name: "Apple Watch Hermès", url:"https://www.apple.com/kr/shop/buy-watch/apple-watch-hermes",price: "₩1,669,000~"),
    Apple(type: "Watch",name: "Apple Watch Nike", url:"https://www.apple.com/kr/shop/watch/bands/nike-%EC%8A%A4%ED%8F%AC%EC%B8%A0-%EB%A3%A8%ED%94%84-nike-%EC%8A%A4%ED%8F%AC%EC%B8%A0-%EB%B0%B4%EB%93%9C",price: "₩65,000~"),
  
    Apple(type: "AirPods",name: "AirPods Pro(2세대)" , url:"https://www.apple.com/kr/shop/product/MQD83KH/A/airpods-pro" ,price: "₩359,000"),
    Apple(type: "AirPods",name: "AirPods(2세대)", url:"https://www.apple.com/kr/shop/product/MV7N2KH/A/airpods-%EC%B6%A9%EC%A0%84-%EC%BC%80%EC%9D%B4%EC%8A%A4-%EB%AA%A8%EB%8D%B8",price: "₩199,000"),
    Apple(type: "AirPods",name: "AirPods(3세대)", url:"https://www.apple.com/kr/shop/product/MME73KH/A/airpods3%EC%84%B8%EB%8C%80-magsafe-%EC%B6%A9%EC%A0%84-%EC%BC%80%EC%9D%B4%EC%8A%A4-%EB%AA%A8%EB%8D%B8",price: "₩259,000~"),
    Apple(type: "AirPods",name: "AirPods Max", url:"https://www.apple.com/kr/shop/buy-airpods/airpods-max",price: "₩769,000")
]
