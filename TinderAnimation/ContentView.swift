//
//  ContentView.swift
//  TinderAnimation
//
//  Created by Lokeswari Satyanarayana on 05/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var parentLoaderFrame: CGFloat = 10
    @State var childLoaderFrame: CGFloat = 10
    
    var body: some View {
        GeometryReader { proxy in
            ZStack  {
                TinderLoader(frame: $parentLoaderFrame)
                    .frame(width: parentLoaderFrame,
                           height: parentLoaderFrame,
                           alignment: .center)
                Image(uiImage: UIImage(named: "newtProfilePicture") ?? UIImage())
                    .resizable()
                    .frame(width: TinderLoaderLayoutValues.profilePictureFrame,
                           height: TinderLoaderLayoutValues.profilePictureFrame,
                           alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .zIndex(1)
                TinderLoader(frame: $childLoaderFrame)
                    .frame(width: childLoaderFrame,
                           height: childLoaderFrame,
                           alignment: .center)
            }
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    self.parentLoaderFrame = TinderLoaderLayoutValues.parentLoaderEndFrame
                    self.childLoaderFrame = TinderLoaderLayoutValues.childLoaderEndFrame
                }
            }
            .fillScreen(alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
