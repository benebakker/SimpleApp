//
//  Counter.m
//  SimpleApp
//
//  Created by Ben Bakker on 12/10/17.
//  Copyright © 2017 Ben Bakker. All rights reserved.
//

#import "Counter.h"

@implementation Counter

-(instancetype)init
{
    if (self){
        // this code executed self is not NULL, that is - it has been successfull allocated in memory
        self.count=0;
    }
    return self;
}

-(NSString *)getCount
{
    // NSInteger is a primitive type and does not come with class methods
    return [NSString stringWithFormat:@"%ld", (long)_count];
}

-(void)incrementCounter
{
    // this is equivalent to self.count 
    _count++;
}

@end


