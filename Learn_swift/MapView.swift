//
//  MapKit.swift
//  Learn_swift
//
//  Created by MACBOOK PRO on 2022/02/18.
//

import MapKit
import SwiftUI

struct MapView: View{
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.479980248017, longitude: 127.12170291818),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    
    
    
    var body: some View{
        Map(coordinateRegion: $region)
    }
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
