//
//  DCTimer.h
//
//  Created by Masaki Hirokawa on 2013/06/05.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCTimer : NSTimer

+ (void)setDelayTimer:(CGFloat)timeInterval selector:(SEL)selector;

@end
