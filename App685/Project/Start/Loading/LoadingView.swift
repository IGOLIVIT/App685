//
//  LoadingView.swift
//  App685
//
//  Created by IGOR on 28/06/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack(spacing: 35) {
                
                Image("llogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                
                Text("Keep records of your flower shop")
                    .foregroundColor(.black.opacity(0.6))
                    .font(.system(size: 28, weight: .bold))
                    .multilineTextAlignment(.center)
            }
            
            VStack {
                
                Spacer()
                
                ProgressView()
                    .padding(90)
            }
        }
    }
}

#Preview {
    LoadingView()
}
