//
//  LinkedList.m
//  linkedlist
//
//  Created by Nicolas TRUTET on 16/03/16.


#import "LinkedList.h"

@implementation LinkedList



- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.firstNode = nil;
    }
    return self;
}





- (void)InsertNewNodeWithAuthorName:(NSString *)AuthorName Song:(NSString *)Song Time:(float)Time
{
    Node *newNode = [[Node alloc] initWithAuthorName:AuthorName Song:Song Time:Time];
    
    newNode.nextNode = [self firstNode];
    self.firstNode = newNode;
}







- (Node *)FindNodeByAuthorName:(NSString *)AuthorName
{
    Node *Node = [self firstNode];
    
    if ( ![self IsTheLinkedListEmpty]) {
        
        while ([Node AuthorName] != AuthorName) {
            
            if ([Node nextNode] == nil) {
                return nil;
            }
            else {
                Node = [Node nextNode];
            }
        }
        
    } else {
        NSLog(@"The Linked List is empty. \n");
    }
    
    return Node;
}







- (Node *)RemoveNodeByAuthorName:(NSString *)AuthorName
{
    Node *currentNode = [self firstNode];
    Node *previousNode = [self firstNode];
    
    while ([currentNode AuthorName] != AuthorName)
    {

        if ([currentNode nextNode] == nil)
        {
            return nil;
        }
        else
        {
            previousNode = currentNode;
            currentNode = [currentNode nextNode];
        }
    }
    
    if (currentNode == [self firstNode])
    {
        self.firstNode = [self firstNode].nextNode;
    }
    else
    {
        previousNode.nextNode = [currentNode nextNode];
    }
    
    return currentNode;
    
}







- (BOOL)IsTheLinkedListEmpty
{
    if (self.firstNode == Nil) {
        return YES;
    }
    else {
        return NO;
    }
}







- (void)PrintLinkedList
{
    Node *Node = [self firstNode];
    
    while (Node != nil) {
        
        [Node PrintNode];
        
        NSLog(@"Next link is: %@ \n", [Node nextNode].AuthorName);
        NSLog(@"=============================\n\n");
        
        Node = [Node nextNode];
    }
}
















































@end
