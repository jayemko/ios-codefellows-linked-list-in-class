//
//  LLLinkedList.h
//  Scratch-linked-list
//
//  Created by Jason Koceja on 10/14/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LLNode.h"

@interface LLLinkedList : NSObject

+ (id)listWithObject:(id)newObject;
- (id)initWithObject:(id)newObject;

- (NSInteger)count;
- (void)push:(id)object;
- (id)objectAtIndex:(NSInteger)index;

@end
