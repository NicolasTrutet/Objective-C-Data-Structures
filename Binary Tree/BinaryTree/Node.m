//
//  Node.m
//  BinaryTree
//
//  Created by Nicolas TRUTET on 17/03/16.
//  Copyright © 2016 Nicolas TRUTET. All rights reserved.
//

#import "Node.h"

@implementation Node


- (instancetype)initWithName:(NSString* )name
                         Key:(NSInteger)key
{
    self = [super init];
    
    if (self) {
        self.name = name;
        self.key = key;
    }
    
    return self;
}


@end
