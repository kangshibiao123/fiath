//
//  ViewController.m
//  WeiDemo
//
//  Created by mc on 15/11/20.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    DetailsViewController *detai = [[DetailsViewController alloc]init];
//    
//    UINavigationController * nav= [[UINavigationController alloc]initWithRootViewController:detai];
//    
//    UIWindow * window = [[UIApplication sharedApplication].delegate window];
//    
//    window.rootViewController = nav;
    
    QueryViewController * que = [[QueryViewController alloc]init];
    
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:que];
    
    UIWindow * window = [[UIApplication sharedApplication].delegate  window];
    
    window.rootViewController = nav;
    
    
//    UIImageView *imageView =[[UIImageView alloc]initWithFrame:self.view.bounds];
//    
//    NSData  *date = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cdn.cocimg.com/bbs/3g/img/ccicon.png"]];
//    
//    NSLog(@"--date-%@",date);
//    
//    imageView.image = [UIImage imageWithData:date];
//    
//    [self.view addSubview:imageView];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
