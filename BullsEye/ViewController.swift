import UIKit

class ViewController: UIViewController {
  
  var currentValue: Int = 0
  var targetValue: Int = 0
  
  @IBOutlet weak var slider: UISlider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
    
  @IBAction func showAlert() {
    let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
    let alert = UIAlertController(title: "Hello, world!", message: message, preferredStyle: .Alert)
    let action = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
    alert.addAction(action)
    presentViewController(alert, animated: true, completion: nil)
    startNewRound()
  }
    
  @IBAction func sliderMoved(slider: UISlider) {
    currentValue = lroundf(slider.value)
  }
  
  func startNewRound() {
    targetValue = 1 + Int(arc4random_uniform(100))
    currentValue = 50
    slider.value = Float(currentValue)
  }

}

