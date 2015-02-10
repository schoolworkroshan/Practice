//
//  SecondView.m
//  Practice
//
//  Created by Roshan Lamichhane on 2/9/15.
//  Copyright (c) 2015 Roshan Lamichhane. All rights reserved.
//

#import "SecondView.h"



@implementation SecondView
@synthesize  viewTable, tableData;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its
        // Initialize table data
        tableData = [[NSMutableArray alloc]initWithObjects:@"apple",@"ball",@"cat", @"hat",nil];
    }
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//First Making the contents of the table editable
- (void) setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:YES animated:YES];
    [viewTable setEditing:editing animated:YES];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return tableData.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Items = @"Item";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Items];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Items];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}


//Make the given row  editable
-(BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath   {
    //
    return YES;
}

//Asks the user to commit to add or remove the contents of the row
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath{
    //If editing style is delete
    if (editingStyle==UITableViewCellEditingStyleDelete){
        //Remove it from the mutable array first at given row
        [tableData removeObjectAtIndex:indexPath.row];
        //Remove from the table View
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}



@end
