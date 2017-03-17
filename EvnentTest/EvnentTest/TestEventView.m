//
//  TestEventView.m
//  EvnentTest
//
//  Created by tang on 2017/3/16.
//  Copyright © 2017年 tang. All rights reserved.
//

#import "TestEventView.h"

@implementation TestEventView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [self myBackgroundColor];
    }
    
    return self;
}

- (UIColor *)myBackgroundColor
{
    return [UIColor lightGrayColor];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{

    NSLog(@"[%@ %@] begin...", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    UIView *farthestView = [super hitTest:point withEvent:event];
    NSLog(@"[%@ %@] farthest view: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), NSStringFromClass([farthestView class]));
    
    return farthestView;
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"[%@ %@] begin...", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    BOOL inside = [super pointInside:point withEvent:event];
    NSLog(@"[%@ %@] point inside: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), (inside ? @"yes" : @"no"));
    
    return inside;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"[%@ %@] begin...", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super touchesBegan:touches withEvent:event];
    NSLog(@"[%@ %@] end", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end
