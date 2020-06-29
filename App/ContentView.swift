//
//  ContentView.swift
//  App
//
//  Created by Michael Amiro on 29/06/2020.
//  Copyright © 2020 Michael Amiro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private var greeting: String {
        return "Hi, I'm Amiro"
    }
    private var title: String {
        return "iOS Developer | UXer"
    }
    private var introduction: String {
        return "An iOS Dev based in Nairobi, Kenya 🇰🇪 looking to undertake an iOS app project for an East African SME or Product Team, PRO BONO!"
    }
    private var backStory: String {
        return "There should be an existing product with an Android App already in store, a functional API, perks to one with UI Designs ready or can be made available quickly. Any parties interested in this can DM me on Twitter or LinkedIn before the 3rd of July."
    }
    private var termsAndConditions: String {
        return "*Terms and Conditions apply"
    }
    private var twitterHandle: String {
        return "@theamiro"
    }
    private var linkedInHandle: String {
        return "/michaelamiro"
    }
    private var twitterColor: Color {
        return Color(.sRGB, red: 29/255, green: 161/255, blue: 242/255, opacity: 1.0)
    }
    private var linkedInColor: Color {
        return Color(.sRGB, red: 0.0, green: 119/255, blue: 181/255, opacity: 1.0)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment:.center, spacing: 10.0) {
                Image("amiro-memoji")
                    .resizable().antialiased(true)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60.0, height: 60.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 1.5))
                VStack(alignment: .leading, spacing: 0) {
                    Text(greeting)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text(title)
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }.padding(.bottom, 10.0)
            Text(introduction)
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(.primary)
                .padding(.bottom, 5.0)
            Text(backStory)
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .padding(.top, 5.0)
                .padding(.bottom, 15.0)
            HStack(alignment: .center, spacing: 20.0) {
                HStack {
                    Image("twitter-logo")
                        .antialiased(true)
                        .resizable()
                        .frame(width: 30.0, height: 30.0, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    
                    Text(twitterHandle)
                        .font(.footnote)
                        .foregroundColor(twitterColor)
                }
                HStack {
                    Image("linkedin-logo")
                        .antialiased(true)
                        .resizable()
                        .frame(width: 24.0, height: 24.0, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                    
                    Text(linkedInHandle)
                        .font(.footnote)
                        .foregroundColor(linkedInColor)
                }
            }
            Spacer()
                .frame(height: 40.0)
            Text(termsAndConditions)
                .font(.footnote)
                .foregroundColor(.gray)
                .opacity(0.7)
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
