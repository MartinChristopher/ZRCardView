//
//  ZRCardView.m
//  ZRAnimation
//
//  Created by Robin on 2018/10/10.
//  Copyright © 2018年 RobinZhao. All rights reserved.
//

#import "ZRCardView.h"

static NSTimeInterval CardDuration = 0.5;

@interface ZRCardView()

@property (nonatomic, strong) UIView *frontView;
@property (nonatomic, strong) UIView *reverseView;

@end

@implementation ZRCardView

- (instancetype)initWithFrame:(CGRect)frame front:(UIView *)front reverse:(UIView *)reverse {
    self = [super initWithFrame:frame];
    if (self) {
        self.isBack = true;
        self.frontView = front;
        self.reverseView = reverse;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapEvent)];
        
        [self addSubview:front];
        [self addSubview:reverse];
        [self addGestureRecognizer:tap];
        self.backgroundColor = [UIColor clearColor];
        self.frontView.hidden = YES;
    }
    return self;
}

- (void)tapEvent {
    if (self.isBack) {
        [self animationToFront];
    } else {
        [self animationToBack];
    }
}

- (void)animationToFront {
    [UIView transitionWithView:self duration:CardDuration options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        self.frontView.hidden = NO;
        self.reverseView.hidden = YES;
    } completion:^(BOOL finished) {
        self.isBack = NO;
    }];
}

- (void)animationToBack {
    [UIView transitionWithView:self duration:CardDuration options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        self.frontView.hidden = YES;
        self.reverseView.hidden = NO;
    } completion:^(BOOL finished) {
        self.isBack = YES;
    }];
}

@end
