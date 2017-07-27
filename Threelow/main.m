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

        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        Dice *dice6 = [[Dice alloc] init];
        
        NSArray *dices = @[dice1, dice2, dice3, dice4, dice5, dice6];
        for (int i = 0; i < dices.count; i++)
        {
            Dice *die = dices[i];
            
            [die randomize]; // randomize objects in the array
            NSLog(@"%@", die.faceValue);
        }

    }
    return 0;
}
