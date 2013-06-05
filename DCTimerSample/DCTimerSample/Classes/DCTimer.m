//
//  DCTimer.m
//
//  Created by Masaki Hirokawa on 2013/06/05.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCTimer.h"

@implementation DCTimer

+ (void)setDelayTimer:(CGFloat)timeInterval
             selector:(SEL)selector
{
    NSTimer *delayTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                                   target:self
                                                 selector:@selector(selector:)
                                                 userInfo:nil
                                                  repeats:NO];
}

@end
