//
//  DetailViewController.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var imageList: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageCarousel()
    }
    
    func setImageCarousel() {
        pageControl.numberOfPages = imageList.count
        let width = UIScreen.main.bounds.width
        imageScrollView.delegate = self
        imageScrollView.isPagingEnabled = true
        imageScrollView.contentSize = CGSize(width: width * CGFloat(imageList.count), height: 345)
        imageScrollView.showsHorizontalScrollIndicator = false
        
        for index in 0 ..< imageList.count {
            let contentPosition = index * Int(width)
            let imageView = UIImageView(frame: CGRect(x: CGFloat(contentPosition), y: 0, width: width, height: 345))
            imageView.image = UIImage(named: imageList[index])
            imageView.contentMode = .scaleAspectFit
            imageScrollView.addSubview(imageView)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(page)
    }
}
