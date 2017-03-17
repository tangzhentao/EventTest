//
//  ViewController.m
//  EvnentTest
//
//  Created by tang on 2017/3/16.
//  Copyright © 2017年 tang. All rights reserved.
//

#import "ViewController.h"
#import "TestEventView.h"
#import "GreenView.h"
#import "BlueView.h"
#import "RedView.h"
#import "OrangeView.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestEventView *greenView = [[GreenView alloc] initWithFrame:CGRectMake(10, 10, 350, 440)];
    
    TestEventView *blueView = [[BlueView alloc] initWithFrame:CGRectMake(40, 300, 330, 600)];
    
    TestEventView *redView = [[RedView alloc] initWithFrame:CGRectMake(10, 10, 250, 340)];
//    redView.userInteractionEnabled = NO;

    TestEventView *orangeView = [[OrangeView alloc] initWithFrame:CGRectMake(10, 10, 150, 240)];
    
    [self.view addSubview:greenView];
    [self.view addSubview:blueView];
    
    [greenView addSubview:redView];
    [redView addSubview:orangeView];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
