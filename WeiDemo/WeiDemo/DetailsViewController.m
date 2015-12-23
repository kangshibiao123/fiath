//
//  DetailsViewController.m
//  WeiDemo
//
//  Created by mc on 15/11/20.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initTab];
}
- (void)initTab{
    
    [self.myTableView registerNib:[UINib nibWithNibName:@"FirstTableViewCell" bundle:nil] forCellReuseIdentifier:@"first"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"SecondTableViewCell" bundle:nil] forCellReuseIdentifier:@"second"];
    self.myTableView.tableFooterView = [[UIView alloc]init];
    
}
#pragma mark --- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row == 0) {
        FirstTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"first" forIndexPath:indexPath];
        
        [cell.hedImageView.layer setCornerRadius:70.0f/180.0f*cell.frame.size.height/2];
        
        [cell.hedImageView.layer setMasksToBounds:YES];
        return cell;
        

    }
    else if (indexPath.row>0&&indexPath.row<4){
     
        SecondTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"second" forIndexPath:indexPath];
        
        return cell;
    }
    else{
        
        static NSString * secon = @"";
        
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:secon];
        
        if (!cell) {
            
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:secon];
            
        }
        return cell;
        
    }
    
}
#pragma mark --- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
       
        return self.view.frame.size.height*0.26986;
    }
    else{
        
        return 44;
    }
    
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
