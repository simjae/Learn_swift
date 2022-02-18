//
//  Main.swift
//  Learn_swift
//
//  Created by MACBOOK PRO on 2022/02/18.
//

import SwiftUI



struct MainView : View {
    var body: some View {
        VStack(){
            MapView()
                .frame(height:300)
                .ignoresSafeArea(edges:.top)
            VStack{
                Image("flower")
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.gray, lineWidth:4)
                    }
                    .shadow(radius:7)
                    .offset(y:-130)
                    .padding(.bottom,-130)
                
                
                HStack{
                    VStack(alignment:.leading){
                        Text("심재형")
                            .font(.title)
                        Text("성격유형테스트는 esfp 입니다.")
                            .font(.subheadline)
                    }
                    
                    
                    Spacer()
                    
                    Text("취미는 개발입니다.")
                        .font(.subheadline)
                }
            }
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
