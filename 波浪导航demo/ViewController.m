//
//  ViewController.m
//  波浪导航demo
//
//  Created by vpjacob on 2017/5/30.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "JJBezierWaveView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JJBezierWaveView *v = [[JJBezierWaveView alloc] initWithFrame:self.view.frame];
    v.speed = 2;
    v.waveW = 375;
    v.waveH = 10;
    v.fillColor1 = [UIColor orangeColor];
    v.fillColor2 = [UIColor whiteColor];
    v.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:v];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
