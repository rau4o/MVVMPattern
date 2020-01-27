//
//  ViewModel.swift
//  MVVMPattern
//
//  Created by rau4o on 1/25/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import Foundation

public typealias ImageDownloadCompletionClosure = (_ imageData: NSData) -> Void

//var messierViewModel: [MessierViewModel] = []

var messierViewModel: [MessierViewModel] =
[MessierViewModel(messierDataModel: Messier1),
 MessierViewModel(messierDataModel: Messier8)]

class MessierViewModel {
    
    private let messierDataModel: MessierDataModel
    private var imageUrl: URL
    private var updatedDate: Date?
    
    init(messierDataModel: MessierDataModel) {
        self.messierDataModel = messierDataModel
        self.imageUrl = URL(string: messierDataModel.imageLink)!
    }
    
    public var formalName: String {
        return "Formal name: " + messierDataModel.formalName
    }
    
    public var commonName: String {
        return "Common name: " + messierDataModel.commonName
    }

    public var dateUpdated: String {
        let dateString = String(messierDataModel.updatedDate.year) + "-" + String(messierDataModel.updatedDate.month) + "-" + String(messierDataModel.updatedDate.day)
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMMM dd, yyyy"
        
        if let date = dateFormatterGet.date(from: dateString) {
            updatedDate = date
            return "Updated: " + dateFormatterPrint.string(from: date)
        }
        else {
            return "There was an error decoding the string"
        }
    }
    
    public var thumbnail: String {
        return messierDataModel.thumbnail
    }
    
    func download(completionHanlder: @escaping ImageDownloadCompletionClosure){
        
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        let request = URLRequest(url:imageUrl)
        
        let task = session.downloadTask(with: request) { (tempLocalUrl, response, error) in
            
            if let tempLocalUrl = tempLocalUrl, error == nil {
                if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                    let rawImageData = NSData(contentsOf: tempLocalUrl)
                    completionHanlder(rawImageData!)
                    print("Successfully downloaded. Status code: \(statusCode)")
                }
            } else {
                print("Error took place while downloading a file. Error description: \(String(describing: error?.localizedDescription))")
            }
        } // end let task
        task.resume()
    }
}
