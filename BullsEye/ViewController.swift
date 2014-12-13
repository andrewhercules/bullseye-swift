import UIKit

class ViewController: UIViewController {
  
  var currentValue = 0
  var targetValue = 0
  var difference: Int!
  var score = 0
  var round = 0
  
  @IBOutlet weak var targetLabel: UILabel!
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var roundLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
    updateLabels()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
    
  @IBAction func showAlert() {
    let difference = abs(targetValue - currentValue)
    let points = 100 - difference
    score += points
    let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe difference is: \(difference)" + "\nYou scored \(points) points"
    let alert = UIAlertController(title: "Hello, world!", message: message, preferredStyle: .Alert)
    let action = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
    alert.addAction(action)
    presentViewController(alert, animated: true, completion: nil)
    startNewRound()
    updateLabels()
  }
    
  @IBAction func sliderMoved(slider: UISlider) {
    currentValue = lroundf(slider.value)
  }
  
  func startNewRound() {
    round += 1
    targetValue = 1 + Int(arc4random_uniform(100))
    currentValue = 50
    slider.value = Float(currentValue)
  }
  
  func updateLabels() {
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
    roundLabel.text = String(round)
  }
}

