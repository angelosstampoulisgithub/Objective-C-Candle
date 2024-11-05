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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    [label setText:@"Objective-C-Candle-Animation"];
    [label setTextColor:UIColor.redColor];
    [candleView addSubview:label];
    [label setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[label topAnchor] constraintEqualToAnchor:self.view.topAnchor constant:60].active = TRUE;
    [[label centerXAnchor] constraintEqualToAnchor:self.view.centerXAnchor].active = TRUE;
}

@end
