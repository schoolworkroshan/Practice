//
//  SecondView.h
//  Practice
//
//  Created by Roshan Lamichhane on 2/9/15.
//  Copyright (c) 2015 Roshan Lamichhane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondView : UIViewController <UITableViewDataSource, UITableViewDelegate>
- (IBAction)AddButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) NSArray *array;



@end
