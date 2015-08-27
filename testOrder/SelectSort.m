//
//  SelectSort.m
//  testOrder
//
//  Created by J.R. on 15/8/27.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import "SelectSort.h"
#import "SortHelper.h"

@implementation SelectSort

+(NSMutableArray*)sort: (NSMutableArray*)array{
    if(array == nil || array.count == 0){
        return array;
    }
    
    unsigned long int times = 0;
    unsigned long int swap_times = 0;
    
    for(int i = 0; i < array.count; i++){
        int minIndex = i;
        for(int j = i + 1; j < array.count; j++){
            times++;
            if([array[minIndex] compare:array[j]] == NSOrderedDescending){
                minIndex = j;
            }
        }
        if(minIndex != i){
            swap_times++;
            [array exchangeObjectAtIndex:minIndex withObjectAtIndex:i];
        }
        
        //[SortHelper printArray:array];
    }
    
    NSLog(@"End SelectSort, and use times: %lo, swap times: %lo", times, swap_times);
    return array;
}

@end
