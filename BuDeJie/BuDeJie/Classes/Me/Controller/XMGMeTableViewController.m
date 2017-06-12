//
//  XMGMeTableViewController.m
//  BuDeJie
//
//  Created by 刘腾飞 on 2017/6/11.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGMeTableViewController.h"
#import "UIBarButtonItem+Item.h"
@interface XMGMeTableViewController ()

@end

@implementation XMGMeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavBar];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)setupNavBar{
    self.navigationItem.title=@"我的";
    
//    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
//    [btn setImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
//    [btn sizeToFit];
//    [btn addTarget:self action:@selector(tosetting) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *buttonItem=[[UIBarButtonItem alloc]initWithCustomView:btn];
//    
//    
//    UIButton *nightButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    [nightButton setImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
//    [nightButton setImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateSelected];
//    [nightButton sizeToFit];
//    [nightButton addTarget:self action:@selector(nightButton:) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *nightButtonItem=[[UIBarButtonItem alloc]initWithCustomView:nightButton];
    UIBarButtonItem *buttonItem=[UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] hightImage:[UIImage imageNamed:@"mine-setting-icon-click"] addTarget:self action:@selector(tosetting)];
    UIBarButtonItem *nightButton=[UIBarButtonItem itemWithImageSelected:[UIImage imageNamed:@"mine-moon-icon"] hightImage:[UIImage imageNamed:@"mine-moon-icon-click"] addTarget:self action:@selector(nightButton:)];
    
    
    self.navigationItem.rightBarButtonItems=@[buttonItem,nightButton];
    
}
-(void)nightButton:(UIButton *)button{
    button.selected=!button.selected;
    NSLog(@"%d",666);
    NSLog(@"%@",button);
}
-(void)tosetting{
    NSLog(@"%d",555);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
