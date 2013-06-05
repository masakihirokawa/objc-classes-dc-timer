//
//  DCTimer.m
//
//  Created by Masaki Hirokawa on 2013/06/05.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCTimer.h"

@implementation DCTimer

+ (void)setTimer:(CGFloat)timeInterval delegate:(id)delegate selector:(SEL)selector userInfo:(NSDictionary *)userInfo
{
    [DCTimer timer] = [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                     target:delegate
                                   selector:selector
                                   userInfo:userInfo
                                    repeats:YES];
}

+ (void)deleteTimer
{
    [[DCTimer timer] invalidate];
}

+ (void)setDelayTimer:(CGFloat)timeInterval delegate:(id)delegate selector:(SEL)selector userInfo:(NSDictionary *)userInfo
{
    [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                     target:delegate
                                   selector:selector
                                   userInfo:userInfo
                                    repeats:NO];
}

@end
