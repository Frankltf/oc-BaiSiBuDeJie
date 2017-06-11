//
//  XMGTabController.m
//  BuDeJie
//
//  Created by 刘腾飞 on 2017/6/11.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGTabController.h"
#import "XMGEssenceViewController.h"
#import "XMGNewViewController.h"
#import "XMGPublishViewController.h"
#import "XMGFriendTrendViewController.h"
#import "XMGMeTableViewController.h"
@interface XMGTabController ()

@end

@implementation XMGTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupAllController];
    [self setupTitleButton];
    // Do any additional setup after loading the view.
}
+(void)load{
    UITabBarItem *tabBarItem=[UITabBarItem appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *attr=[NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName]=[UIColor blackColor];
    [tabBarItem setTitleTextAttributes:attr forState:UIControlStateSelected];
    
    NSMutableDictionary *attr2=[NSMutableDictionary dictionary];
    attr2[NSFontAttributeName]=[UIFont systemFontOfSize:13];
    [tabBarItem setTitleTextAttributes:attr2 forState:UIControlStateNormal];
}
//添加子控制器
-(void)setupAllController{
    XMGEssenceViewController *essence=[[XMGEssenceViewController alloc]init];
    UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:essence];
    [self addChildViewController:nav1];
    
    XMGNewViewController *new=[[XMGNewViewController alloc]init];
    UINavigationController *nav2=[[UINavigationController alloc]initWithRootViewController:new];
    [self addChildViewController:nav2];
    
    XMGPublishViewController *publish=[[XMGPublishViewController alloc]init];
    [self addChildViewController:publish];
    
    XMGFriendTrendViewController *friendTrend=[[XMGFriendTrendViewController alloc]init];
    UINavigationController *nav4=[[UINavigationController alloc]initWithRootViewController:friendTrend];
    [self addChildViewController:nav4];
    
    XMGMeTableViewController *me=[[XMGMeTableViewController alloc]init];
    UINavigationController *nav5=[[UINavigationController alloc]initWithRootViewController:me];
    [self addChildViewController:nav5];
}
//设置子控制器按钮
-(void)setupTitleButton{
    UINavigationController *nav1=self.childViewControllers[0];
    nav1.tabBarItem.image=[UIImage imageNamed:@"tabBar_essence_icon"];
    nav1.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_essence_click_icon"];
    nav1.tabBarItem.title=@"精华";
    
    UINavigationController *nav2=self.childViewControllers[1];
    nav2.tabBarItem.image=[UIImage imageNamed:@"tabBar_new_icon"];
    nav2.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_new_click_icon"];
    nav2.tabBarItem.title=@"新帖";
    
    UINavigationController *nav3=self.childViewControllers[2];
    nav3.tabBarItem.image=[UIImage imageNamed:@"tabBar_publish_icon"];
    nav3.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_publish_click_icon"];
    
    UINavigationController *nav4=self.childViewControllers[3];
    nav4.tabBarItem.image=[UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav4.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    nav4.tabBarItem.title=@"关注";
    
    UINavigationController *nav5=self.childViewControllers[4];
    nav5.tabBarItem.image=[UIImage imageNamed:@"tabBar_me_icon"];
    nav5.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_me_click_icon"];
    nav5.tabBarItem.title=@"我的";
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
