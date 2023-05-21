//
//  ViewController.swift
//  BaiTapBuoi11
//
//  Created by Trương Duy Tân on 20/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        drawView()
    }
    func drawLayer(shapeLayer: CAShapeLayer){
//        view1.backgroundColor = .orange
        
        let view01: CAShapeLayer = CAShapeLayer()
        let view02:CAShapeLayer = CAShapeLayer()
        let view03:CAShapeLayer = CAShapeLayer()
        let view04:CAShapeLayer = CAShapeLayer()
        let path = UIBezierPath()
        let path1 = UIBezierPath()
        let path2 = UIBezierPath()
        let path3 = UIBezierPath()
        let orangeColor1 = UIColor(red: 0.935, green: 0.698, blue: 0.478, alpha: 1.000)
        let orangeColor2 = UIColor(red: 0.953, green: 0.698, blue: 0.678, alpha: 1)
        let orangeColor3 = UIColor(red: 0.812, green: 0.4, blue: 0.22, alpha: 1)
        let orangeColor4 = UIColor(red: 0.667, green: 0.369, blue: 0.176, alpha: 1)

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 10, y: 10))
        path.addLine(to: CGPoint(x: 90, y: 10))
        path.addLine(to: CGPoint(x: 100, y: 0))
        view01.fillColor = orangeColor1.cgColor
        view01.path = path.cgPath
//        view1.layer.addSublayer(shapeLayer)
        shapeLayer.insertSublayer(view01, at: 0)
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: 10, y: 10))
        path1.addLine(to: CGPoint(x: 10, y: 90))
        path1.addLine(to: CGPoint(x: 0, y: 100))
        view02.fillColor = orangeColor2.cgColor
        view02.path = path1.cgPath
//        view1.layer.addSublayer(shapeLayer)
        shapeLayer.insertSublayer(view02, at: 0)
        path2.move(to: CGPoint(x: 0, y: 100))
        path2.addLine(to: CGPoint(x: 10, y: 90))
        path2.addLine(to: CGPoint(x: 90, y: 90))
        path2.addLine(to: CGPoint(x: 100, y: 100))
        view03.fillColor = orangeColor3.cgColor
        view03.path = path2.cgPath
//        view1.layer.addSublayer(shapeLayer)
        shapeLayer.insertSublayer(view03, at: 0)
        path3.move(to: CGPoint(x: 100, y: 100))
        path3.addLine(to: CGPoint(x: 90, y: 90))
        path3.addLine(to: CGPoint(x: 90, y: 10))
        path3.addLine(to: CGPoint(x: 100, y: 0))
        view04.fillColor = orangeColor4.cgColor
        view04.path = path3.cgPath
//        view1.layer.addSublayer(shapeLayer)
        shapeLayer.insertSublayer(view04, at: 0)
    }

    func drawView(){
        myView.backgroundColor = .gray
        let viewArray:[UIView] = [view1, view2, view3, view4]
        view1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view2.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        view3.frame = CGRect(x: 0, y: 200, width: 100, height: 100)
        view4.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        for i in viewArray{
            i.backgroundColor = .orange
            let shapeLayer: CAShapeLayer = CAShapeLayer()
            i.layer.addSublayer(shapeLayer)
            drawLayer(shapeLayer: shapeLayer)
        }
    }
}

