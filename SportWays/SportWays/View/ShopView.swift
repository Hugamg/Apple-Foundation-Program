import SwiftUI

struct ShopView: View {
    
    var items: [ItemModel]
    var isShowingInformations: Bool = true
    @State var currentCategory: String = ""
    
    var cities: [String] {
        ["Tout"] + Array(Set(items.map { $0.label })).sorted()
    }
    
    // MARK: filter items by current category
    var selectedItems: [ItemModel] {
        var filtered = items.filter { item in item.label == currentCategory}
        if currentCategory == "" {
            filtered = items
        }
        return filtered
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    if isShowingInformations {
 
                        Rectangle()
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .foregroundStyle(.yellowTextButton)
                        Divider()
                            .padding(.bottom)
                        
                        // MARK: Scroll horizontal des catégories
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(itemTypes) { itemType in
                                    Button {
                                        if currentCategory != itemType.type {
                                            currentCategory = itemType.type
                                        } else {
                                            currentCategory = ""
                                        }
                                    } label: {
                                        VStack {
                                            HStack {
                                                Text(itemType.type)
                                                    .font(.default)
                                                    .foregroundStyle(
                                                        currentCategory == itemType.type ? .yellowTextButton : .fontPrincipal
                                                    )
                                                    .fontWeight(.black)
                                                    .fontWidth(.expanded)
                                                Rectangle()
                                                    .frame(width: 1, height: 20)
                                                    .foregroundStyle(.yellowTextButton)
                                            }
                                            Image(systemName: "circle.fill")
                                                .foregroundStyle(
                                                    currentCategory == itemType.type ? .yellowTextButton : .clear
                                                )
                                                .font(.system(size: 5))
                                        }
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.never)
                        .padding(.bottom)
                    }
                    
                    ScrollView {
                        ForEach(selectedItems) { item in
                            SingleShopView(
                                image: item.image,
                                name: item.title,
                                category: item.label,
                                points: item.point,
                                isShowingInformations: isShowingInformations
                            )
                            
                            Divider()
                                .overlay(.yellowTextButton)
                                .frame(height: 20)
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                .globalPageStyle()
               
                .navigationTitle("nbwrevbiowrb")
                .navigationBarTitleDisplayMode(.inline)
                
                
                
                // MARK: Toolbar identique à NearbyActivityView
                .toolbar {
                    if isShowingInformations{
                        ToolbarItem(placement: .principal) {
                            Text("Mes points: 12500")
                                .font(.title3)
                                .foregroundStyle(.fontPrincipal)
                                .fontWeight(.black)
                                .fontWidth(.expanded)
                                .opacity(1)
                        }
                        
                        ToolbarItem(placement: .topBarTrailing) {
                            Menu {
                                
                            } label: {
                                HStack {
                                    Image(systemName: "slider.horizontal.3")
                                        .foregroundStyle(.fontPrincipal)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ShopView(items: items, isShowingInformations: true)
}
