//
//  Counter.h
//  SimpleApp
//
//  Created by Ben Bakker on 12/10/17.
//  Copyright © 2017 Ben Bakker. All rights reserved.
//

#ifndef Counter_h
#define Counter_h

#import <UIKit/UIKit.h>

@interface Counter:  NSObject

@property (nonatomic) NSInteger count;

-(NSString *) getCount;
-(void) incrementCounter;

@end

#endif /* Counter_h */
