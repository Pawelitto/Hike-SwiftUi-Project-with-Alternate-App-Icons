//
//  SettingsView.swift
//  Hike
//
//  Created by praktykant on 13/08/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            
            Section{
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                
                .padding(.top, 8)
                
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the beast day hikes in the app.")
                        .font(.footnote)
                        .italic()
                
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS

            
            // MARK: - SECTION: ABOUT
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                // 1. Basic Labeled Content
                // LabeledContent("Application", value: "Hike")
                
                // 2. Advanced Labeled Content
                
                CustomListRow(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRow(rowLabel: "Compatilibity", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .red)
                
                CustomListRow(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .red)
                
                CustomListRow(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRow(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Paweł Pietras", rowTintColor: .mint)
                
                CustomListRow(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRow(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "GitHub", rowLinkDestination: "https://github.com/pawelitto")
                

                
            } //:SECTION

        } //: LIST
            
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
