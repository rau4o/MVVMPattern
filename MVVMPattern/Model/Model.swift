//
//  Model.swift
//  MVVMPattern
//
//  Created by rau4o on 1/25/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import Foundation

struct updatedDate {
    
    let month: Int
    let day: Int
    let year: Int
}

struct MessierDataModel {
    
    let formalName: String
    let commonName: String
    let pageLink: String
    let imageLink: String
    let updatedDate: updatedDate
    let description: String
    let thumbnail: String
    
}

let updateDateMessier1 = updatedDate(month: 10, day: 19, year: 2017)

let Messier1 = MessierDataModel(formalName: "Messier 1", commonName: "The Crab Nebula", pageLink: "https://www.nasa.gov/feature/goddard/2017/messier-1-the-crab-nebula", imageLink: "https://www.nasa.gov/sites/default/files/thumbnails/image/crab-nebula-mosaic.jpg", updatedDate: updateDateMessier1, description: "In 1054, Chinese astronomers took notice of a \'guest star\' that was, for nearly a month, visible in the daytime sky. The \'guest star\' they observed was actually a supernova explosion, which gave rise to the Crab Nebula, a six-light-year-wide remnant of the violent event. ...", thumbnail: "telescope")

let updateDateMessier8 = updatedDate(month: 10, day: 19, year: 2017)

let Messier8 = MessierDataModel(formalName: "Messier 8", commonName: "The Lagoon Nebula", pageLink: "https://www.nasa.gov/feature/goddard/2017/messier-8-the-lagoon-nebula", imageLink: "https://www.nasa.gov/sites/default/files/thumbnails/image/heic1015a.jpg", updatedDate: updateDateMessier8, description: "Commonly known as the Lagoon Nebula, M8 was discovered in 1654 by the Italian astronomer Giovanni Battista Hodierna, who, like Charles Messier, sought to catalog nebulous objects in the night sky so they would not be mistaken for comets. This star-forming cloud of interstellar gas is located in the constellation Sagittarius and its apparent magnitude of 6 makes it faintly visible to the naked eye in dark skies. The best time to observe M8 is during August. ...", thumbnail: "telescope")
