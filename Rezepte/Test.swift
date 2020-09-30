//
//  Test.swift
//  Rezepte
//
//  Created by Josina Zotzmann on 30.09.20.
//
/*
import Foundation



var body: some View {
    LazyVGrid(columns: layout, spacing: 32) {
        if !filterBySearch.isEmpty {
            ForEach(recipesData.recipes.filter{
                        $0.title.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory || $0.subtitle.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory }, id: \.title) { recipe in
                NavigationLink(
                    destination: DetailView(recipe: recipe),
                    label: {
                        GridCellView(recipesData: recipesData, recipes: recipe)
                    })
            }
        } else {
            let recipes = recipesData.recipes.filter { $0.category.contains(filterByCategory)}
            ForEach(recipes) { recipe in
                NavigationLink(
                    destination: DetailView(recipe: recipe),
                    label: {
                        GridCellView(recipesData: recipesData, recipes: recipe)
                    })
            }
           
        }
    }
}



VStack{
    ScrollView(.vertical, showsIndicators: false){
        VStack{
            HStack{
                if !filterBySearch.isEmpty {
                    ForEach(recipesData.recipes.filter{
                                $0.title.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory || $0.subtitle.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory }, id: \.title) { recipe in
                        NavigationLink(
                            destination: DetailView(recipe: recipe),
                            label: {
                                GridCellView(recipesData: recipesData, recipes: recipe)
                            })
                    }
                } else {
                    let recipes = recipesData.recipes.filter { $0.category.contains(filterByCategory)}
                    ForEach(recipes) { recipe in
                        NavigationLink(
                            destination: DetailView(recipe: recipe),
                            label: {
                                GridCellView(recipesData: recipesData, recipes: recipe)
                            })
                    }
                   
                }
                Spacer()
            }.padding(.top, 20)
                Spacer()
            }.padding()
        }
    }








HStack{
    VStack(alignment: .leading, spacing: 12) {
        Text("Einkaufsliste")
            .font(.system(size: 45, weight: .medium, design: .serif))
            .padding(.top, 20)
            .padding(.leading)
        HStack{
            listInput
                .font(.system(size: 16, weight: .light, design: .monospaced))
                .padding(.leading)
            Spacer()
        }
        List {
            ForEach(self.taskStore.tasks) { task in
                Text("• " + task.toBuyItem)
                    .font(.system(size: 16, weight: .light, design: .monospaced))
                    .padding()
            }.onMove(perform: self.move)
            .onDelete(perform: self.delete)
        } .navigationBarItems(trailing: EditButton())
        
        
    }
    
    .padding(.top, 30)
    
    Spacer()
}.padding()

}
 
 */


