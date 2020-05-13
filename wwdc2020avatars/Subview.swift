//
//  Subview.swift
//  wwdc2020avatars
//
//  Created by Ramill Ibragimov on 13.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct Subview: View {
    var imageString: String
    
    var body: some View {
        ZStack {
            Color.black
            Image(imageString)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "L1_2x")
    }
}
