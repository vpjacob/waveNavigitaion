//
//  JJBezierWaveView.h
//  波浪导航demo
//
//  Created by vpjacob on 2017/5/30.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJBezierWaveView : UIView
@property (nonatomic, assign)CGFloat offSet;
@property (nonatomic, assign)CGFloat speed;
@property (nonatomic, assign)CGFloat waveH;
@property (nonatomic, assign)CGFloat waveW;
@property (nonatomic, strong)CAShapeLayer *backGround1;
@property (nonatomic, strong)CAShapeLayer *backGround2;
@property (nonatomic, strong)UIBezierPath *bezierPath;
@property (nonatomic, strong)UIColor *fillColor1;
@property (nonatomic, strong)UIColor *fillColor2;
@property (nonatomic, assign)CGFloat startEndY;

@end
