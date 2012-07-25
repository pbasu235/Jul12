//
//  View2.m
//  Jul12
//
//  Created by Piyal Basu on 7/24/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View2.h"

@implementation View2


- (void) touchUpInside: (id) sender {
	//The sender is the button that was pressed.
    
	if(self.backgroundColor = [UIColor blueColor]){
        self.backgroundColor = [UIColor yellowColor];
        [button setTitle: @"I hate yellow" forState: UIControlStateNormal];
	[button2 setTitle: @"I hate yellow" forState: UIControlStateNormal];
    [button3 setTitle: @"I hate yellow" forState: UIControlStateNormal];
    [button4 setTitle: @"I hate yellow" forState: UIControlStateNormal];
    }
    else {
        self.backgroundColor = [UIColor blueColor];
        [button setTitle: @"I hate blue" forState: UIControlStateNormal];
        [button2 setTitle: @"I hate blue" forState: UIControlStateNormal];
        [button3 setTitle: @"I hate blue" forState: UIControlStateNormal];
        [button4 setTitle: @"I hate blue" forState: UIControlStateNormal];  
        
    }
}




- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect b = self.bounds;
        self.backgroundColor = [UIColor blueColor];

        
        button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		
		CGSize s = CGSizeMake(100, 20);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + b.size.width / 4 -40,
                                  b.origin.y + b.size.height /4,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[button setTitle: @"I hate blue" forState: UIControlStateNormal];
        
		[button addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
        
        
        
        button2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		
		
        
		button2.frame = CGRectMake(
                                   b.origin.x + b.size.width / 4 -40,
                                   b.origin.y + b.size.height /2,
                                  s.width,
                                  s.height
                                  );
        
		[button2 setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[button2 setTitle: @"I hate blue" forState: UIControlStateNormal];
        
		[button2 addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button2];
        
        
        
        
        button3 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		
		
        
		button3.frame = CGRectMake(
                                   b.origin.x + b.size.width / 2 +10,
                                   b.origin.y + b.size.height /4,
                                  s.width,
                                  s.height
                                  );
        
		[button3 setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[button3 setTitle: @"I hate blue" forState: UIControlStateNormal];
        
		[button3 addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button3];
        
        
        
        button4 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		
		
        
		button4.frame = CGRectMake(
                                   b.origin.x + b.size.width / 2 + 10,
                                   b.origin.y + b.size.height /2,
                                  s.width,
                                  s.height
                                  );
        
		[button4 setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
		[button4 setTitle: @"I hate blue" forState: UIControlStateNormal];
        
		[button4 addTarget: self
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button4];
    }
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
