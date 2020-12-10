//
//  TaskView.swift
//  You Done
//
//  Created by Piotr Galar on 09/12/2020.
//

import SwiftUI

struct TaskView: View {
    @State var text: String
    @State var isEditing = false
    
    var body: some View {
        HStack {
            TextField(
                "",
                text: Binding(
                    get: { print("get"); return self.text },
                    set: { print("set"); self.text = $0 }
                ),
                onEditingChanged: { isEditing = $0 },
                onCommit: {
                    print("commit")
                    /*DispatchQueue.main.async {
                        NSApp.keyWindow?.makeFirstResponder(nil)
                    }*/
                }
            )
            Spacer()
            Button(action: { print("Save") } ) { Text("Save") }.disabled(!isEditing)
            Button(action: { print("Delete") }) { Text("Delete") }
        }
    }
}