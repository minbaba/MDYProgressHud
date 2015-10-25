//
//  ViewController.m
//  MDYProgressHudTest
//
//  Created by 郑敏 on 15/10/25.
//  Copyright (c) 2015年 郑敏. All rights reserved.
//

#import "ViewController.h"
#import "MDYProgressHud.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MDYProgressHud *hud = [[MDYProgressHud alloc] initWithFrame:CGRectMake(0, 0, 150, 150) color:[UIColor blackColor]];
    [hud showWithView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
