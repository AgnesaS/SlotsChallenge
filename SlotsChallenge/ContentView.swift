//
//  ContentView.swift
//  SlotsChallenge
//
//  Created by Agnesa  on 26.10.22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Proporties
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        VStack(spacing: 20.0){
            Spacer()
            Text("SwiftUI Slots")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(credits)")
            Spacer()
            HStack{
                Spacer()
                Image("fruit\(slot1)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)").resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin"){
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                //Update credits
                if slot1 == slot2 && slot2 == slot3{
                    credits += 15
                }else {
                    credits -= 5
                }
            }.padding().padding([.leading, .trailing],30).foregroundColor(.white).background(Color(.systemPink)).font(.system(size: 20, weight: .bold, design: .serif)).cornerRadius(15)
            Spacer()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
