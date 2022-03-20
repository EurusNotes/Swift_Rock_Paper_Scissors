//
//  ContentView.swift
//  Jyanken
//
//  Created by CHENXI LIU on 2022/03/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View{
        
        
        VStack{
            Spacer()
            if answerNumber == 0{
                Text("来玩石头剪刀布吧！")
                    .padding(.all)
                    
            }else if answerNumber == 1{
                // change to gu-
                // add gu image
                Image("gu")
                    // resize
                    .resizable()
                    //fit size
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("石头")
                
            }else if answerNumber == 2{
                // change to choki
                Image("choki")
                    // resize
                    .resizable()
                    //fit size
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("剪刀")
                
                
            }else{
                //change to pa
                Image("pa")
                    // resize
                    .resizable()
                    //fit size
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("布")
            }


            
            Button(action:{
                
                var newAnswerNumber = 0
                
                repeat{
                    
                    newAnswerNumber = Int.random(in: 1...3)
                    
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
                
            }){
                Text("石头！剪刀！布！")
                    .frame(maxWidth: .infinity)
                    .frame(height:100)
                    .font(.title)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
            }
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
