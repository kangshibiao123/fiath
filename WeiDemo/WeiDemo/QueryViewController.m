//
//  QueryViewController.m
//  WeiDemo
//
//  Created by mc on 15/11/24.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "QueryViewController.h"

@interface QueryViewController ()

@end

@implementation QueryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self iniTab];
}
- (void)iniTab{
    
    [self.myTableView registerNib:[UINib nibWithNibName:@"QueryTableViewCell" bundle:nil] forCellReuseIdentifier:@"query"];
//    [self.myTableView registerNib:[UINib nibWithNibName:@"MenuView" bundle:nil] forHeaderFooterViewReuseIdentifier:@"menu"];
    
    
}
#pragma mark --- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
 
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        
        QueryTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"query" forIndexPath:indexPath];
        [cell.hedImageView.layer setCornerRadius:70.0f/84.0f*cell.frame.size.height/2.0f];
        
        [cell.hedImageView.layer setMasksToBounds:YES];
        return cell;
        
        
    }
    return nil;
    
}
#pragma mark --- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        
        NSLog(@"--%f",self.view.frame.size.height);
        return self.view.frame.size.height*0.116941529;
    }
    
    return 0;
    
    
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    self.menuView.backgroundColor = [UIColor redColor];
    self.menuView.label1.text = @"1";
    
    return self.menuView;
}
- (MenuView *)menuView{
    
    if (!_menuView) {
        
        _menuView = [MenuView initView];
        
        _menuView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
        
       
    }
     return _menuView;
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
