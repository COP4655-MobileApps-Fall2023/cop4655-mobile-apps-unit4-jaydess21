//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite nature spot ?",
                 description: "Nature always wears the colors of the spirit."),
            Task(title: "Your favorite type of dog ?",
                 description: "The world would be a nicer place if everyone had the ability to love as unconditionally as a dog!"),
            Task(title: "Your favorite candle scent ? 🕯",
                 description: "Candles are like friends. The more you have, the more light you have to spread!" )
        ]
    }
}
