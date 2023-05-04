//
//  Alert.swift
//  learnSwiftUI
//
//  Created by Talgar on 25/2/23.
//

import SwiftUI

struct Alert: View {
    @State private var isShowingAlert1 = false
    @State private var isShowingAlert2 = false
    @State private var isShowingAlertSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("ShowAlert 1") {
                    isShowingAlert1 = !isShowingAlert1
                } .alert(isPresented: $isShowingAlert1) {
                    .init(title: Text("I'm alert numba 1"),
                          message: Text("ARgument passes to call that takes no argument"),
                          dismissButton: .default(Text("Ok")))
                }
                
                .padding(16)

                Button("ShowAlert 2") {
                    isShowingAlert2 = !isShowingAlert2
                } .alert(isPresented: $isShowingAlert2) {
                    .init(title: Text("I'm alert numba 2"),
                          message:Text("Are you mf bullshit?"),
                          primaryButton: .destructive(Text("No,no way")) {
                          print("koko")},
                          secondaryButton: .default(Text("Yes!, yes i'm")) )
                }
                
                
                .padding(16)
                
                Button("Show me your level,sheet") {
                    isShowingAlertSheet = !isShowingAlertSheet
                } .confirmationDialog("i'll show you",
                                      isPresented: $isShowingAlertSheet,
                                      titleVisibility: .visible) {
                    
                    Button("Show all level",role: .destructive) {
                        print("is' my level")
                    }
                    
                    Button("first level") {
                        print("is' my 1's level")
                    }
                    
                    Button("second level") {
                        print("is' my 2'd level")
                    }
                }
            }
        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        Alert()
    }
}
