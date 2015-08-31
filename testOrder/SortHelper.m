//
//  SortHelper.m
//  testOrder
//
//  Created by J.R. on 15/8/26.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import "SortHelper.h"

@implementation SortHelper
+(void)printArray: (NSMutableArray*)array{
    for(NSNumber* num in array){
        //NSLog(@"%i ", [num intValue]);
        printf(" %s", [[num stringValue] UTF8String]);
    }
    printf("\n");
}

+(void)printArray:(NSMutableArray *)array left:(NSInteger)left right:(NSInteger)right
{
    if(left > right || right + 1 > array.count)
    {
        return;
    }
    
    for(NSInteger i = left; i < right + 1; i++)
    {
        printf(" %s", [[array[i] stringValue]UTF8String]);
    }
    printf("\n");
}
@end
