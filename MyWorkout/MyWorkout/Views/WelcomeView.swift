//
//  WelcomeView.swift
//  MyWorkout
//
//  Created by Kulnis Chattratitiphan on 12/9/2564 BE.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false
    var body: some View {
        VStack {
            HeaderView(selectedTab: $selectedTab, titleText: "Welcome")
            Spacer()
            
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                    }
                    Image("workout")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
                }
            }
            
            Button(action: { selectedTab = 0 }) {
                Text("Get Started")
                Image(systemName: "arrow.right.circle")
            }
            
            .font(.title2)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 2))
            Spacer()
            
            Button("History") {showHistory.toggle()}
                .padding(.bottom)
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
