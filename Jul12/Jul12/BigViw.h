//
//  BigViw.h
//  Jul12
//
//  Created by Piyal Basu on 7/24/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigViw : UIView{
    
    //holds the two subviews we transtion between
	NSArray *views;
    
	//index in views of the currently displayed little view: 0 or 1
	NSUInteger index;
}

@end
