//
//  FirstTableViewCell.m
//  WeiDemo
//
//  Created by mc on 15/11/20.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    NSLog(@"---%f",70.0f/320.0f*self.frame.size.width/2.0f);
    
  
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
