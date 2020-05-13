//
//  ContentView.swift
//  wwdc2020avatars
//
//  Created by Ramill Ibragimov on 13.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "L1_2x")),
        UIHostingController(rootView: Subview(imageString: "L2_2x")),
        UIHostingController(rootView: Subview(imageString: "L3_2x")),
        UIHostingController(rootView: Subview(imageString: "L4_2x")),
        UIHostingController(rootView: Subview(imageString: "L5_2x")),
        UIHostingController(rootView: Subview(imageString: "L6_2x")),
        UIHostingController(rootView: Subview(imageString: "L7_2x")),
        UIHostingController(rootView: Subview(imageString: "R1_2x")),
        UIHostingController(rootView: Subview(imageString: "R2_2x")),
        UIHostingController(rootView: Subview(imageString: "R3_2x")),
        UIHostingController(rootView: Subview(imageString: "R4_2x")),
        UIHostingController(rootView: Subview(imageString: "R5_2x")),
        UIHostingController(rootView: Subview(imageString: "R6_2x")),
        UIHostingController(rootView: Subview(imageString: "R7_2x")),
        UIHostingController(rootView: Subview(imageString: "M0_2x")),
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                PageViewController(viewControllers: subviews)
                    .frame(height: 500)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
