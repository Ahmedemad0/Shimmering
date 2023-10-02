//
//  FacebookShimmering.swift
//  Shimmer-Example
//
//  Created by Ahmed Emad on 02/10/2023.
//

import SwiftUI
import Shimmering

struct FacebookShimmering: View {
    var body: some View {
        NavigationStack {
            ForEach(0..<7) { _ in
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                    VStack(alignment: .leading, spacing: 6) {
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                            .padding(.trailing, 50)
                        RoundedRectangle(cornerRadius: 4)
                            .frame(height: 10)
                            .padding(.trailing, 100)
                    }
                }
                .padding(15)
                .shimmering()
            }
            .navigationBarTitle("Posts")
            .preferredColorScheme(.dark)
        }

    }
        
}

struct FacebookShimmering_Previews: PreviewProvider {
    static var previews: some View {
        FacebookShimmering()
    }
}
