//
//  ViewController.m
//  DCTimerSample
//
//  Created by 廣川政樹 on 2013/06/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [DCTimer setDelayTimer:2.0f selector:@selector(test:)];
}

- (void)test:(NSTimer *)timer
{
    NSLog(@"test");
}

@end
