//
//  File.swift
//  Project_FundamentosIOS_ALP
//
//  Created by Alejandro Lorenzo perez on 9/12/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    //conecto la var con la vista 
    @IBOutlet var tableview: UITableView?
    
    private var heroRepository = HeroRepository()
    private var heroes: Heroes = [ ]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        title = "SuperHeroes"
        
        loadData()
        
        tableview?.dataSource = self
        tableview?.delegate = self
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let destination = segue.destination as? DetailViewController,
//                  let data = sender as? Hero else {
//                return
//            }
//
//
//            }
//
//            destination.hero = heroes[indexPath.row]
//        }

    
    private func loadData() {
        heroes = heroRepository.heroesSample
    }
}
    
extension HomeViewController: UITableViewDelegate , UITableViewDataSource  {
   //num de filas en la seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count 
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 220.0
        }
    
    //celda que tineen que pintar para una posicion
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview?.dequeueReusableCell(withIdentifier: "HeroCellView",
                                                        for: indexPath) as? HeroCellView
        
        if(indexPath.row < heroes.count) {
            cell?.configureView(heroes: heroes[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
        
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row < heroes.count) {
            print(heroes[indexPath.row])
            
        }
        
    }
}
