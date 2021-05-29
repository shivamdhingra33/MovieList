//
//  UIImageViewExtension.swift
//  MovieSearch
//
//  Created by Fleetx on 31/03/21.
//

import UIKit
import Kingfisher

extension UIImageView {
    func setPoster(withPath path: String?) {
        setImage(baseImageUrl + (path ?? ""))
    }
    
    func setImage(_ withUrlString: String?, placeholderImage: UIImage? = nil, completion: ((Result<UIImage,Error>) -> Void)? = nil) {
        if let urlString = withUrlString {
            let url = URL(string: urlString)
            self.kf.indicatorType = .activity
            let imageProcessor = ResizingImageProcessor(referenceSize: self.frame.size)
            self.kf.setImage(with: url, placeholder: placeholderImage, options: [.backgroundDecode, .cacheOriginalImage, .processor(imageProcessor)], completionHandler: { response in
                switch response {
                case .success(let imageResult):
                    Kingfisher.ImageCache.default.retrieveImage(forKey: urlString) { (result) in
                        if let img = try? result.get().image {
                            completion?(.success(img))
                        }
                    }
                    completion?(.success(imageResult.image as UIImage))
                case .failure(let error):
                    completion?(.failure(error))
                }
            })
        }
        else {
            self.image = placeholderImage
        }
    }
}
