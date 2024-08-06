//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Kaylee Meier on 10/1/23.
//

import SwiftUI


struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false


    var body: some View {
        NavigationView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 3, contentMode: .fit)
                    .listRowInsets(EdgeInsets())


                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
        }
    }
}


struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
