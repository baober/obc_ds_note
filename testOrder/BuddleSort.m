//
//  BuddleSort.m
//  testOrder
//
//  Created by J.R. on 15/8/26.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import "BuddleSort.h"
#import "SortHelper.h"

/*
 冒泡排序
 */
@implementation BuddleSort

+(NSMutableArray*)buddleSortNormal: (NSMutableArray*)array{
    if(array == nil || array.count == 0){
        return nil;
    }
    
    //NSLog(@"Begin buddleSortNormal: ");
    unsigned long int times = 0;
    unsigned long int swap_times = 0;
    
    for(int i = 1; i < array.count; i++){
        for(int j = 0; j < array.count - i; j++){
            times++;
            if([array[j] compare:array[j + 1]] == NSOrderedDescending){
                [array exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                swap_times++;
            }
        }
        //[SortHelper printArray:array];
    }
    
    NSLog(@"End buddleSortNormal, and use times: %lo, swap times: %lo", times, swap_times);
    return array;
}

/*
 记录下本次排序是否产生了交换，如果没有的话，就可以停止排序了
 */
+(NSMutableArray*)buddleSortBetter: (NSMutableArray*)array{
    if(array == nil || array.count == 0){
        return nil;
    }
    
    //NSLog(@"Begin buddleSortBetter: ");
    unsigned long int times = 0;
    unsigned long int swap_times = 0;
    
    bool hasChange = true;
    int i = 1;
    
    while(i < array.count && hasChange){
        hasChange = false;
        for(int j = 0; j < array.count - i; j++){
            times++;
            if([array[j] compare:array[j + 1]] == NSOrderedDescending){
                hasChange = true;
                [array exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                swap_times++;
            }
        }
        //[SortHelper printArray:array];
        i++;
    }
    
    NSLog(@"End buddleSortBetter, and use times: %lo, swap times: %lo", times, swap_times);
    return array;
}

/*
 用flag记录最后交换的位置，其后面的是已经排序好的，下次不用再比较了
 */
+(NSMutableArray*)buddleSortBest: (NSMutableArray*)array
{
    if(array == nil || array.count == 0){
        return nil;
    }
    
    //NSLog(@"Begin buddleSortBest: ");
    
    int flag = (int)[array count] - 1;
    unsigned long int times = 0;
    unsigned long int swap_times = 0;
    
    while(flag > 0){
        int originalFlag = flag;
        for(int j = 0; j < originalFlag; j++){
            times++;
            if([array[j] compare:array[j + 1]] == NSOrderedDescending){
                [array exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                swap_times++;
                flag = j;
            }
        }
        //[SortHelper printArray:array];
    }
    
    NSLog(@"End buddleSortBest, and use times: %lo, swap times: %lo", times, swap_times);
    
    return array;
}

@end
