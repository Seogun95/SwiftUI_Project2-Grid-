//
//  ContentView.swift
//  SwiftUI_Project2(Grid)
//
//  Created by 김선중 on 2021/02/05.
//

import SwiftUI

struct ContentView: View {
    let flag = ["🇰🇷", "🇺🇸", "🇯🇵", "🇪🇺", "🇸🇱", "🇧🇪", "🇲🇨", "🇬🇳","🇿🇦", "🇳🇮", "🇨🇦", "🇹🇷", "🇨🇮", "🇮🇹", "🇬🇧","🇨🇭", "🇸🇴"]
    
    @State private var sliderValue: CGFloat = 1
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                
                Slider(value: $sliderValue, in: 1...7, step: 1)
                //슬라이드 할 때 마다 숫자가 변함
                Text(String(format: "%.0f", self.sliderValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
                
                List(self.flag.chunks(size: Int(self.sliderValue)), id: \.self) { chunk in
                    ForEach(chunk, id: \.self) { flags in
                        Text(flags)
                            //국기의 크기를 설정
                                    //숫자를 변경해보면 화면에 딱맞는건 300이라는걸 알 수 있다.
                            .font(.system(size: CGFloat(300/self.sliderValue)))
                    }
                }
            }
            .navigationBarTitle("국기")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
