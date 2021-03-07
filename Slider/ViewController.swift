//
//  ViewController.swift
//  Slider
//
//  Created by Deepa & Aneesh on 3/6/21.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var valueText: UILabel!
    @IBOutlet weak var sliderView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 0, y: 0, width: sliderView.frame.width, height: sliderView.frame.height)
        let circularSlider = CircularSlider(frame: frame)
        
        // setup target to watch for value change
        circularSlider.addTarget(self, action: #selector(ViewController.valueChanged(_:)), for: UIControl.Event.valueChanged)
        
        // setup slider defaults
        circularSlider.maximumAngle = 180.0
        circularSlider.unfilledArcLineCap = .round
        circularSlider.filledArcLineCap = .round
        circularSlider.handleType = .bigCircle
        circularSlider.currentValue = 10
        circularSlider.lineWidth = 10
        circularSlider.labelDisplacement = -10.0
        //circularSlider.innerMarkingLabels = ["0", "20", "40", "60", "80", "100"];
        
        // add to view
        sliderView.addSubview(circularSlider)
        
        // NOTE: create and set a transform to rotate the arc so the white space is centered at the bottom
        circularSlider.transform = circularSlider.getRotationalTransform()
      }
      
        @objc func valueChanged(_ slider: CircularSlider) {
            valueText.text = "\(slider.currentValue)"
            
          }
    }
        // Do any additional setup after loading the view.

    



