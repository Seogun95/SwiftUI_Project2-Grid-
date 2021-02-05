//
//  ContentView.swift
//  SwiftUI_Project2(Grid)
//
//  Created by 김선중 on 2021/02/05.
//

import SwiftUI

struct ContentView: View {
    let flag = [["🇰🇷", "🇺🇸"],["🇯🇵", "🇪🇺"],["🇸🇱", "🇧🇪"],["🇲🇨", "🇬🇳",],
                ["🇿🇦", "🇳🇮"],["🇨🇦", "🇹🇷", "🇨🇮"],["🇮🇹", "🇬🇧"],["🇨🇭", "🇸🇴"]]
    
    var body: some View {
        NavigationView {
            VStack {
                List(self.flag, id: \.self) { flagPair in
                    ForEach(flagPair, id: \.self) { flags in
                        Text(flags)
                            //국기의 크기를 설정
                            .font(.system(size: 100))
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
