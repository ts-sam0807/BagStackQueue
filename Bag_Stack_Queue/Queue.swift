//
//  Queue.swift
//  Swift-AGDS
//
//  Created by Ts SaM on 24/7/2023.
//

import Foundation

public final class Queue<E>: Sequence {
    
    private var first: Node<E>? = nil
    private var last: Node<E>? = nil
    private(set) var count: Int = 0
    
    fileprivate class Node<E> {
        fileprivate var item: E
        fileprivate var next: Node<E>?
        fileprivate init(item: E, next: Node<E>? = nil) {
            self.item = item
            self.next = next
        }
    }
    
    init() {}
    
    func enqueue(_ item: E) {
        let newNode = Node<E>(item: item)
        if isEmpty() {
            first = newNode
            last = newNode
        } else {
            last?.next = newNode
            last = newNode
        }
        count += 1
    }
    
    func dequeue() -> E? {
        if let item = first?.item {
            first = first?.next
            count -= 1
            if isEmpty() {
                last = nil
            }
            return item
        }
        return nil
    }
    
    func peek() -> E? {
        return first?.item
    }
    
    func isEmpty() -> Bool {
        return first == nil
    }
    
    public struct QueueIterator<E>: IteratorProtocol {
        private var current: Node<E>?
        
        fileprivate init(current: Node<E>? = nil) {
            self.current = current
        }
        
        public mutating func next() -> E? {
            if let item = current?.item {
                current = current?.next
                return item
            }
            return nil
        }
    }
    
    public func makeIterator() -> QueueIterator<E> {
        return QueueIterator(current: first)
    }
}
