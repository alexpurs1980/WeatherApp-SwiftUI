//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Алексей Пурис on 09.09.2023.
//

import SwiftUI

var cityName: String = "Moscow, Russia"
var mainTemperatureInt: Int = 21
var mainTemperatureString = String(mainTemperatureInt) + "℃"


struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors:[.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
            //main screen vertical stack with all views
            VStack {
                //Upper text - city name
                Text(cityName)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                //main temperature and icon screen block in center
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        //set multicolour
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text(mainTemperatureString)
                        .font(.system(size: 70, weight: .regular))
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
