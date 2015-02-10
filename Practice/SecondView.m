//
//  SecondView.m
//  Practice
//
//  Created by Roshan Lamichhane on 2/9/15.
//  Copyright (c) 2015 Roshan Lamichhane. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()

@end

@implementation SecondView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.rightBarButtonItem=self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddButton:(id)sender {
}
@end
