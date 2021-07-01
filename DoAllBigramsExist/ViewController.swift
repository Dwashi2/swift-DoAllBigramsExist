//
//  ViewController.swift
//  DoAllBigramsExist
//
//  Created by Daniel Washington Ignacio on 01/07/21.
//

/*
 You are given an input array of bigrams, and an array of words.

 Write a function that returns true if every single bigram from this array can be found at least once in an array of words.

 Examples

 canFind(["at", "be", "th", "au"], ["beautiful", "the", "hat"]) ➞ true

 canFind(["ay", "be", "ta", "cu"], ["maybe", "beta", "abet", "course"]) ➞ false
 // "cu" does not exist in any of the words.

 canFind(["th", "fo", "ma", "or"], ["the", "many", "for", "forest"]) ➞ true

 canFind(["oo", "mi", "ki", "la"], ["milk", "chocolate", "cooks"]) ➞ false
 Notes

 A bigram is string of two consecutive characters in the same word.
 If the array of words is empty, return false.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.canFind(["at", "be", "th", "au"], ["beautiful", "the", "hat"]))
        print(self.canFind(["ay", "be", "ta", "cu"], ["maybe", "beta", "abet", "course"]))
        print(self.canFind(["th", "fo", "ma", "or"], ["the", "many", "for", "forest"]))
        print(self.canFind(["oo", "mi", "ki", "la"], ["milk", "chocolate", "cooks"]))
    }

    func canFind(_ bigrams: [String], _ words: [String]) -> Bool {
        for n in bigrams{
            let uppercased = words.map { $0.contains(n) }
            if uppercased.filter({ $0 == true }) == [] {
                return false
            }
        }
        return true
    }

}

