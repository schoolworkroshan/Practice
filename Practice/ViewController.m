//
//  ViewController.m
//  Practice
//
//  Created by Roshan Lamichhane on 2/9/15.
//  Copyright (c) 2015 Roshan Lamichhane. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize first,second;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    [first resignFirstResponder];
    if([first.text isEqualToString:second.text])
    {
    //do something
        
        //Create Object for another navigation controller
        SecondView *second = [[SecondView alloc] init];
        
        //  transition styles.
        second.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentModalViewController:second animated:YES];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry"
                                                        message:@"You didn't enter the matching pins"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}
@end
