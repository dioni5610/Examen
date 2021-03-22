//
//  ViewController.swift
//  Heroes
//
//  Created by Dioni Miramontes Gallegos on 18/03/21.
//

import UIKit



class ViewController: UIViewController {
    
    var gridUsed : Bool = false {
        didSet{
            updateApareance()
        }
        
    }
    
    fileprivate let Array = ["Dead Pool", "Storm", "Groot", "Vision", "Spiderman", "Black Panter", "Ironman"]
        fileprivate let itemsToDisplay = [("1", "Dead Pool"), ("2", "Storm"), ("3", "Groot"), ("4", "Vision"), ("5", "Spiderman"), ("6", "Black Panter"), ("7", "Ironman")] // image names
    
    fileprivate let imagesUrl = ["https://www.superherodb.com/pictures2/portraits/10/100/956.jpg", "https://www.superherodb.com/pictures2/portraits/10/100/1460.jpg", "https://www.superherodb.com/pictures2/portraits/10/100/181.jpg", "https://www.superherodb.com/pictures2/portraits/10/100/1448.jpg", "https://www.superherodb.com/pictures2/portraits/10/100/626.jpg", "https://www.superherodb.com/pictures2/portraits/10/100/698.jpg", "https://www.superherodb.com/pictures2/portraits/10/100/1309.jpg"]

    var gridconvert = GridConvert()
    var listConvert = ListConvert()
    
    @IBOutlet weak var gridButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.collectionViewLayout = gridconvert
        collectionView.dataSource = self as! UICollectionViewDataSource
        gridUsed = true
        
        fetchPostData {(Responses) in
            for Response in Responses{
                print(Response.results)
            }
        }
        
        
    
        
        }
        
       
    func fetchPostData(competionHandler : @escaping ([Response]) -> Void){
    
//    let url = URL(string: "https://superheroapi.com/api/10156112965520834/search/superman" )!
        
        guard let url = URL(string: Servicios.GET_HEROES_SERVICE) else { return }
        let task = URLSession.shared.dataTask(with: url){ (data, reponse, error) in
        guard let data = data else {return}
        
        do {
            let postsData = try JSONDecoder().decode([Response].self, from: data)
            competionHandler(postsData)
        }
        catch{
            
            let error = error
            print (error.localizedDescription)
        }
        
    }.resume()
        
    }
        
    
   
          
    
    @IBAction func listAction(_ sender: Any) {
       gridUsed = false
        
    }
    
    fileprivate func updateApareance (){
        let layout = gridUsed ? gridconvert : listConvert
        UIView.animate(withDuration: 0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(layout, animated: true)
        }
    }
    
    
    
    @IBAction func gridAction(_ sender: Any) {
        gridUsed = true
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsToDisplay.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: globalCell.self), for: indexPath) as! globalCell
        
        let index = indexPath.row % itemsToDisplay.count
        let imageName = itemsToDisplay[index].0
        cell.imageView.image = UIImage(named: imageName)
        cell.label.text = Array[indexPath.row]
        cell.cardView.setCardView(view: cell.cardView)
      
        return cell
        
        
        
    }
}

extension UIView {
    
    func setCardView(view : UIView){
        
        view.layer.cornerRadius = 2.0
        view.layer.borderColor  =  UIColor.lightGray.cgColor
        view.layer.borderWidth = 2.0
        view.layer.shadowOpacity = 1.0
        view.layer.shadowColor =  UIColor.clear.cgColor
        view.layer.shadowRadius = 2.0
        view.layer.shadowOffset = CGSize(width:3, height: 3)
        view.layer.masksToBounds = true
        
    }
}
