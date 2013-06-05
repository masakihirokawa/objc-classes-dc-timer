//
//  DCTimer.m
//
//  Created by Masaki Hirokawa on 2013/06/05.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCTimer.h"

@implementation DCTimer

//@synthesize timer = _timer;
static NSTimer *dcTimer;

+ (void)setDcTimer:(NSTimer *)arg
{
	dcTimer = arg;
}

+ (int)getDcTimer
{
	return (dcTimer);
}

/*
//初期化
- (id)init
{
    self = [super init];
    if (self != nil) {
        [self clearTimer];
    }
    return self;
}
*/

//タイマー定義
+ (void)setTimer:(CGFloat)timeInterval delegate:(id)delegate selector:(SEL)selector userInfo:(NSDictionary *)userInfo
{
    [DCTimer timer] = [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                              target:delegate
                                            selector:selector
                                            userInfo:userInfo
                                             repeats:YES];
}

//タイマー削除
+ (void)clearTimer
{
    if ([DCTimer timer] != nil) {
        [[DCTimer timer] invalidate];
    }
}

//遅延実行タイマー定義
+ (void)setDelayTimer:(CGFloat)timeInterval delegate:(id)delegate selector:(SEL)selector userInfo:(NSDictionary *)userInfo
{
    [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                     target:delegate
                                   selector:selector
                                   userInfo:userInfo
                                    repeats:NO];
}

@end
