//
//  SecondViewController.swift
//  Dyslexic Ally
//
//  Created by Mohit Kumar Gupta on 10/05/24.
//

import UIKit
import AVKit
import AVFoundation

class SecondViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        button.layer.cornerRadius = 14.0
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "xyz5", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player: player)
        
        
        layer.frame = CGRect(x: 0, y: 0, width: view.bounds.width / 2, height: view.bounds.height / 2)

        layer.position.x = 283
        layer.position.y = 573
        
        
        
        view.layer.addSublayer(layer)
        
        player.play()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
