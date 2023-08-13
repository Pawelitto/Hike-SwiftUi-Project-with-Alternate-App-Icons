//
//  CustomListRow.swift
//  Hike
//
//  Created by praktykant on 13/08/2023.
//

import SwiftUI

struct CustomListRow: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
                
            }
            else if (rowLinkLabel != nil &&
                     rowLinkDestination != nil) {
                Link(rowLinkLabel!,destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            // Label
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRow_Previews: PreviewProvider {
    static var previews: some View {
        List() {
            CustomListRow(
                rowLabel: "Website",
                rowIcon: "globe",
                rowContent: nil,
                rowTintColor: .pink,
                rowLinkLabel: "GitHub",
                rowLinkDestination: "https://github.com/pawelitto"
            )
        }
    }
}
