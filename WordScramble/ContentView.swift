//
//  ContentView.swift
//  WordScramble
//
//  Created by Joseph Langat on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    let people = ["John", "Kim", "Mary", "Chela", "Kiprop", "Achieng",]
    var body: some View {
        List {
            Text("Static row")
            
            ForEach(people, id: \.self){
                Text($0)
            }
            Text("Static row")
//        List(0..<5){
//            Text("Dynamic row \($0)")
//            Section("Section 1") {
//                Text("Static row 1")
//                Text("Static row 2")
//            }
//            Section("Section 2") {
//                ForEach(0..<5) {
//                    Text("Dynamic row \($0)")
//                }
//            }
//            Section("Section 3"){
//                Text("Static row 3")
//                Text("Static row 4")
//            }
        }
        .listStyle(.grouped)
    }
    func loadFile(){
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                fileContents
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
