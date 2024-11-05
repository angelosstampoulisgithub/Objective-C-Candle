//
//  ViewController.m
//  Objective-C-Candle
//
//  Created by Angelos Staboulis on 5/11/24.
//

#import "ViewController.h"
#import "CandleView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    CandleView *candleView = [[CandleView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:candleView];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((UIScreen.mainScreen.bounds.size.width / 2.0)-100, 80, 300, 60)];
    [label setText:@"Objective-C-Candle-Animation"];
    [label setTextColor:UIColor.redColor];
    [candleView addSubview:label];
}

@end
