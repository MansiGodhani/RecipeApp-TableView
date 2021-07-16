//
//  RecipeListVC.swift
//  RecipeApp
//
//  Created by DCS on 01/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RecipeListVC: UIViewController {
    
    var tableView = UITableView()
    var recipeArr = ["Pizza","Burger","Pasta","Frankie","Dessert"]
    var recipesubtitlelbl = ["Farmhouse Pizza", "AlooTiki Burger", "Masala Pasta", "Alooo Paneer Frankie", "Chocolate Dessert" ]
    var recipeDesc = [
        "-> 2 Numbers pizza base readymade ,\n-> 100 grams onion chopped ,\n-> 100 grams tomato chopped ,\n-> 70 grams capsicum ( green pepper) chopped , 50 grams mushroom sliced",
        "-> 3 potatoes ((medium to large),\n-> 300 grams) ,\n-> 1 grams carrot ((medium to large), 100 to 125) ,\n-> 8 to 9 grams french beans (- 40 grams) , ⅓ to ½ cup peas (- fresh or frozen) ,\n-> ½ cup finely chopped onions (or 1 medium sized onion)",
        "-> 1½ cups Raw Penne Pasta or Fusilli Pasta ,\n-> 1 teaspoon Oil, optional , Salt to taste , Tomato Pasta Sauce (made with approx. 6 large tomatoes) ,\n-> Parmesan Cheese or Feta Cheese or Mozzarella Cheese, for garnishing (optional)",
        "-> 2 cups Maida (all-purpose flour) ,\n-> ½ tsp Salt ,\n-> ¼ cup Curd (Plain yogurt) ,\n-> ½ cup Water ,\n-> 1 tbsp Oil (+ some more required for cooking the rotiihalf cooked)",
        "-> 100g classic 74% dark chocolate,\n-> chopped, plus extra shards to decorate (optional) ,\n-> 25g butter, cubed ,\n-> 3 large separated ,\n-> 2 tbsp caster sugar ,\n-> 2 tbsp whipping cream (optional)"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recipes"
        setTableView()
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setTableView(){
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        self.view.addSubview(tableView)
        
        tableView.register(RecipeCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension RecipeListVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RecipeCell
        
        cell.userImage.image = UIImage(named: recipeArr[indexPath.row])
        cell.namelbl.text = recipeArr[indexPath.row]
        cell.descriptiontitlelbl.text = recipesubtitlelbl[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = RecipeBookVC()
        vc .subtitlelbl = recipesubtitlelbl[indexPath.row]
        vc.image = UIImage(named: recipeArr[indexPath.row])!
        vc.lbl = recipeArr[indexPath.row]
        vc.desc = recipeDesc[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}



