//
//  AFDropdownNotification.h
//  AFDropdownNotification-Demo
//
//  Created by Alvaro Franco on 21/08/14.
//  Copyright (c) 2014 AluanaLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@protocol AFDropdownNotificationDelegate <NSObject>

-(void)dropdownNotificationTopButtonTapped;
-(void)dropdownNotificationBottomButtonTapped;

@end

@interface AFDropdownNotification : NSObject

typedef void (^block)();

@property (nonatomic, strong) id<AFDropdownNotificationDelegate> notificationDelegate;

@property (nonatomic, strong) UIView *notificationView;

@property (nonatomic, strong) NSString *titleText;
@property (nonatomic, strong) NSString *subtitleText;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *topButtonText;
@property (nonatomic, strong) NSString *bottomButtonText;

-(void)presentInView:(UIView *)view withGravityAnimation:(BOOL)animation;
-(void)dismissWithGravityAnimation:(BOOL)animation;

@property (nonatomic) BOOL dismissOnTap;

@end
