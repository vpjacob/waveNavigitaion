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
//    样式一：底部是波浪，上面是横线
//    v.speed = 2;
//    v.waveW = 375;
//    v.waveH = 10;
//    v.fillColor1 = [UIColor orangeColor];
//    v.fillColor2 = [UIColor whiteColor];

//样式二：底部是波浪，上面是横线.有深有浅
//    v.speed = 2;
//    v.waveW = 375;
//    v.waveH = 10;
//    v.fillColor1 = [UIColor orangeColor];
//    v.fillColor2 = [UIColor orangeColor];


//样式三：   底部是横线，上面是波浪
    v.speed = 2;
    v.waveW = 375;
    //    底部是横线，上面是波浪
    v.startEndY = 250;
    v.waveH = 10;
    v.fillColor1 = [UIColor orangeColor];
    v.fillColor2 = [UIColor orangeColor];

    
    
    v.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:v];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
