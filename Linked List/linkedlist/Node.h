//
//  Node.h
//  linkedlist
//
//  Created by Nicolas TRUTET on 17/03/16.


#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong) NSString *AuthorName;
@property (nonatomic, strong) NSString *Song;
@property (nonatomic) float Time;
@property (nonatomic, strong) Node *nextNode;


- (instancetype)initWithAuthorName:(NSString *)AuthorName
                    Song:(NSString *)Song
                    Time:(float)Time;
- (void)PrintNode;


@end
