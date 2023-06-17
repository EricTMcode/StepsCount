//
//  ContentView.swift
//  Steps
//
//  Created by Eric on 17/06/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: HealthKitViewModel
    
    var body: some View {
        VStack {
            if vm.isAuthorized {
                VStack {
                    Text("Today's Step Count")
                        .font(.title3)
                    
                    Text("\(vm.userStepCount)")
                        .font(.largeTitle)
                        .bold()
                }
            } else {
                VStack {
                    Text("Please Authorize Health!")
                        .font(.title3)
                    
                    Button {
                        vm.healthRequest()
                    } label: {
                        Text("Authorize HealthKit")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .frame(width: 320, height: 55)
                    .background(.orange)
                    .cornerRadius(10)
                }
            }
        }
        .padding()
        .onAppear {
            vm.readStepsTakenToday()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(HealthKitViewModel())
    }
}
