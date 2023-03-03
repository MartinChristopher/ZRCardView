//
//  ZRCardView.h
//  ZRAnimation
//
//  Created by Robin on 2018/10/10.
//  Copyright © 2018年 RobinZhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZRCardView: UIView

@property (nonatomic, assign) BOOL isBack;

- (instancetype)initWithFrame:(CGRect)frame front:(UIView *)front reverse:(UIView *)reverse;

- (void)animationToFront;

- (void)animationToBack;

@end
