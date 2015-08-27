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
@end
