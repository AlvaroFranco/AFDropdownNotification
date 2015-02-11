//
//  ViewController.m
//  AFDropdownNotification-Demo
//
//  Created by Alvaro Franco on 15/12/14.
//  Copyright (c) 2014 AluanaLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) AFDropdownNotification *notification;

@end

@implementation ViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
 
    _notification = [[AFDropdownNotification alloc] init];
    _notification.notificationDelegate = self;
}

-(IBAction)showNotification:(id)sender {
    
    _notification.titleText = @"Update available";
    _notification.subtitleText = @"Do you want to download the update of this file?";
    _notification.image = [UIImage imageNamed:@"update"];
    _notification.topButtonText = @"Accept";
    _notification.bottomButtonText = @"Cancel";
    _notification.dismissOnTap = YES;
    [_notification presentInView:self.view withGravityAnimation:YES];
    
    [_notification listenEventsWithBlock:^(AFDropdownNotificationEvent event) {
       
        switch (event) {
            case AFDropdownNotificationEventTopButton:
                // Top button
                break;
                
            case AFDropdownNotificationEventBottomButton:
                // Bottom button
                break;
                
            case AFDropdownNotificationEventTap:
                // Tap
                break;
                
            default:
                break;
        }
    }];
    
    NSLog(@"show notification");
}

-(void)dropdownNotificationTopButtonTapped {
    
    NSLog(@"Top button tapped");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Top button tapped" message:@"Hooray! You tapped the top button" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
    [_notification dismissWithGravityAnimation:YES];
}

-(void)dropdownNotificationBottomButtonTapped {
    
    NSLog(@"Bottom button tapped");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Bottom button tapped" message:@"Hooray! You tapped the bottom button" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
    [_notification dismissWithGravityAnimation:YES];
}

@end
