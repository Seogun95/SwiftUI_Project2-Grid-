//
//  Array+Extension.swift
//  SwiftUI_Project2(Grid)
//
//  Created by 김선중 on 2021/02/05.
//

import Foundation

//배열을 설정하는 익스텐션
extension Array {
    //chunks라는 변수를 만든다.
    func chunks(size: Int) -> [ArraySlice<Element>] {
        
        var chunks: [ArraySlice<Element>] = [ArraySlice<Element>]()
        // stride는 한 항목에서 다른 항목으로, 현위치에서 다른위치로 이동할 수 있게 한다.
        for index in stride(from: 0, through: self.count - 1, by: size) {
            
            var chunk = ArraySlice<Element>()
            let end = index + size
            if end >= self.count {
                chunk = self[index..<self.count]
            } else {
                chunk = self[index..<end]
            }
            chunks.append(chunk)
            
            if (end + 1) == self.count {
                let remainingChunk = self[end..<self.count]
                chunks.append(remainingChunk)
            }
        }
        //반환값
        return chunks
    }
}
