//
//  QueryViewController.h
//  WeiDemo
//
//  Created by mc on 15/11/24.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QueryTableViewCell.h"
#import "MenuView.h"
@interface QueryViewController : UIViewController
@property (weak, nonatomic)IBOutlet UITableView * myTableView;

@property (strong, nonatomic) MenuView * menuView;

@end
