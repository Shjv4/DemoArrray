//
//  main.m
//  DemoArrray
//
//  Created by hoangna on 4/2/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSArray *listOfLetters1 = [NSArray arrayWithObjects:@"A", @"B", @"C", nil];
        NSLog(@"listOfLetters1 = %@", listOfLetters1);
        NSNumber *number1 = [NSNumber numberWithInt:1];
        NSNumber *number2 = [NSNumber numberWithInt:2];
        NSNumber *number3 = [NSNumber numberWithInt:3];
        NSMutableArray *listOfNumbers1 = [[NSMutableArray alloc] initWithObjects:number1, number2, number3, [NSNumber numberWithInt:5], nil];
        NSLog(@"listOfNumbers1 = %@, listOfNumbers1.count = %lu", listOfNumbers1, listOfNumbers1.count);
        id list[3];
        list[0] = @"D";
        list[1] = @"E";
        list[2] = @"F";
        NSMutableArray *listOfLetters2 = [[NSMutableArray alloc] initWithObjects:list count:3];
        NSLog(@"listOfLetters2 = %@, listOfLetters2.count = %lu", listOfLetters2, listOfLetters2.count);
    }
    return 0;
}

