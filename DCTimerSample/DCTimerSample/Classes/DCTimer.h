//
//  DCTimer.h
//
//  Created by Masaki Hirokawa on 2013/06/05.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCTimer : NSTimer

@property (nonatomic, strong) NSTimer *timer;

+ (void)setTimer:(CGFloat)timeInterval delegate:(id)delegate selector:(SEL)selector userInfo:(NSDictionary *)userInfo;
+ (void)clearTimer;
+ (void)setDelayTimer:(CGFloat)timeInterval delegate:(id)delegate selector:(SEL)selector userInfo:(NSDictionary *)userInfo;

@end
