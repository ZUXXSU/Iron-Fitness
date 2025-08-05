//
//  PayloadKey.swift
//  Iron
//
//  Created by Karim Abou Zeid on 04.11.19.
//  Copyright © 2019 Karim Abou Zeid Software. All rights reserved.
//

import Foundation

enum PayloadKey {
    // phone --> watch
    // calls healthStore.startWatchApp()
    
    // phone <-- watch
    // Args: true
    static let preparedWorkoutSession = "preparedWorkoutSession" // sent to confirm that healthStore.startWatchApp() resulted in a prepare
    
    // phone --> watch
    // Args: true
    static let ignoredPreparedWorkoutSession = "ignoredPreparedWorkoutSession" // send if the prepared message came to late, i.e. after the workout was already canceled / finished
    
    // phone --> watch
    // Args: [start: Date, uuid: UUID]
    static let startWorkoutSession = "startWorkoutSession"
    
    // phone --> watch
    // Args: [start: Date, uuid: UUID]
    static let updateWorkoutSessionStart = "updateWorkoutSessionStart"
    
    // phone --> watch
    // Args: [end: Date?, uuid: UUID]
    static let updateWorkoutSessionEnd = "updateWorkoutSessionEnd"
    
    // phone --> watch
    // Args: [end: Date?, keepRestTimerRunning: Bool?, uuid: UUID]
    static let updateWorkoutSessionRestTimer = "updateWorkoutSessionRestTimer"
    
    // phone --> watch
    // Args: [text: String, uuid: UUID] // TODO: replace with [reps: Int, weight: Double, uuid: UUID]
    static let updateWorkoutSessionSelectedSet = "updateWorkoutSessionSelectedSet"
    
    // phone --> watch
    // Args: [start: Date, end: Date, title: String?, uuid: UUID]
    static let endWorkoutSession = "endWorkoutSession"
    
    // phone --> watch
    // Args: [uuid: UUID]
    static let discardWorkoutSession = "discardWorkoutSession"
    
    enum Arg {
        static let start = "start" // Date
        static let end = "end" // Date
        static let keepRestTimerRunning = "keepRestTimerRunning" // Bool
        static let text = "text" // String
        static let title = "title" // String
        static let uuid = "uuid" // UUID
    }
}
