//
//  ViewController.swift
//  collectionView
//
//  Created by Alfredo Amezcua on 4/21/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.center = view.center
        button.setTitle("Show Grid", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        
        //creating layout
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (view.frame.size.width/7)-3,                                height: (view.frame.size.width/7)-3)
        layout.minimumLineSpacing = 1
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        layout.minimumInteritemSpacing = 1
        
        //collection vc
        let vc = GridCollectionViewController(collectionViewLayout: layout )
        vc.title = " Grid System"
        vc.navigationItem.largeTitleDisplayMode = .always
        
        //Navigation vc
        let navVC = UINavigationController(rootViewController: vc)
        navVC.navigationBar.prefersLargeTitles = true
        
        //presenting view controller
        present(navVC, animated: true)
        
    }
    
    
}

