//
//  LLLinkedList.m
//  Scratch-linked-list
//
//  Created by Jason Koceja on 10/14/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import "LLLinkedList.h"

@implementation LLLinkedList{
    LLNode *head;
    NSInteger count;
}

+ (id)listWithObject:(id)newObject{
    return [[LLLinkedList alloc] initWithObject:newObject];
}
- (id)initWithObject:(id)newObject{
    self = [super init];
    if (self){
        head = [[LLNode alloc] init];
        head.object = newObject;
        head.next = nil;
        count = 1;
    }
    return self;
}

// add new object to our list
- (void)push:(id)object{
    LLNode *tempNode = [[LLNode alloc] init];
    tempNode.object = object;
    tempNode.next = head;
    count++;
    head = tempNode;
}

// remove and return top object
- (id)pop{
    if (!head) {
        return nil;
    }
    id topObject = head.object;
    head = head.next;
    count--;
    return topObject;
}

// return top object but do not remove
- (id)peek{
    return head.object;
}

// get size of list
- (NSInteger)count{
    return count;
}

- (BOOL)containsObject:(id)object{
    if (!head) {
        return NO;
    }
//    return [self node:head containsObject:object];
    LLNode *currentNode = head;
    // while next node is not nil
    do {
        if ([currentNode.object isEqual:object]) {
            return YES;
        }
        currentNode = currentNode.next;
    }while (currentNode);
    // does next node object match our object
    return NO;
}

- (BOOL)node:(LLNode*)node containsObject:(id)object{
    
    if ([node.object isEqual:object]) {
        return YES;
    }
    if (node.next) {
        return [self node:node.next containsObject:object];
    }
    return NO;
}

// return object at index
- (id)objectAtIndex:(NSInteger)index{
    if (count<=index) {
        return nil;
    }
    // count each link until index
    LLNode *tempNode = head;
    for (int i = 1; i <=index; i++) {
        tempNode = tempNode.next;
    }
    // then return object
    return tempNode.object;
}

@end
