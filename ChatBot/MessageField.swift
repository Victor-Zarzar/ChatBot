//
//  MessageField.swift
//  ChatBot
//
//  Created by Victor Zarzar on 10/02/23.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""
    
    var body: some View {
        HStack {
            // Custom text field created below
            CustomTextField(placeholder: Text("Enter your message here"), text: $message)
                .frame(height: 52)
                .disableAutocorrection(true)
            
            Button {
                print("Message sent!")
                message = ""
                
             } label: {
                 Image(systemName: "papperplane.fill")
                     .foregroundColor(.white)
                     .padding(10)
                     .background(Color("Peach"))
                     .cornerRadius(50)
                
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("Gray"))
        .cornerRadius(50)
        .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
    }
}

struct CustomTextField: View {
    var placeholder: Text
        @Binding var text: String
        var editingChanged: (Bool) -> () = {_ in}
        var commit: () -> () = {}
        
        var body: some View {
            ZStack(alignment: .leading) {
                // If text is empty, show the placeholder on top of the TextField
                if text.isEmpty {
                    placeholder
                        .opacity(0.5)
                }
                
                TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
            }
        }
    }

