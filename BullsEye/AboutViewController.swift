//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Andrew Hercules on 2014-12-13.
//  Copyright (c) 2014 Andrew Hercules. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

  @IBAction func close() {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  @IBOutlet weak var webView: UIWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye", ofType: "html") {
      let htmlData = NSData(contentsOfFile: htmlFile)
      let baseURL = NSURL.fileURLWithPath( NSBundle.mainBundle().bundlePath)
      webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
    }
  }
  
}