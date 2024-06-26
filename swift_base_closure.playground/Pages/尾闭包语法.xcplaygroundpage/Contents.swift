//: [Previous](@previous)

import Foundation
import SwiftUI
import UIKit

func httpLoadData(url: String) -> Data? {
    print("http url: \(url)")
    print("模拟加载二进制数据")
    return Data()
}

func httpLoadPicture(from pictureUrl: String, completion: (UIImage) -> Void, onFailure:() -> Void) {
    if let data = httpLoadData(url:pictureUrl) {
        if let picture = UIImage(data: data) {
            completion(picture)
        } else {
            onFailure()
        }
    } else {
        onFailure()
    }
    print("load picture")
}

httpLoadPicture(from: "http://127.0.0.1:8080/image.png", completion: {
    image in print("finished")
}, onFailure: {
    print("Couldn't load")
})

httpLoadPicture(from: "http://127.0.0.1:8080/image.png") {picture in
    print(picture)
} onFailure: {
    print("Couldn't load")
}

print(1)

//: [Next](@next)
