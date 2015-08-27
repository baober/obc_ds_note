//
//  InsertOrder.m
//  testOrder
//
//  Created by J.R. on 15/8/26.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import "InsertOrder.h"
#import "SortHelper.h"

/*
 插入排序
 */
@implementation InsertOrder

+(NSMutableArray*)sort: (NSMutableArray*)array
{
    if(array == nil || array.count == 0){
        return array;
    }
    unsigned long int times = 0;
    
    for(int i = 1; i < array.count; i++)
    {
        for(int j = i - 1; j >= 0 && [array[j] compare:array[j + 1]] == NSOrderedDescending; j--)
        {
            times++;
            [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
        }
        //[SortHelper printArray:array];
    }
    
    NSLog(@"End InsertOrder, and use times: %lo", times);
    return array;
}
@end
