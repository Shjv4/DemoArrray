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
        
        // init array
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
        // get element of array
        NSString *stringObject1 = [listOfLetters1 objectAtIndex:0];
        NSLog(@"stringObject1 = %@", stringObject1);
        NSString *stringObject3 = [listOfLetters1 lastObject];
        NSLog(@"stringObject3 = %@", stringObject3);
        NSUInteger position = [listOfLetters1 indexOfObject:@"B"];
        NSLog(@"index of string 'B' is %lu", position);
        
        // iterating through an array
        for(NSMutableString *item in listOfLetters1) {
            NSLog(@"This string in lower case is %@", [item lowercaseString]);
        }
        // demo makeObjectsPerformSelector
        NSMutableString *string1 = [NSMutableString stringWithString:@"A"];
        NSMutableString *string2 = [NSMutableString stringWithString:@"B"];
        NSMutableString *string3 = [NSMutableString stringWithString:@"C"];
        NSArray *listOfObjects = [NSArray arrayWithObjects:string1, string2, string3, nil];
        NSArray *newArray = [[NSArray alloc] initWithArray:listOfObjects copyItems:YES];
        [listOfObjects makeObjectsPerformSelector:@selector(appendString:) withObject:@"-MORE"];
        NSLog(@"listOfObjects after append is %@", listOfObjects);
        NSLog(@"newArray is %@", newArray);
        [listOfObjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"object(%lu)'s description is %@", idx, [obj description]);
        }];
    }
    return 0;
}

