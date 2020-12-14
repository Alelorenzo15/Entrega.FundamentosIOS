//
//  File.swift
//  Project_FundamentosIOS_ALP
//
//  Created by Alejandro Lorenzo perez on 9/12/20.
//

import UIKit

class HomeViewController2: UIViewController {
    
    //conecto la var con la vista
    @IBOutlet var tableview: UITableView?
    
    private var villianRepository = VillianRepository ()
    private var villians: Villians = [ ]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        title = " Villains"
        
        loadData()
        
        tableview?.dataSource = self
        tableview?.delegate = self
        
    }
    
    private func loadData() {
        villians = villianRepository.villianSample
    }
}
    
extension HomeViewController2: UITableViewDelegate , UITableViewDataSource, UICollectionViewDelegateFlowLayout {
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview?.dequeueReusableCell(withIdentifier: "VillianCellView",
                                                  for: indexPath) as? VillianCellView
        
        if(indexPath.row < villians.count) {
            cell?.configureView(villians: villians[indexPath.row])
            }
            return cell ?? UITableViewCell()
        }
    
   //num de filas en la seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villians.count
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 220.0
        }
        
    }


