//
//  ContentView.swift
//  SwiftUI#1
//
//  Created by MACBOOK PRO on 2022/02/13.
//

import SwiftUI


struct ContentView: View {
    //이안에서만 사용 private
    //값이 변할수있는 var
    //@State 값의 변화를 감지 >> 다시렌더링을해서 뷰에 적용
    
    @State
    private var isActivated : Bool = false
    
    
    var body: some View {
        
        NavigationView{
            VStack(alignment:.leading){
                MainView()
                Text("심재새내기")
                HStack{
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                    
                }//HStack
                    .padding(isActivated ? 50.0 : 10.0).background(isActivated ? Color.yellow : Color.black)
                    .onTapGesture {
                        print("HStack이  클릭되었다.")
                        
                        
                        withAnimation{
                            self.isActivated.toggle()
                        }
                    
                }//HStack
                
                //네이게이션 버튼(링크)
                
                //destination: 다음에 보여줄화면
                NavigationLink(destination:MyNextView()){
                    Text("네비게이션")
                        .fontWeight(.bold)
                        .padding()
                        .background(.orange)
                        
                }
            }
          
        }//NavigationView
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    //뷰확인용
    static var previews: some View {
        ContentView()
    }
}
