//
//  QuickSort.m
//  testOrder
//
//  Created by JR on 15/8/31.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import "QuickSort.h"
#import "SortHelper.h"

@implementation QuickSort

+(NSMutableArray*)sort: (NSMutableArray*)array
{
    if(array == nil || array.count == 0){
        return array;
    }
    
    [self quickSortStep:array left:0 right:[array count] - 1];
    [SortHelper printArray:array];
    return array;
}

+(void)quickSortStep: (NSMutableArray*)array left:(NSInteger)left right:(NSInteger)right
{
    if(right > left)
    {
        NSInteger i = left;
        //NSInteger i = left + 1;
        NSInteger j = right + 1;
        while(true)
        {
            while(i + 1 < [array count] && [[array objectAtIndex:++i] compare:[array objectAtIndex:left]] == NSOrderedAscending);
            /*while(i < [array count] && [array[i] compare:array[left]] == NSOrderedAscending)
            {
                NSLog(@"i = %lo pass", i);
                i++;
            }*/
            while(j > 0 && [array[--j] compare:array[left]] == NSOrderedDescending);
            
            //printf("i=%s, j=%s", [[[NSNumber numberWithLong:i] stringValue]UTF8String], [[[NSNumber numberWithLong:j] stringValue]UTF8String]);
            //NSLog(@"i = %lo, j = %lo", i, j);
            
            if(i >= j){
                break;
            }
            [array exchangeObjectAtIndex:i withObjectAtIndex:j];
            //printf("while once finish: ");
            //[SortHelper printArray:array];
        }
        [array exchangeObjectAtIndex:left withObjectAtIndex:j];
        //printf("step finish: ");
        //NSLog(@"step finish: from %lo to %lo", left, right);
        //[SortHelper printArray:array left:left right:right];
        [self quickSortStep:array left:left right:j - 1];
        [self quickSortStep:array left:j + 1 right:right];
    }
}

@end
