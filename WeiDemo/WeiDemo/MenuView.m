//
//  MenuView.m
//  WeiDemo
//
//  Created by mc on 15/11/24.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "MenuView.h"

@implementation MenuView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (MenuView *)initView{
    
    NSArray * arr = [[NSBundle mainBundle]loadNibNamed:@"MenuView" owner:nil options:nil];
    
    return arr[0];
    
    
}

@end
