//
//  XMGNavigationController.m
//  BuDeJie
//
//  Created by admin on 2017/6/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGNavigationController.h"

@interface XMGNavigationController ()

@end

@implementation XMGNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if(self.childViewControllers.count>0){
        viewController.hidesBottomBarWhenPushed=YES;
        UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [backButton setTitle:@"返回" forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [backButton sizeToFit];
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *barItem=[[UIBarButtonItem alloc]initWithCustomView:backButton];
        viewController.navigationItem.leftBarButtonItem=barItem;
    }
    [super pushViewController:viewController animated:animated];
    
}
-(void)back{
    [self popViewControllerAnimated:YES];
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
