//
//  XMGNewViewController.m
//  BuDeJie
//
//  Created by 刘腾飞 on 2017/6/11.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGNewViewController.h"
#import "UIBarButtonItem+Item.h"
#import "XMGSubTagTableViewController.h"
@interface XMGNewViewController ()

@end

@implementation XMGNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBarButton];
    // Do any additional setup after loading the view.
}
-(void)setupBarButton{
    NSLog(@"%d",888);
    self.navigationItem.titleView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] hightImage:[UIImage imageNamed:@"MainTagSubIconClick"] addTarget:self action:@selector(tagClick)];
    
}
-(void)tagClick{
    XMGSubTagTableViewController *subtag=[[XMGSubTagTableViewController alloc]init];
    [self.navigationController pushViewController:subtag animated:YES];
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

@end
