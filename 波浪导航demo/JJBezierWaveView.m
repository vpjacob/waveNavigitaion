//
//  JJBezierWaveView.m
//  波浪导航demo
//
//  Created by vpjacob on 2017/5/30.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "JJBezierWaveView.h"

@implementation JJBezierWaveView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    self.backGround1 = [[CAShapeLayer alloc] init];
    self.backGround1.lineWidth = 1;
    self.backGround1.strokeColor = [UIColor clearColor].CGColor;
    self.backGround1.fillColor = [UIColor clearColor].CGColor;
    self.backGround1.opacity = 0.5;
    
    self.backGround2 = [[CAShapeLayer alloc] init];
    self.backGround2.lineWidth = 1;
    self.backGround2.strokeColor = [UIColor clearColor].CGColor;
    self.backGround2.fillColor = [UIColor clearColor].CGColor;
    self.backGround2.opacity = 0.5;
    
    self.bezierPath = [UIBezierPath bezierPath];
    
    [self.layer addSublayer:self.backGround1];
    [self.layer addSublayer:self.backGround2];
    
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(animationAction)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)animationAction{
    [self.bezierPath removeAllPoints];
    self.offSet += self.speed;
    
    
//    //  设置起点
    [self.bezierPath moveToPoint:CGPointMake(0, _startEndY)];
    
    for (int i = 0 ; i < self.waveW - 1; i++) {
        CGFloat a = 2.5 * M_PI * i /_waveW;
        CGFloat b = _offSet * M_PI /_waveW;
        CGFloat y = 1 * _waveH * sinf(a + b) + 200;
        [self.bezierPath addLineToPoint:CGPointMake(i, y)];
        
    }
    [self.bezierPath addLineToPoint:CGPointMake(_waveW, _startEndY)];
    
    self.backGround1.fillColor = self.fillColor1.CGColor;
    self.backGround1.opacity = 0.5;
    self.backGround1.path = _bezierPath.CGPath;
    
    [self.bezierPath removeAllPoints];
    self.offSet += self.speed;

    
    //  设置起点
    [self.bezierPath moveToPoint:CGPointMake(0, _startEndY)];
    
    for (int i = 0 ; i < self.waveW - 1; i++) {
        CGFloat a = 2.5 * M_PI * i /_waveW;
        CGFloat b = 3 * _offSet * M_PI /_waveW;
        CGFloat y = 10 *  sinf(a + b + M_PI / 4) + 200;
        [self.bezierPath addLineToPoint:CGPointMake(i, y)];
        
    }
    [self.bezierPath addLineToPoint:CGPointMake(_waveW, _startEndY)];
    
    self.backGround2.fillColor = self.fillColor2.CGColor;
    self.backGround2.opacity = 0.5;
    self.backGround2.path = _bezierPath.CGPath;
}

@end
