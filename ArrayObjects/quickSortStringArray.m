//
//  quickSortStringArray.m
//  ArrayObjects
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "quickSortStringArray.h"

@interface quickSortStringArray ()

@end

@implementation quickSortStringArray

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray* arr = @[@"Sorry", @"It", @"My", @"Bad"];
    
    NSArray* sortedArray = [arr sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSLog(@"%@", sortedArray);
}


@end
