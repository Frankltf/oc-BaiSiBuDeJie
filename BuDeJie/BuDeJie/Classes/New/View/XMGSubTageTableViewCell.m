//
//  XMGSubTageTableViewCell.m
//  BuDeJie
//
//  Created by admin on 2017/6/14.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGSubTageTableViewCell.h"
#import <UIImageView+WebCache.h>
#import "XMGtagItem.h"
@interface XMGSubTageTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameView;
@property (weak, nonatomic) IBOutlet UILabel *numView;

@end

@implementation XMGSubTageTableViewCell
-(void)setItem:(XMGtagItem *)item{
    
    _item=item;
    _nameView.text=item.theme_name;
    _numView.text=item.sub_number;
    [_iconView sd_setImageWithURL:[NSURL URLWithString:item.image_list] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
