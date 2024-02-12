//
//  ViewController.swift
//  InterfaceAss
//
//  Created by Ashley Bythell on 25/8/19.
//  Copyright © 2019 Ashley Bythell. All rights reserved.
//

//tacker for buttons
//responses - blank icon and fruit once done..


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    @IBOutlet weak var btnD: UIButton!
    @IBOutlet weak var btnE: UIButton!
    @IBOutlet weak var btnF: UIButton!
    @IBOutlet weak var score: UILabel!
 
    var imagearray = [String]()
    var wordarray = [String]()
    var myword : String = ""
    var counter:Int = 0
    var counterString: String = ""
    
    @IBAction func btnClick(_ sender: UIButton) {
        if let title = sender.currentTitle {
            print("button", title)
            switch title {
            case "btnA":
           
                if myword == imagearray[0]{
                    counter+=1
                       btnA.isHidden = true
                    if counter <= 5 {
                        labelIntro.text = wordarray[counter]
                        myword = wordarray[counter]
                    }                    else{
                        labelIntro.text = "Game Over"
                        
                    }
                  //     print("counter", String(counter))
                }
                
            case "btnB":
                 if myword == imagearray[1]{
                    counter+=1
                    counterString = "Score" + String(counter)
                    
                    btnB.isHidden = true
                    if counter <= 5 {
                        labelIntro.text = wordarray[counter]
                        myword = wordarray[counter]
                    }                    else{
                        labelIntro.text = "Game Over"
                        
                    }
                
                }
            case "btnC":
              
     
                 if myword == imagearray[2]{
                    counter+=1
                       btnC.isHidden = true
                       print("counter", counterString)
                    if counter <= 5 {
                   labelIntro.text = wordarray[counter]
                    myword = wordarray[counter]
                    }                    else{
                        labelIntro.text = "Game Over"
                        
                    }
                    
                }
            case "btnD":
                 if myword == imagearray[3]{
             
                    counter+=1
                    counterString = "Score" + String(counter)
                  
                    print(counterString)
                       btnD.isHidden = true
                       print("counter", counterString)
                    if counter <= 5 {
                        labelIntro.text = wordarray[counter]
                        myword = wordarray[counter]

                    }
                    else{
                        labelIntro.text = "Game Over"
                        
                    }
               
                }
            case "btnE":
             
    
                
                 if myword == imagearray[4]{
                  
                    counter+=1
                    counterString = "Score" + String(counter)
                       btnE.isHidden = true
                  
                  
                    if counter <= 5 {
                        labelIntro.text = wordarray[counter]
                        myword = wordarray[counter]
                    }
                    else{
                        labelIntro.text = "Game Over"
                        
                    }

                }
            case "btnF":
            
                 if myword == imagearray[5]{
                    print("BINGO")
                    counter+=1
                    counterString = "Score" + String(counter)
                    btnF.isHidden = true
                    print("counter", counterString)
                    if counter <= 5 {
                        labelIntro.text = wordarray[counter]
                            myword = wordarray[counter]
                    }
                    else{
                        labelIntro.text = "Game Over"
                   
                    }
                }
            default:
                     print("")
            }
        }
    }

    //@IBAction func btnaction1(_ sender: Any) {
   
        

   // }
    
   // @IBOutlet weak var btnD: UIStackView!
   // @IBOutlet weak var btnA: UIButton!
    
  //  @IBAction func btnaction2(_ sender: Any) {
        
 //   }
    
   @IBOutlet weak var buttonTest: UIButton!
  //  @IBOutlet weak var imgView1: UIImageView!
  //  @IBOutlet weak var imgView2: UIImageView!
  //  @IBOutlet weak var imgView3: UIImageView!
  //  @IBOutlet weak var imgView4: UIImageView!
  //  @IBOutlet weak var imgView5: UIImageView!
  //  @IBOutlet weak var imgView6: UIImageView!
   @IBOutlet weak var labelIntro: UILabel!
    @IBOutlet weak var stackview: UIStackView!
    
    
    
    
    
    @IBAction func btnStart(_ sender: Any) {

        updateUI()
    }


    func updateUI(){
       
            btnA.isHidden = false
        
      btnA.isHidden = false
         btnB.isHidden = false
         btnC.isHidden = false
         btnD.isHidden = false
        btnE.isHidden = false
         btnF.isHidden = false
        counter = 0
        
     //   btnA.setImage(image, forState: UIControl.State.Normal)
        
        
        // may need to change to labels and files in array
        let myarray : [String] = ["apple", "banana", "pineapple", "grapes", "watermelon", "strawberry"]
         imagearray = shuffle(stringArray: myarray)
         wordarray = shuffle(stringArray: myarray)
        
        if  let imageA = UIImage(named: imagearray[0]){
            btnA.setImage(imageA, for: .normal)
            self.btnA.imageEdgeInsets = UIEdgeInsets.init(top:10, left:10, bottom:10, right:10)
        }
        
        if  let imageB = UIImage(named: imagearray[1]){
            btnB.setImage(imageB, for: .normal)
            self.btnB.imageEdgeInsets = UIEdgeInsets.init(top:10, left:10, bottom:10, right:10)
         //   self.btnB.imageView?.contentMode = .scaleAspectFit
        }
        
        if  let imageC = UIImage(named: imagearray[2]){
            btnC.setImage(imageC, for: .normal)
            self.btnC.imageEdgeInsets = UIEdgeInsets.init(top:10, left:10, bottom:10, right:10)
            //   self.btnB.imageView?.contentMode = .scaleAspectFit
        }
        
        if  let imageD = UIImage(named: imagearray[3]){
            btnD.setImage(imageD, for: .normal)
            self.btnD.imageEdgeInsets = UIEdgeInsets.init(top:10, left:10, bottom:10, right:10)
            //   self.btnB.imageView?.contentMode = .scaleAspectFit
        }
        
        if  let imageE = UIImage(named: imagearray[4]){
            btnE.setImage(imageE, for: .normal)
            self.btnE.imageEdgeInsets = UIEdgeInsets.init(top:10, left:10, bottom:10, right:10)
            //   self.btnB.imageView?.contentMode = .scaleAspectFit
        }
        
        if  let imageF = UIImage(named: imagearray[5]){
            btnF.setImage(imageF, for: .normal)
            self.btnF.imageEdgeInsets = UIEdgeInsets.init(top:10, left:10, bottom:10, right:10)
            //   self.btnB.imageView?.contentMode = .scaleAspectFit
        }
        
        
        
//do this in a loop!.
//imgView1.image = UIImage(named: imagearray[0])
//imgView2.image = UIImage(named: imagearray[1])
//imgView3.image = UIImage(named: imagearray[2])
//imgView4.image = UIImage(named: imagearray[3])
//imgView5.image = UIImage(named: imagearray[4])
//imgView6.image = UIImage(named: imagearray[5])
labelIntro.text = wordarray[counter]
myword = wordarray[counter]
        }

    
    
    func shuffle(stringArray:[String]) -> [String] {
        //create a copy of the input array
        var items = stringArray
        
        //our new shuffled array
        var shuffled = [String]();
        
        //iterate through the item array
        for _ in items.enumerated()
        {
            //choose a random number
            let rand = Int(arc4random_uniform(UInt32(items.count)))
            //using that random number, select a random item
            let randomItem = items[rand]
            //append that random item to our new shuffled array
            shuffled.append(randomItem)
            //make sure to remove that item, so we don't pick it again
            items.remove(at: rand)
        }
        return shuffled
    }
    
}
