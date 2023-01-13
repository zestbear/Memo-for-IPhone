//
//  MemoStore.swift
//  Memo for IPhone
//
//  Created by HYUN on 2023/01/10.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Memo Test1", insertDate: Date.now),
            Memo(content: "Memo Test2", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "Memo Test3", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll { $0.id == memo.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
