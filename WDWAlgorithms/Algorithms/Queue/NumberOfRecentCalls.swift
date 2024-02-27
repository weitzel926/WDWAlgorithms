//
//  NumberOfRecentCalls.swift
//  WDWAlgorithms
//
//  Created by Wade Weitzel on 2/27/24.
//

/*
 You have a RecentCounter class which counts the number of recent requests within a certain time frame.

 Implement the RecentCounter class:

 RecentCounter() Initializes the counter with zero recent requests.
 int ping(int t) Adds a new request at time t, where t represents some time in milliseconds, and returns the number of requests that has happened in the past 3000 milliseconds (including the new request). Specifically, return the number of requests that have happened in the inclusive range [t - 3000, t].
 It is guaranteed that every call to ping uses a strictly larger value of t than the previous call.
 */

import Foundation

class RecentCounter {
    var times: [Int] = []
    
    func ping(_ t: Int) -> Int {
        times.append(t)
        
        let firstTime = times[0]
        
        var count = 0
        for time in times {
            if time - firstTime - 3000 <= 0 {
                count += 1
            }
        }
        
        return count
    }
    
    func pingBetter(_ t: Int) -> Int {
        var firstTime = t
        if times.count > 0 {
            firstTime = times[0]
        }
        
        if t - firstTime - 3000 <= 0 {
            times.append(t)
        }
        
        return times.count
    }
}
