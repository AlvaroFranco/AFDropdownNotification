AFDropdownNotification
======================

Dropdown notification view for iOS

![alt text](https://raw.githubusercontent.com/AlvaroFranco/AFDropdownNotification/master/img/preview.gif?token=ABV8uk1ShHPyKmhdNNJsvN3jYyuhgxJGks5UmHMwwA%3D%3D "Preview")

##Installation

If you're using CocoaPods, just add this line to your Podfile:

	pod 'AFDropdownNotification', '~> 1.0'
	
If you're not, import these files to your project:

	AFDropdownNotification.h
	AFDropdownNotification.m

##Usage

First of all, init your AFDropdownNotification class and set your main class as ```AFDropdownNotificationDelegate```:

```objc
AFDropdownNotification *notification = [[AFDropdownNotification alloc] init];
notification.notificationDelegate = self;
```

You can configure the title text with the ```titleText``` property, the subtitle text with ```subtitleText```, an optional left image defined as ```image```, and two optional buttons, with ```topButtonText``` and ```bottomButtonText```. For example:

```objc
notification.titleText = @"Update available";
notification.subtitleText = @"Do you want to download the update of this file?";
notification.image = [UIImage imageNamed:@"update"];
notification.topButtonText = @"Accept";
notification.bottomButtonText = @"Cancel";
```

If you want to hide the notification by tapping it, set ```dimissOnTap``` to YES:

```objc
notification.dismissOnTap = YES;
```

To present it, you can choose if you want to use UIKit dynamics (which will include a subtle bounce) or a regular lineal UIKit animation:

```objc
[notification presentInView:self.view withGravityAnimation:YES];
```

Finally, to handle the buttons taps, implement the two methods defined by the delegate, ```-dropdownNotificationTopButtonTapped``` and ```-dropdownNotificationBottomButtonTapped```.

```objc
-(void)dropdownNotificationTopButtonTapped {
 
    NSLog(@"Top button tapped");
}

-(void)dropdownNotificationBottomButtonTapped {

    NSLog(@"Bottom button tapped");
}
```

Also, you can use blocks:

```objc
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
```


##TODO

- [ ] Light theme
- [ ] Autolayout support for rotation

##License
AFDropdownNotification is under MIT license so feel free to use it!

##Author
Made by Alvaro Franco. If you have any question, feel free to drop me a line at [alvarofrancoayala@gmail.com](mailto:alvarofrancoayala@gmail.com)
