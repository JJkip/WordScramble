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
            if let fileContents = try? String(contentsOf: fileURL ) {
                fileContents
            }
        }
    }
    func test(){
        let word  = "Swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let input = """
a
d
c
""";     let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
