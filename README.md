DCTimer
=====================

2種類のタイマーイベントをクラスメソッドで呼び出す「DCTimer」クラスです。userInfo経由でパラメータを渡す事も可能です。

##使用方法

###一定間隔で実行するタイマーイベント呼び出し

```objective-c
//1秒間隔で timerEventメソッドを呼び出し
[DCTimer setTimer:1.0f delegate:self selector:@selector(timerEvent:) userInfo:nil];
```

###指定した時間後に実行するタイマーイベント呼び出し

```objective-c
//2秒後に delayTimerEventメソッドを呼び出し
[DCTimer setDelayTimer:2.0f delegate:self selector:@selector(delayTimerEvent:) userInfo:nil];
```

##サンプルソースコード

```objective-c
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //ラベル初期化
    self.timerLabel.text = NULL;
    self.delayTimerLabel.text = NULL;
    
    //タイマー呼び出し
    NSDictionary *timerUserInfo = [NSDictionary dictionaryWithObject:@"called telayTimer method" forKey:@"message"];
    [DCTimer setTimer:1.0f
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

//一定間隔に実行されるタイマーイベント
- (void)timerEvent:(NSTimer *)timer
{
    _timerCount++;
    NSString *message = [(NSDictionary *)timer.userInfo objectForKey:@"message"];
    self.timerLabel.text = [NSString stringWithFormat:@"%@: %d", message, _timerCount];
}

//一定時間後に実行されるタイマーイベント
- (void)delayTimerEvent:(NSTimer *)timer
{
    NSString *message = [(NSDictionary *)timer.userInfo objectForKey:@"message"];
    self.delayTimerLabel.text = message;
}

//タイマーの停止
- (IBAction)stopTimer:(id)sender
{
    [[DCTimer timer] invalidate];
}
```
