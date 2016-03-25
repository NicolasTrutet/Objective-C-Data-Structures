//
//  Node.h
//  BinaryTree
//
//  Created by Nicolas TRUTET on 17/03/16.
//  Copyright © 2016 Nicolas TRUTET. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject


@property (nonatomic) NSInteger key;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Node *leftChild;
@property (nonatomic, strong) Node *rightChild;

- (instancetype)initWithName:(NSString* )name
                         Key:(NSInteger)key;



@end
