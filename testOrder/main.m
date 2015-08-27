//
//  main.m
//  testOrder
//
//  Created by J.R. on 15/8/26.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortHelper.h"
#import "Sorter.h"
#import "BuddleSort.h"
#import "InsertOrder.h"

/*
 TBD: add source to github
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        NSNumber *num1 = [NSNumber numberWithInt:3];
        NSNumber *num2 = [NSNumber numberWithInt:4];
         //num1到num2的队列，是升序还是降序
        bool result = [num1 compare:num2] == NSOrderedDescending;
        NSLog(@"%@", result ? @"true" : @"false");
         */
        NSArray *arr = [NSArray arrayWithObjects:
                        [NSNumber numberWithInt:10],
                        [NSNumber numberWithInt:10],
                        [NSNumber numberWithInt:3],
                        [NSNumber numberWithInt:7],
                        [NSNumber numberWithInt:2],
                        [NSNumber numberWithInt:5],
                        [NSNumber numberWithInt:6],
                        [NSNumber numberWithInt:9],
                        nil];
        NSLog(@"original array:");
        //printf("original array:");
        [SortHelper printArray:[NSMutableArray arrayWithArray:arr]];
        
        //冒泡排序Normal
        //[BuddleSort buddleSortNormal:[NSMutableArray arrayWithArray:arr]];//34次
        //[BuddleSort buddleSortBetter:[NSMutableArray arrayWithArray:arr]];//31
        //[BuddleSort buddleSortBest:[NSMutableArray arrayWithArray:arr]];//25次
        
        //插入排序
        //[InsertOrder sort:[NSMutableArray arrayWithArray:arr]];//20次
        
        //选择排序
        
        //快速排序
    }
    return 0;
}
