//
//  TitleRow.swift
//  ChatBot
//
//  Created by Victor Zarzar on 10/02/23.
//

import SwiftUI

struct TitleRow: View {
    var ImageUrl = URL(string:
                       "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.etsy.com%2Fse-en%2Flisting%2F807113533%2Fcustom-star-wars-pet-portrait-luke&psig=AOvVaw1stslCTbK60WHKHTqHBS12&ust=1676143211573000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPi13ZfWi_0CFQAAAAAdAAAAABAW")
    var name = "Victor Zarzar"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: ImageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
