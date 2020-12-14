//
//  VIllainCellView.swift
//  Project_FundamentosIOS_ALP
//
//  Created by Alejandro Lorenzo perez on 10/12/20.
//

import Foundation
import UIKit
 // enlazo class en el dni de tableview en storyboard
class VillianCellView: UITableViewCell {
    @IBOutlet var cellView: UIView?
    @IBOutlet var villianImage: UIImageView?
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
       
        villianImage?.image = nil
        name?.text = nil
        power?.text = nil
    }
    
    func configureView(villians: Villian) {
        villianImage?.image = UIImage(named: villians.image ?? "")
        name?.text = villians.name
        power?.text = villians.power
        
    }
    
    
}
