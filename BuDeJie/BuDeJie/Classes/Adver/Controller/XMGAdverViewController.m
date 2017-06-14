//
//  XMGAdverViewController.m
//  BuDeJie
//
//  Created by admin on 2017/6/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGAdverViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "XMGADItem.h"
#import <MJExtension/MJExtension.h>
#import <UIImageView+WebCache.h>
#import "XMGTabController.h"

#define XMGScreenW [UIScreen mainScreen].bounds.size.width
#define XMGScreenH [UIScreen mainScreen].bounds.size.height
#define iphone6P (XMGScreenH==736)
#define iphone6 (XMGScreenH==667)
#define iphone5 (XMGScreenH==568)
#define iphone4 (XMGScreenH==480)
@interface XMGAdverViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *launchScreen;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIView *adContainView;
@property(nonatomic,weak)UIImageView *adView;
@property(nonatomic,weak)NSTimer *timer;


#define code2 @"phcqnauGuHYkFMRquANhmgN_IauBThfqmgKsUARhIWdGULPxnz3vndtkQW08nau_I1Y1P1Rhmhwz5Hb8nBuL5HDknWRhTA_qmvqVQhGGUhI_py4MQhF1TvChmgKY5H6hmyPW5RFRHzuET1dGULnhuAN85HchUy7s5HDhIywGujY3P1n3mWb1PvDLnvF-Pyf4mHR4nyRvmWPBmhwBPjcLPyfsPHT3uWm4FMPLpHYkFh7sTA-b5yRzPj6sPvRdFhPdTWYsFMKzuykEmyfqnauGuAu95Rnsnbfknbm1QHnkwW6VPjujnBdKfWD1QHnsnbRsnHwKfYwAwiu9mLfqHbD_H70hTv6qnHn1PauVmynqnjclnj0lnj0lnj0lnj0lnj0hThYqniuVujYkFhkC5HRvnB3dFh7spyfqnW0srj64nBu9TjYsFMub5HDhTZFEujdzTLK_mgPCFMP85Rnsnbfknbm1QHnkwW6VPjujnBdKfWD1QHnsnbRsnHwKfYwAwiuBnHfdnjD4rjnvPWYkFh7sTZu-TWY1QW68nBuWUHYdnHchIAYqPHDzFhqsmyPGIZbqniuYThuYTjd1uAVxnz3vnzu9IjYzFh6qP1RsFMws5y-fpAq8uHT_nBuYmycqnau1IjYkPjRsnHb3n1mvnHDkQWD4niuVmybqniu1uy3qwD-HQDFKHakHHNn_HR7fQ7uDQ7PcHzkHiR3_RYqNQD7jfzkPiRn_wdKHQDP5HikPfRb_fNc_NbwPQDdRHzkDiNchTvwW5HnvPj0zQWndnHRvnBsdPWb4ri3kPW0kPHmhmLnqPH6LP1ndm1-WPyDvnHKBrAw9nju9PHIhmH9WmH6zrjRhTv7_5iu85HDhTvd15HDhTLTqP1RsFh4ETjYYPW0sPzuVuyYqn1mYnjc8nWbvrjTdQjRvrHb4QWDvnjDdPBuk5yRzPj6sPvRdgvPsTBu_my4bTvP9TARqnam"

@end

@implementation XMGAdverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLaunchImage];
    [self loadData];
    
    _timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timechange) userInfo:nil repeats:YES];
    
    
    // Do any additional setup after loading the view.
}
-(void)timechange{
    static int i=3;
    if(i==0){
        XMGTabController *tarBar=[[XMGTabController alloc]init];
        [UIApplication sharedApplication].keyWindow.rootViewController=tarBar;
        [_timer invalidate];
    }
    i--;
    [_addButton setTitle:[NSString stringWithFormat:@"跳转 %d",i] forState:UIControlStateNormal];
}
-(UIImageView *)adView{
    if(_adView==nil){
        UIImageView *imageView =[[UIImageView alloc]init];
        [self.adContainView addSubview:imageView];
        _adView=imageView;
    }
    return _adView;
}
-(void)loadData{
    AFHTTPSessionManager *mr=[AFHTTPSessionManager manager];
    NSMutableDictionary *parameters=[NSMutableDictionary dictionary];
    parameters[@"code2"]=code2;
    [mr GET:@"http://mobads.baidu.com/cpro/ui/mads.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [responseObject writeToFile:@"/ios2/oc-BaiSiBuDeJie/BuDeJie" atomically:YES];
        
        NSDictionary *ad=[responseObject[@"ad"] lastObject];
        XMGADItem *item=[XMGADItem mj_objectWithKeyValues:ad];
        CGFloat h=XMGScreenW / item.w * item.h;
        self.adView.frame=CGRectMake(0, 0, XMGScreenW, h);
        NSLog(@"%@",item.w_picurl);
        [self.adView sd_setImageWithURL:[NSURL URLWithString:item.w_picurl]];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}
-(void)setupLaunchImage{
    if(iphone6P){
        self.launchScreen.image=[UIImage imageNamed:@"LaunchImage-800-Portrait-736h@3x"];
    }else if(iphone6){
        self.launchScreen.image=[UIImage imageNamed:@"LaunchImage-800-667h"];
    }else if(iphone5){
        self.launchScreen.image=[UIImage imageNamed:@"LaunchImage-568h"];
    }else if(iphone4){
        self.launchScreen.image=[UIImage imageNamed:@"LaunchImage-700"];
    }
}
- (IBAction)jump:(id)sender {
    XMGTabController *tarBar=[[XMGTabController alloc]init];
    [UIApplication sharedApplication].keyWindow.rootViewController=tarBar;
    [_timer invalidate];
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
