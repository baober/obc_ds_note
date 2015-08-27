//
//  BuddleSort.h
//  testOrder
//
//  Created by J.R. on 15/8/26.
//  Copyright (c) 2015年 net.baober. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BuddleSort : NSObject

+(NSMutableArray*)buddleSortNormal: (NSMutableArray*)array;
+(NSMutableArray*)buddleSortBetter: (NSMutableArray*)array;
+(NSMutableArray*)buddleSortBest: (NSMutableArray*)array;

@end
