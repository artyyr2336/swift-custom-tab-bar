    //
    //  ContentView.swift
    //  CustomSwiftTabBar
    //
    //  Created by Артур on 20.03.2022.
    //

    import SwiftUI

    struct ContentView: View {
        @State var selctedIndex = 0;
        
        let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
        ]
        
        var body: some View {
            VStack{
                
                ZStack{
                    switch selctedIndex{
                        case 0: NavigationView{
                            
                            VStack{
                                Text("First Screen")
                            }.navigationTitle("First")
                        }
                    case 1: NavigationView{
                        
                        VStack{
                            Text("Second Screen")
                        }.navigationTitle("Second")
                    }
                    case 2: NavigationView{
                        
                        VStack{
                            Text("3 Screen")
                        }.navigationTitle("Third")
                    }
                    case 3: NavigationView{
                        
                        VStack{
                            Text("4 Screen")
                        }.navigationTitle("Home")
                    }
                    case 4: NavigationView{
                        
                        VStack{
                            Text("5 Screen")
                        }.navigationTitle("Home")
                    }
                    case 5: NavigationView{
                        
                        VStack{
                            Text("First Screen")
                        }.navigationTitle("Home")
                    }
                    default:NavigationView{
                        
                        VStack{
                            Text("Second Screen")
                        }.navigationTitle("Second")
                    }
                    }
                }
             
                Divider()
                HStack{
                    ForEach(0..<5,id: \.self){number in
                        Spacer()
                        Button(
                        action: {
                            self.selctedIndex = number
                        },
                        label: {
                            if number==2{
                                Image(systemName: icons[number])
                                    .font(
                                        .system(
                                            size: 25,
                                            weight: .regular,
                                            design: .default))
                                  
                                    .foregroundColor(.white)
                                    .frame(width: 60, height: 60)
                                    .background(Color.blue)
                                    .cornerRadius(30)
                                
                            }
                            else{
                                Image(systemName: icons[number])
                                .font(
                                    .system(
                                        size: 25,
                                        weight: .regular,
                                        design: .default))
                                .foregroundColor(
                                    selctedIndex == number ? .black : Color(UIColor.lightGray))
                            }
                            }
                        )
                        Spacer()
                        
                    }
                }
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
