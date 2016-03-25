//
//  ViewController.m
//  linkedlist
//
//  Created by Nicolas TRUTET on 16/03/16.


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    LinkedList *List = [LinkedList new];
    
    
    //Add Nodes.
    [List InsertNewNodeWithAuthorName:@"Ananda Shankar" Song:@"Jumpin Jack Flash" Time:3.36];
    [List InsertNewNodeWithAuthorName:@"Courtney Barnett" Song:@"Pedestrian at Best" Time:3.51];
    [List InsertNewNodeWithAuthorName:@"The Clientele" Song:@"Reflections After Jane" Time:3.25];
    [List InsertNewNodeWithAuthorName:@"13th Floor Elevators" Song:@"You are Gonna Miss Me" Time:2.28];
    [List InsertNewNodeWithAuthorName:@"Talisco Run" Song:@"The Keys" Time:3.55];
    

    
    
    //Print the Linked List.
    NSLog(@"=========== LINKED LIST =============\n\n\n");
    
    [List PrintLinkedList];
    
    
    
    
    
    //Remove the Node "Talisco Run".
    NSLog(@"\n\n\n");
    NSLog(@"!!!!!!!!!!!!!!! REMOVE NODE !!!!!!!!!!!!!!!\n\n\n");
    
    [List RemoveNodeByAuthorName:@"Talisco Run"];
    
    
    
    
    
    
    //Print the modified Linked List.
    NSLog(@"=========== MODIFY LINKED LIST =============\n\n\n");
    
    [List PrintLinkedList];
    
    
    
    
    //Find a specific node in the Linked List.
    NSLog(@"\n\n\n");
    NSLog(@"=========== SEARCH SPECIFIC NODE =============\n\n\n");
    
    NSLog(@"The song of the searched Author is '%@'", [List FindNodeByAuthorName:@"Courtney Barnett"].Song);
    

    
}


@end









