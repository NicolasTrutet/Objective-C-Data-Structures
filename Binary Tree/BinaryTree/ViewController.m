//
//  ViewController.m
//  BinaryTree
//
//  Created by Nicolas TRUTET on 17/03/16.
//  Copyright © 2016 Nicolas TRUTET. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    BinaryTree *Tree = [BinaryTree new];
    
    [Tree addNodeWithKey:50 Name:@"Boss"];
    [Tree addNodeWithKey:25 Name:@"Vice President"];
    [Tree addNodeWithKey:15 Name:@"Office Manager"];
    [Tree addNodeWithKey:30 Name:@"Secretary"];
    [Tree addNodeWithKey:75 Name:@"Sales Manager"];
    [Tree addNodeWithKey:85 Name:@"Salesman 1"];
    
    
    NSLog(@"TRAVERSE ORIGINAL TREE \n");
    NSLog(@"================================");
    [Tree inOrderTraverseTree:[Tree root]];
    NSLog(@"================================\n\n");
    
    
    //Search Node 75
    NSLog(@"Find Node 75 = %@ \n", [Tree findNodeByKey:75].name);

    //Remove node 25
    [Tree removeNodeWithKey:25];
    NSLog(@"Find Node 25 = %@ \n\n", [Tree findNodeByKey:25].name);
    
    
    NSLog(@"TRAVERSE MODIFIED TREE \n");
    NSLog(@"================================");
    [Tree inOrderTraverseTree:[Tree root]];
    NSLog(@"================================\n\n");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
