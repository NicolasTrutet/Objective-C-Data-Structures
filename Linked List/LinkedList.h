//
//  LinkedList.h
//  linkedlist
//
//  Created by Nicolas TRUTET on 16/03/16.



#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject


@property (nonatomic, strong) Node *firstNode;


- (void)InsertNewNodeWithAuthorName:(NSString *)AuthorName
                 Song:(NSString *)Song
                 Time:(float)Time;


- (Node *)FindNodeByAuthorName:(NSString *)AuthorName;
- (Node *)RemoveNodeByAuthorName:(NSString *)AuthorName;
- (void)PrintLinkedList;


@end
