//
//  Node.m
//  linkedlist
//
//  Created by Nicolas TRUTET on 17/03/16.


#import "Node.h"

@implementation Node


- (instancetype)initWithAuthorName:(NSString *)AuthorName Song:(NSString *)Song Time:(float)Time
{
    self = [super init];
    
    if (self) {
        self.AuthorName = AuthorName;
        self.Song = Song;
        self.Time = Time;
    }
    
    return self;
}


- (void)PrintNode
{
    NSLog(@"Author: %@", self.AuthorName);
    NSLog(@"Song: %@ ", self.Song);
    NSLog(@"Time: %f minutes", self.Time);
}



@end
