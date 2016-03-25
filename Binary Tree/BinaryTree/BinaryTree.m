//
//  BinaryTree.m
//  BinaryTree
//
//  Created by Nicolas TRUTET on 17/03/16.
//  Copyright © 2016 Nicolas TRUTET. All rights reserved.
//

#import "BinaryTree.h"

@implementation BinaryTree




- (void)addNodeWithKey:(NSInteger)key Name:(NSString *)name
{
    Node *newNode = [[Node alloc] initWithName:name Key:key];
    
    if (self.root == nil)
    {
        self.root = newNode;
    }
    else
    {
        Node *focusNode = self.root;
        Node *parent;
        
        while (true)
        {
            parent = focusNode;
            
            
            if (key < [focusNode key])
            {
                focusNode = [focusNode leftChild];
                
                if (focusNode == nil)
                {
                    parent.leftChild = newNode;
                    return;
                }
            }
            else
            {
                focusNode = [focusNode rightChild];
                
                if (focusNode == nil)
                {
                    parent.rightChild = newNode;
                    return;
                }
            }
        }
    }
}




- (void)inOrderTraverseTree:(Node *)focusNode
{
    
    if (focusNode != nil)
    {
        [self preorderTraverseTree:[focusNode leftChild]];

        NSLog(@"ROOT => %@ -- KEY: %ld\n", focusNode.name, (long)focusNode.key);
        
        [self preorderTraverseTree:[focusNode rightChild]];
    }
}



- (void)preorderTraverseTree:(Node *)focusNode
{
    if (focusNode != nil)
    {
        NSLog(@"%@ -- KEY: %ld\n", focusNode.name, (long)focusNode.key);
        
        [self preorderTraverseTree:[focusNode leftChild]];
        [self preorderTraverseTree:[focusNode rightChild]];
    }
}




- (Node *)findNodeByKey:(NSInteger)key
{
    Node *focusNode = self.root;
    
    while ([focusNode key] != key) {

        if (key < [focusNode key])
        {
            focusNode = [focusNode leftChild];
        }
        else
        {
            focusNode = [focusNode rightChild];
        }
        
        if (focusNode == nil) {
            return nil;
        }
    }
    
    return focusNode;
}




- (BOOL)removeNodeWithKey:(NSInteger)key
{
    Node *focusNode = self.root;
    Node *parent = self.root;
    
    BOOL isALeftChild = YES;
    
    while ([focusNode key] != key)
    {
        parent = focusNode;
        
        if (key < [focusNode key])
        {
            isALeftChild = YES;
            focusNode = [focusNode leftChild];
        }
        else
        {
            isALeftChild = NO;
            focusNode = [focusNode rightChild];
        }
        
        if (focusNode == nil)
        {
            return NO;
        }
    }
    
    
    if ([focusNode leftChild] == nil && [focusNode rightChild] == nil)
    {
        if (focusNode == self.root)
        {
            self.root = nil;
        }
        else if (isALeftChild)
        {
            parent.leftChild = nil;
        }
        else
        {
            parent.rightChild = nil;
        }
    }
    else if ([focusNode rightChild] == nil)
    {
        if (focusNode == self.root)
        {
            self.root = [focusNode leftChild];
        }
        else if (isALeftChild)
        {
            parent.leftChild = [focusNode leftChild];
        }
        else
        {
            parent.rightChild = [focusNode leftChild];
        }
    }
    else if ([focusNode leftChild] == nil)
    {
        if (focusNode == self.root)
        {
            self.root = [focusNode rightChild];
        }
        else if (isALeftChild)
        {
            parent.leftChild = [focusNode rightChild];
        }
        else
        {
            parent.rightChild = [focusNode rightChild];
        }
    }
    else
    {
        Node *replacement = [self getReplacementNode:focusNode];
        
        if (focusNode == self.root)
        {
            self.root = replacement;
        }
        else if (isALeftChild)
        {
            parent.leftChild = replacement;
        }
        else
        {
            parent.rightChild = replacement;
        }
        replacement.leftChild = [focusNode leftChild];
    }

    return YES;
}





- (Node *)getReplacementNode:(Node *)replaceNode
{
    Node *replacementParent = replaceNode;
    Node *replacement = replaceNode;
    Node *focusNode = [replaceNode rightChild];
    
    while (focusNode != nil)
    {
        replacementParent = replacement;
        replacement = focusNode;
        focusNode = [focusNode leftChild];
    }
    
    if (replacement != [replaceNode rightChild])
    {
        replacementParent.leftChild = [replacement rightChild];
        replacement.rightChild = [replaceNode rightChild];
    }
    
    return replacement;
}






























@end
