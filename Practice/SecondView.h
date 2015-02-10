//
//  SecondView.h
//  Practice
//
//  Created by Roshan Lamichhane on 2/9/15.
//  Copyright (c) 2015 Roshan Lamichhane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondView : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *viewTable;
@property (strong,nonatomic) NSMutableArray *tableData;



@end
