//
//  UIBarButtonItem+Item.m
//  BuDeJie
//
//  Created by admin on 2017/6/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)
+(UIBarButtonItem *) itemWithImage:(UIImage *)image hightImage:(UIImage *)hightImage addTarget:(nullable id)target action:(SEL)action{
        UIButton *leftButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [leftButton setImage:image forState:UIControlStateNormal];
        [leftButton setImage:hightImage forState:UIControlStateHighlighted];
        [leftButton sizeToFit];
        [leftButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return [[UIBarButtonItem alloc]initWithCustomView:leftButton];
}
+(UIBarButtonItem *) itemWithImageSelected:(UIImage *)image hightImage:(UIImage *)hightImage addTarget:(nullable id)target action:(SEL)action{
    UIButton *leftButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setImage:image forState:UIControlStateNormal];
    [leftButton setImage:hightImage forState:UIControlStateSelected];
    [leftButton sizeToFit];
    [leftButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:leftButton];
}
@end
