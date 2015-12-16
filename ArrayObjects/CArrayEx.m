//
//  CArrayEx.m
//  ArrayObjects
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "CArrayEx.h"

@interface CArrayEx ()

@end

@implementation CArrayEx

- (void) Swapa:(int*) a andb:(int*) b {
    int temp = *a;
    *a = *b;
    *b = temp;
}

- (void) QuickSort {
    int array[8][8];
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++) 
        {
            array[i][j] = arc4random_uniform(200);
        }
    }
    
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++) 
        {
            for (int k = 0; k < 8; k++)
            {
                for (int l = 0; l < 8; l++)
                {
                    if (array[i][j] < array[k][l]) {
                        [self Swapa:&array[i][j] andb:&array[k][l]];
                    }
                }
            }
        }
    }
    
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++) 
        {
            printf("%d   ", array[i][j]);
            if (j == 7) {
                printf("\n");
            }
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self QuickSort];
}


@end
