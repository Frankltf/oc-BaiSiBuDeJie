//
//  UIBarButtonItem+Item.h
//  BuDeJie
//
//  Created by admin on 2017/6/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)
+(UIBarButtonItem *) itemWithImage:(UIImage *)image hightImage:(UIImage *)hightImage addTarget:(nullable id)target action:(SEL)action;
+(UIBarButtonItem *) itemWithImageSelected:(UIImage *)image hightImage:(UIImage *)hightImage addTarget:(nullable id)target action:(SEL)action;
@end
