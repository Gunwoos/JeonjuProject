//
//  MapViewController.swift
//  Tong
//
//  Created by 임건우 on 2018. 10. 1..
//  Copyright © 2018년 lims. All rights reserved.
//

import CoreLocation
import MapKit
import UIKit

final class LocationInfo: MKPointAnnotation{
    var name: String!
    
}

class MapViewController: UIViewController {

    @IBOutlet weak var CategoryButton: UIButton!
    @IBOutlet weak var ListButton: UIButton!
    
    @IBOutlet weak var CultureButton: UIButton!
    @IBOutlet weak var FoodButton: UIButton!
    @IBOutlet weak var BusButton: UIButton!
    @IBOutlet weak var ToiletButton: UIButton!
    @IBOutlet weak var HotelButton: UIButton!
    
    var CategoryButtonCondition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.CultureButton.isHidden = true
        self.FoodButton.isHidden = true
        self.BusButton.isHidden = true
        self.ToiletButton.isHidden = true
        self.HotelButton.isHidden = true
        
        ButtonFrameSet(CultureButton)
        ButtonFrameSet(FoodButton)
        ButtonFrameSet(BusButton)
        ButtonFrameSet(ToiletButton)
        ButtonFrameSet(HotelButton)
        
        ButtonStyleSet(ListButton)
    
    }
    
    //MARK :
    @IBAction func CategoryButtonAction(_ sender: UIButton) {
        if CategoryButtonCondition == 0 {
            print("down")
            ShowButton()
            self.CategoryButton.imageView?.image = UIImage(named: "Image-up")
        }
        else if CategoryButtonCondition == 1{
            print("up")
            HideButton()
            self.CategoryButton.imageView?.image = UIImage(named: "Image-down")
            
        }
        else{
            print("haha")
        }
    }
    
    //MARK :
    func ShowButton(){
        UIView.animate(withDuration: 0.5) {
            self.CultureButton.isHidden = false
            self.CultureButton.center.y = self.CategoryButton.center.y + self.CategoryButton.frame.height + 5
            
            self.FoodButton.isHidden = false
            self.FoodButton.center.y = self.CategoryButton.center.y + (self.CategoryButton.frame.height + 5)*2
            
            self.BusButton.isHidden = false
            self.BusButton.center.y = self.CategoryButton.center.y + (self.CategoryButton.frame.height + 5)*3
            
            self.ToiletButton.isHidden = false
            self.ToiletButton.center.y = self.CategoryButton.center.y + (self.CategoryButton.frame.height + 5)*4
            
            self.HotelButton.isHidden = false
            self.HotelButton.center.y = self.CategoryButton.center.y + (self.CategoryButton.frame.height + 5)*5
            
            self.CategoryButtonCondition = 1
        }
    }
    
    //MARK :
    func HideButton(){
        UIView.animate(
            withDuration: 0.5,
            animations: {
                self.CultureButton.center = self.CategoryButton.center
                self.FoodButton.center = self.CategoryButton.center
                self.BusButton.center = self.CategoryButton.center
                self.ToiletButton.center = self.CategoryButton.center
                self.HotelButton.center = self.CategoryButton.center
            },
            completion: { _ in
                self.CultureButton.isHidden = true
                self.FoodButton.isHidden = true
                self.BusButton.isHidden = true
                self.ToiletButton.isHidden = true
                self.HotelButton.isHidden = true
                
                self.CategoryButtonCondition = 0
            }
        )
    }
    
    //MARK :
    @IBAction func ListButtonAction(_ sender: UIButton) {
        print("list Button")
    }
    
    //MARK :
    @IBAction func CultureButtonAction(_ sender: UIButton) {
        print("Culture Button")
        HideButton()
        addLocationAnnotation(1)
    }
    
    //MARK :
    @IBAction func FoodButtonAction(_ sender: UIButton) {
        print("Food Button")
        HideButton()
        addLocationAnnotation(2)
    }
    
    //MARK :
    @IBAction func BusButtonAction(_ sender: UIButton) {
        print("Bus Button")
        HideButton()
        addLocationAnnotation(3)
    
    }
    
    //MARK :
    @IBAction func ToiletButtonAction(_ sender: UIButton) {
        print("Toilet Button")
        HideButton()
        addLocationAnnotation(4)
    }
    
    //MARK :
    @IBAction func HotelButtonAction(_ sender: UIButton) {
        print("Hotel Button")
        HideButton()
        addLocationAnnotation(5)
    }

    func addLocationAnnotation(_ checkCategory: Int){
        
        if checkCategory == 1{
            print("show Culture Annotation")
            
        }
        else if checkCategory == 2{
            print("show Food Annotation")
        }
        else if checkCategory == 3{
            print("show Bus Annotation")
        }
        else if checkCategory == 4{
            print("show Toilet Annotation")
        }
        else if checkCategory == 5{
            print("show Hotel Annotation")
        }
        else{
            return
        }
    }
    
}


//35.827862, 127.115671
extension MapViewController: MKMapViewDelegate{
    // MARK :
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        
    }
    
    // MARK :
    /*
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
    }
    */
    
    // MARK :
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        
    }
    
    // MARK :
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        
    }
    
}
