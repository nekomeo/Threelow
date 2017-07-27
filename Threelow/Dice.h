//
//  Dice.h
//  Threelow
//
//  Created by Elle Ti on 2017-07-26.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, strong) NSArray *faces;
@property (nonatomic, assign) NSInteger value;

- (void)roll;
- (NSNumber *)faceValue;

@end
