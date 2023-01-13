//
//  Memo_for_IPhoneApp.swift
//  Memo for IPhone
//
//  Created by HYUN on 2023/01/10.
//

import SwiftUI

@main
struct Memo_for_IPhoneApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
