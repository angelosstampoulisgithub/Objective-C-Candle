//
//  CandleView.m
//  Objective-C-Candle
//
//  Created by Angelos Staboulis on 5/11/24.
//

#import "CandleView.h"

@implementation CandleView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}
- (void)setupView {
    self.backgroundColor = [UIColor colorWithRed:26/255.0 green:25/255.0 blue:25/255.0 alpha:1.0];
    [self animateBackground];

    UIView *candleBody = [[UIView alloc] initWithFrame:CGRectMake((self.frame.size.width - 100) / 2, self.frame.size.height - 350, 100, 350)];
    candleBody.backgroundColor = [self gradientColor];
    [self addSubview:candleBody];
    UIView *candleFlames = [[UIView alloc] initWithFrame:CGRectMake(35, -120, 30, 100)];
    candleFlames.backgroundColor = [self flameGradientColor];
    candleFlames.layer.cornerRadius = 15;
    [candleBody addSubview:candleFlames];

    [self animateFlames:candleFlames];
}
- (UIColor *)gradientColor {
    return [UIColor colorWithRed:209/255.0 green:158/255.0 blue:64/255.0 alpha:1.0];
}

- (UIColor *)stickGradientColor {
    return [UIColor colorWithRed:7/255.0 green:7/255.0 blue:204/255.0 alpha:1.0];
}

- (UIColor *)flameGradientColor {
    return [UIColor colorWithRed:224/255.0 green:216/255.0 blue:216/255.0 alpha:1.0];
}

- (void)animateBackground {
    [UIView animateWithDuration:1.f delay:0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        self.backgroundColor = [UIColor blackColor];
    } completion:nil];
}

- (void)animateFlames:(UIView *)flames {
    [UIView animateWithDuration:1.f delay:0.0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        flames.transform = CGAffineTransformMakeTranslation(5.f, 0.f);
    } completion:^(BOOL finished) {
        flames.transform = CGAffineTransformIdentity;
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
