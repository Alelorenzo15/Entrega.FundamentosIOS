//
//  HeroeCellView.swift
//  Project_FundamentosIOS_ALP
//
//  Created by Alejandro Lorenzo perez on 10/12/20.
//

import UIKit
 // enlazo class en el dni de tableview en storyboard
class HeroCellView: UITableViewCell {
    @IBOutlet var cellView: UIView?
    @IBOutlet var heroImage: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var power: UILabel?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
                
        cellView?.layer.cornerRadius = 4.0
        cellView?.layer.shadowColor = UIColor.gray.cgColor
        cellView?.layer.shadowOffset = CGSize.zero
        cellView?.layer.shadowOpacity = 0.7
        cellView?.layer.shadowRadius = 4.0

    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
       
        heroImage?.image = nil
        name?.text = nil
        power?.text = nil
    }
    
    func configureView(heroes: Hero) {
        heroImage?.image = UIImage(named: heroes.image ?? "")
        name?.text = heroes.name
        power?.text = heroes.power
        
    }
    
    
}
