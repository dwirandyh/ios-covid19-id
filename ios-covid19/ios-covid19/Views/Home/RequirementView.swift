//
//  RequirementView.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct RequirementView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Spacer()
            }
            Text("Requirements").font(.title).fontWeight(.bold).foregroundColor(Color.white)
            Text("Help you prevent viruses better").foregroundColor(Color("textColorWhite"))
            
            HStack(alignment: .center, spacing: 20){
                Thumbnail(iconName: "maskIcon", backgroundColor: Color("maskBg"), title: "Mask")
                
                Thumbnail(iconName: "glovesIcon", backgroundColor: Color("glovesBg"), title: "Gloves")
                
                Thumbnail(iconName: "soapIcon", backgroundColor: Color("soapBg"), title: "Soap")
                
                Thumbnail(iconName: "vitaminIcon", backgroundColor: Color("vitaminBg"), title: "Vitamin")
                
            }.frame(height: 120)
                .padding(.top, 16)
        }
    }
}

struct Thumbnail : View {
    let iconName: String
    let backgroundColor: Color
    let title: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack{
                    Image(self.iconName)
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                }
                .frame(width: geometry.size.width, height: geometry.size.width)
                .background(self.backgroundColor)
                .mask(Circle())
                
                Text(self.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct RequirementView_Previews: PreviewProvider {
    static var previews: some View {
        RequirementView().background(Color("background"))
    }
}
