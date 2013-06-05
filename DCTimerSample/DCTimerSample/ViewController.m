//
//  ViewController.m
//  DCTimerSample
//
//  Created by 廣川政樹 on 2013/06/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSInteger timerCount;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //ラベル初期化
    self.timerLabel.text = NULL;
    self.delayTimerLabel.text = NULL;
    
    //タイマー呼び出し
    NSDictionary *timerUserInfo = [NSDictionary dictionaryWithObject:@"called telayTimer method" forKey:@"message"];
    DCTimer *timer = [[DCTimer alloc] init];
    [timer setTimer:1.0f
           delegate:self
           selector:@selector(timerEvent:)
           userInfo:timerUserInfo];
    
    //遅延実行タイマー呼び出し
    NSDictionary *delayTimerUserInfo = [NSDictionary dictionaryWithObject:@"called setDelayTimer method" forKey:@"message"];
    [DCTimer setDelayTimer:2.0f
                  delegate:self
                  selector:@selector(delayTimerEvent:)
                  userInfo:delayTimerUserInfo];
}

- (void)timerEvent:(NSTimer *)timer
{
    _timerCount++;
    NSString *message = [(NSDictionary *)timer.userInfo objectForKey:@"message"];
    self.timerLabel.text = [NSString stringWithFormat:@"%@: %d", message, _timerCount];
    if (_timerCount >= 3) {
        
    }
}

- (void)delayTimerEvent:(NSTimer *)timer
{
    NSString *message = [(NSDictionary *)timer.userInfo objectForKey:@"message"];
    self.delayTimerLabel.text = message;
}

- (IBAction)stopTimer:(id)sender
{
    NSTimer *timer = [DCTimer timer];
    [timer invalidate];
}
@end
