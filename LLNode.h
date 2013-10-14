//
//  LLNode.h
//  Scratch-linked-list
//
//  Created by Jason Koceja on 10/14/13.
//  Copyright (c) 2013 CodeFellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLNode : NSObject

@property (nonatomic, strong) LLNode *next;
@property (nonatomic, strong) id object;



@end
