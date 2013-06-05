//
//  ViewController.h
//  DCTimerSample
//
//  Created by 廣川政樹 on 2013/06/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCTimer.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *delayTimerLabel;

- (IBAction)stopTimer:(id)sender;

@end
