//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Rafael Carvalho on 16/03/23.
//

import SwiftUI

struct DetailView: View {
    let note: Note
    let count: Int
    let index: Int

    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false

    var body: some View {
        VStack {
            HeaderView(title: "")

            Spacer()

            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .fontWeight(.semibold)
            }

            Spacer()

            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                            .toolbar() {
                                ToolbarItem(placement: .cancellationAction, content: {
                                    Button("Done"){
                                        self.isSettingsPresented = false
                                    }
                                })
                            }
                    })

                Spacer()

                Text("\(index + 1) / \(count)")

                Spacer()

                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            }
            .foregroundColor(.secondary)
        } // VSTACK
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData = Note(id: UUID(), text: "Hello")

    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
