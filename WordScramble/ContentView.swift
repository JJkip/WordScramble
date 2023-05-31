//
//  ContentView.swift
//  WordScramble
//
//  Created by Joseph Langat on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var useWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    let people = ["John", "Kim", "Mary", "Chela", "Kiprop", "Achieng",]
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                Section {
                    ForEach(useWords, id: \.self){ word in
                        HStack {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
        }
//        List {
//            Text("Static row")
//
//            ForEach(people, id: \.self){
//                Text($0)
//            }
//            Text("Static row")
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
//        }
//        .listStyle(.grouped)
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
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        // exit if the remaining string is empty
        guard answer.count > 0 else { return }
        // extra validation to come
        useWords.insert(answer, at: 0)
        newWord = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
