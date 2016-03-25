//
//  BinaryTree.h
//  BinaryTree
//
//  Created by Nicolas TRUTET on 17/03/16.
//  Copyright © 2016 Nicolas TRUTET. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface BinaryTree : NSObject


@property (nonatomic, strong) Node *root;

- (void)addNodeWithKey:(NSInteger)key
                  Name:(NSString *)name;

- (Node *)findNodeByKey:(NSInteger)key;
- (BOOL)removeNodeWithKey:(NSInteger)key;
- (void)inOrderTraverseTree:(Node *)focusNode;




@end
