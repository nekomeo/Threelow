//
//  main.m
//  Threelow
//
//  Created by Elle Ti on 2017-07-26.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *dices = @[ // variable efficient?
                           [[Dice alloc] init],
                           [[Dice alloc] init],
                           [[Dice alloc] init],
                           [[Dice alloc] init],
                           [[Dice alloc] init]
                           ];
        
        BOOL roll = YES;
        char input[255];
        
        NSString *convertedChar = [[NSString alloc] init];
        NSString *typeRollToRoll = @"roll";
        NSLog(@"Enter 'roll' to roll");
        
        while (roll)
        {
            if ([typeRollToRoll isEqualToString:@"roll"]) {
                fgets(input, 255, stdin);
                convertedChar = [NSString stringWithUTF8String:input];
                
                for (int i = 0; i < dices.count; i++)
                {
                    Dice *die = dices[i];
                    
                    [die roll]; // randomize objects in the array
                    NSLog(@"%@", die.faceValue);
                }
            }
            else
            {
                break;
            }
        }

    }
    return 0;
}
