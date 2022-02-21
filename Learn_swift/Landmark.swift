//
//  Landmark.swift
//  Learn_swift
//
//  Created by MACBOOK PRO on 2022/02/18.
//
import Foundation
import SwiftUI
// Codable >> 구조와 데이터 파일 간에 데이터를 더 쉽게 이동할수 있다.
struct LandMark : Hashable, Codable{
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String

    private var imageName : String
    var image : Image {
        Image(imageName)
    }
   
}

    
