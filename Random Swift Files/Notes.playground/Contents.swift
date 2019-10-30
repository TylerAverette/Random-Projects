//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
//        view.addSubview(label)
//        self.view = view
        
        /*
         Draw Towers
         create button array
         increment x by buttong height, decrement width by some value
         
         */
        
        var myArray: [Int] = [0,1,2]
        var newArray: [Int] = []
        
        for _ in myArray{
            if let x = myArray.last{
                newArray.append(x)
                myArray.removeLast()
            }
        }
        print(newArray)
        
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
