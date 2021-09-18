//
//  SuccessView.swift
//  MyWorkout
//
//  Created by Kulnis Chattratitiphan on 12/9/2564 BE.
//

import SwiftUI

struct SuccessView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text(NSLocalizedString("High Five!", comment: "congratulation"))
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text(NSLocalizedString("""
                    Good job completing all four exercises!!
                    Remember tomorrow's another day.
                    So eat well and get some rest.
                    """, comment: "suggestion"))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            VStack {
                Spacer()
                Button(NSLocalizedString("Continue", comment: "go to main page")) {
                    presentationMode.wrappedValue.dismiss()
                    selectedTab = 9
                }
                .padding()
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}
