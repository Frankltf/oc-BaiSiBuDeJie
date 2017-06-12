//
//  XMGAdverViewController.m
//  BuDeJie
//
//  Created by admin on 2017/6/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGAdverViewController.h"
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



@end

@implementation XMGAdverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupLaunchImage];
    
    // Do any additional setup after loading the view.
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
    NSLog(@"%d",666);
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
