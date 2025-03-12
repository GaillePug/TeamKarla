//
//  Created by Gaille Teo for everyone out there taking care of a newborn baby and dealing with all the fussy overnights, monotonous routine of feeding peeing pooping, and still worried and in love enough to log all the events and activities for your precious little one. You got this!
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting = false
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(.pink)
                Text("Team Karla")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundStyle(.pink)
            }
            Image("babyAnimals")
                .resizable()
                .scaledToFit()
                .clipShape(.buttonBorder)
                .padding()
        }
        NavigationStack {
            List(Week.days, id: \.self) { day in
                HStack {
                    //Text("DP \(day.dp)")
                    //Text("Pumped \(day.bm)")
                    Image (systemName: day.icon)
                    NavigationLink(day.name, value: day)
                }
            }
            .navigationTitle("PostPartum Week 3")
            .navigationDestination(for: Day.self) { day in
                Text(day.name)
                Button("How it went") {
                    isPresenting = true
                }
                .padding()
                .sheet(isPresented: $isPresenting, content: {
                    return Text("Took \(day.dp)mg Domperidone and pumped \(day.bm)ml")
                })
            }
        }
    }
}
    #Preview {
        ContentView()
    }

