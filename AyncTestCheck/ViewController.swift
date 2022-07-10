//
//  ViewController.swift
//  AyncTestCheck
//
//  Created by Ajin on 10/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       doSomething()
        
    }


}
func doSomething() {
    
    Task {
        // Create & start a child task
        async let a = performTaskA()

        // Create & start a child task
        async let b = performTaskB()

        let sum = await (a + b)
        print(sum) // Output: 5
    }
}
func performTaskA() async -> Int {

    // Wait for 2 seconds
    //await Task.sleep(5 * 1_000_000_000)
    await try? Task.sleep(nanoseconds: 5 * 1_000_000_000)
    print("Adone")
    return 2
}

func performTaskB() async -> Int {
    
    // Wait for 3 seconds
//    await Task.sleep(2 * 1_000_000_000)
    await try? Task.sleep(nanoseconds: 2 * 1_000_000_000)
    print("Bdone")
    return 3
}
