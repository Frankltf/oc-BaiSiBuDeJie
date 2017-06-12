//
//  XMGAdViewController.m
//  BuDeJie
//
//  Created by admin on 2017/6/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGSettingViewController.h"

@interface XMGSettingViewController ()

@end

@implementation XMGSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackgroundColor];
    // Do any additional setup after loading the view from its nib.
}
-(void)setupBackgroundColor{
    self.view.backgroundColor=[UIColor redColor];
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
