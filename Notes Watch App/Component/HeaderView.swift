//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Rafael Carvalho on 16/03/23.
//

import SwiftUI

struct HeaderView: View {
    var title: String = ""

    var body: some View {
        VStack {
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }

            HStack {
                Capsule()
                    .frame(height: 1)

                Image(systemName: "note.text")

                Capsule()
                    .frame(height: 1)
            } // HSTACK
            .foregroundColor(.accentColor)
        } // VSTACK
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
