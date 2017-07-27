//
//  Dice.m
//  Threelow
//
//  Created by Elle Ti on 2017-07-26.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    if (self = [super init])
    {
//        _faces = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
        _faces = @[@1, @2, @3, @4, @5, @6];
    }
    return self;
}

- (void)roll
{
    self.value = arc4random_uniform(5);
}

- (NSNumber *)faceValue
{
    NSNumber *num = self.faces[self.value];
    // [_faces objectAtIndex:_value];
    
    return num;
}

@end
