//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Mert Ala on 9.10.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    @State private var showingAlert = false
var body: some View {
       Button(action: {
            self.showingAlert = true
        }) {
            Text("OK")
               .frame(minWidth: 0, maxWidth: .infinity)
               .padding()
               .foregroundColor(.white)
               .background(Color.green)
               .frame(width: 300, height: 60)
               .cornerRadius(30.0)
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("UYARI"), message: Text("Başarısız Giriş"), dismissButton: .default(Text("Tekrar")))
        }
    }
}
