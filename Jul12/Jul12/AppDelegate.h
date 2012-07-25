//
//  AppDelegate.h
//  Jul12
//
//  Created by Piyal Basu on 7/19/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BigViw;
@class AnotherSwitch;
@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    BigViw *bigView;
    AnotherSwitch *anotherSwitch;
    UIWindow *_window;
    
    //holds the two subviews we transtion between
	NSArray *views;
    
	//index in views of the currently displayed little view: 0 or 1
	NSUInteger index;
}

@property (strong, nonatomic) UIWindow *window;

@end
