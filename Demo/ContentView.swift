//
//  ContentView.swift
//  Demo
//
//  Created by Luke Lai on 08/05/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        Form {
            VStack(spacing:20){
                Text("\(vm.convertedText)")
                    .font(.headline)
                TextField("Enter a value.",text: $vm.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .submitLabel(.done)
                Button("Convert", action: vm.convertMoeny)
                    .buttonStyle(.borderedProminent)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
