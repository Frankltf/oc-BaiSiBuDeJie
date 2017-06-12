//
//  XMGFriendTrendViewController.m
//  BuDeJie
//
//  Created by 刘腾飞 on 2017/6/11.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGFriendTrendViewController.h"
#import "UIBarButtonItem+Item.h"
@interface XMGFriendTrendViewController ()

@end

@implementation XMGFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavBar];
    // Do any additional setup after loading the view.
}
-(void)setupNavBar{
    self.navigationItem.title=@"关注";
//    UIButton *leftButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    [leftButton setImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
//    [leftButton setImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
//    [leftButton sizeToFit];
//    [leftButton addTarget:self action:@selector(addFriend) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem *addLeft=[[UIBarButtonItem alloc]initWithCustomView:leftButton];
//    
//    self.navigationItem.leftBarButtonItem=addLeft;
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] hightImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] addTarget:self action:@selector(addFriend)];

}
-(void)addFriend{
    NSLog(@"%d",777);
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
