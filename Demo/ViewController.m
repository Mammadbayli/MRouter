//
//  ViewController.m
//  Demo
//
//  Created by Javad Mammadbayli on 7/4/19.
//  Copyright © 2019 mammadbayli. All rights reserved.
//

#import "ViewController.h"
@import MRouter;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(140, 300, 100, 100)];
    
    
    [button setTitle:@"secondVC" forState:UIControlStateNormal];
    [button addTarget: self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    
    [[self view] addSubview:button];
    
    // Do any additional setup after loading the view.
    [[self view]setBackgroundColor:[UIColor redColor]];
}

-(void) clicked {
    [[Router instance] navigateTo: @"second"];
}


@end
