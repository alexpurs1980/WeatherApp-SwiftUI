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
var temperatureWeekArray: [String] = ["22℃", "23℃", "21℃", "19℃", "22℃", "24℃", "25℃"]


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
                
                HStack (spacing: 20){
                    WeatherDayView(dayOfWeek: "MON",
                                   imageNameForWearher: "cloud.sun.fill",
                                   temperature: temperatureWeekArray[0])
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageNameForWearher: "sun.max.fill",
                                   temperature: temperatureWeekArray[1])
                    WeatherDayView(dayOfWeek: "WED",
                                imageNameForWearher: "cloud.sun.fill",
                                temperature: temperatureWeekArray[2])
                    WeatherDayView(dayOfWeek: "THU",
                                imageNameForWearher: "cloud.sun.rain.fill",
                                temperature: temperatureWeekArray[3])
                    WeatherDayView(dayOfWeek: "FRI",
                                imageNameForWearher: "cloud.sun.fill",
                                temperature: temperatureWeekArray[4])
                        
                }
                .padding(.all)
                
                
                
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

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageNameForWearher: String
    var temperature: String
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.blue)
            Image(systemName: imageNameForWearher)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(temperature)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.white)
            
        }
        
    }
}
