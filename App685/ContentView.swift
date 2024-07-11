//
//  ContentView.swift
//  App685
//
//  Created by IGOR on 28/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.Home

    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            if status {
            
            VStack(spacing: 0, content: {
            
                    TabView(selection: $current_tab, content: {

                        HomeView()
                            .tag(Tab.Home)

                        OrdersView()
                            .tag(Tab.Orders)
                        
                        StockView()
                            .tag(Tab.Stock)
                        
                    })
                    
                })
                    .ignoresSafeArea(.all, edges: .bottom)
                    .onAppear {
                        
                    }
                
                VStack {
                    
                    Spacer()
                    
                    TabBar(selectedTab: $current_tab)
                    
                }
                
            } else {
                
                R1()
            }
        }
    }
}

#Preview {
    ContentView()
}
