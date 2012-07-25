//
//  View.m
//  Jul12
//
//  Created by Piyal Basu on 7/19/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View.h"
#import "BigViw.h"


@implementation View
- (void) valueChanged: (UISwitch *) sender {
	


    
    if (theSwitch.isOn) {
        theSwitch = sender;
        self.backgroundColor = [UIColor blueColor];
	} 

    
    else if (theSwitch2.isOn) {
        theSwitch2 = sender;
        self.backgroundColor = [UIColor yellowColor];
	} 
    
    else if (theSwitch3.isOn) {
        theSwitch3 = sender;
        self.backgroundColor = [UIColor greenColor];
	} 
    
    else if (theSwitch4.isOn) {
        theSwitch4 = sender;
        self.backgroundColor = [UIColor redColor];
	} 
    
    
    else {
        self.backgroundColor = [UIColor whiteColor];     
	}
    
 	
	    
}








- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        theSwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
        if(theSwitch == nil) {
            
            return nil;
        }
        [theSwitch addTarget: self
                      action: @selector(valueChanged: )
         forControlEvents: UIControlEventValueChanged
         ];
        
        CGRect b = self.bounds;
        
        theSwitch.center = CGPointMake(
          b.origin.x + b.size.width / 4,
        b.origin.y + b.size.height /2
        );
        theSwitch.on = NO;
        [self addSubview: theSwitch];


        theSwitch2 = [[UISwitch alloc] initWithFrame: CGRectZero];
        if(theSwitch2 == nil) {
            
            return nil;
        }
        [theSwitch2 addTarget: self
                       action: @selector(valueChanged: )
             forControlEvents: UIControlEventValueChanged
         ];
        
        
        
        theSwitch2.center = CGPointMake(
                                        b.origin.x + b.size.width / 4,
                                        b.origin.y + b.size.height /4
                                        );
        theSwitch2.on = NO;
        [self addSubview: theSwitch2];

        theSwitch3 = [[UISwitch alloc] initWithFrame: CGRectZero];
        if(theSwitch3 == nil) {
            
            return nil;
        }
        [theSwitch3 addTarget: self
                       action: @selector(valueChanged: )
             forControlEvents: UIControlEventValueChanged
         ];
        
        
        
        theSwitch3.center = CGPointMake(
                                        b.origin.x + b.size.width / 2 + 50,
                                        b.origin.y + b.size.height /4
                                        );
        theSwitch3.on = NO;
        [self addSubview: theSwitch3];  
        
        
        theSwitch4 = [[UISwitch alloc] initWithFrame: CGRectZero];
        if(theSwitch4 == nil) {
            
            return nil;
        }
        [theSwitch4 addTarget: self
                       action: @selector(valueChanged: )
             forControlEvents: UIControlEventValueChanged
         ];
        
        
        
        theSwitch4.center = CGPointMake(
                                        b.origin.x + b.size.width / 2 + 50,
                                        b.origin.y + b.size.height /2
                                        );
        theSwitch4.on = NO;
        [self addSubview: theSwitch4]; 
        
        
        NSString *string = NSLocalizedString(@"Greeting", @"displayed with drawAtPoint:");

		UIFont *font = [UIFont systemFontOfSize: 12];
		CGSize size = [string sizeWithFont: font];
        
		//Put upper left corner of label in upper left corner of View.
		//Make label just big enough to hold the string.
		CGRect f = CGRectMake(
                              b.origin.x + b.size.width / 4,
                              b.origin.y + b.size.height /2 + 50,
                              size.width,
                              size.height
                              );
        
		label = [[UILabel alloc] initWithFrame: f];
		label.backgroundColor = [UIColor yellowColor];
		label.font = font;
		label.text = string;
		[self addSubview: label];
	
    
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
