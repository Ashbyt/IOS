//
//  ViewController.swift
//  Assignment1
//
//  Created by Ashley Bythell on 24/5/19.
//  Copyright © 2019 Ashley Bythell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var light = 0  //initialise to 0
    //0 = Red
    //1 = Amber
    //2 = Green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        drawCircle(color: "white", ImageViewName: imageViewGreen) //clear lights
        drawCircle(color: "white", ImageViewName: imageViewAmber) //clear lights
        drawCircle(color: "Red", ImageViewName: imageViewRed) //default to red

        light = 2 //next light sequence
        labelStatus.text = "Status: Stop!"
    }

    @IBOutlet weak var labelStatus: UILabel!
    @IBOutlet weak var imageViewRed: UIImageView!
    @IBOutlet weak var imageViewAmber: UIImageView!
    @IBOutlet weak var imageViewGreen: UIImageView!
   
    
    @IBAction func btnChangeLight(_ sender: Any) {
        updateUI()
    }

    func drawCircle(color: String, ImageViewName: UIImageView ) {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 280, height: 250))
        
        let img = renderer.image { ctx in
            let rect = CGRect(x: 5, y: 5, width: 270, height: 240)
    
            switch color{
            case "Amber":
                ctx.cgContext.setFillColor(UIColor.orange.cgColor)
            case "Red":
                ctx.cgContext.setFillColor(UIColor.red.cgColor)
            case "Green":
                ctx.cgContext.setFillColor(UIColor.green.cgColor)
            case "White":
                ctx.cgContext.setFillColor(UIColor.white.cgColor)
            default:
                ctx.cgContext.setFillColor(UIColor.white.cgColor)
            }
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: rect)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        ImageViewName.image = img
    }
    
    func updateUI(){
        switch light {
        case 0:
            drawCircle(color: "Red", ImageViewName: imageViewRed) //red
            drawCircle(color: "white", ImageViewName: imageViewGreen)
            drawCircle(color: "white", ImageViewName: imageViewAmber)
            labelStatus.text = "Status: Stop!"
            light = 2 //sets next sequence of lights
        case 1:
            
            drawCircle(color: "Amber", ImageViewName: imageViewAmber) //Amber
            drawCircle(color: "white", ImageViewName: imageViewGreen)
            drawCircle(color: "white", ImageViewName: imageViewRed)
            labelStatus.text = "Status: Wait!"
            light = 0 //sets next sequence of lights
        case 2:
            drawCircle(color: "Green", ImageViewName: imageViewGreen) //green
            drawCircle(color: "white", ImageViewName: imageViewRed)
            drawCircle(color: "white", ImageViewName: imageViewAmber)
            labelStatus.text = "Status: Go!"
            light = 1 //sets next sequence of lights
        default:
            drawCircle(color: "Red", ImageViewName: imageViewRed) //red
            drawCircle(color: "white", ImageViewName: imageViewGreen)
            drawCircle(color: "white", ImageViewName: imageViewAmber)
            labelStatus.text = "Status: Stop!"
            light = 2 //sets next sequence of lights
        }
        

    }
}

