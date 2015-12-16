//
//  SendMessage.m
//  ArrayObjects
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "SendMessage.h"
#import "Student.h"

@interface SendMessage ()

@end

@implementation SendMessage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student* a = [[Student alloc] init:@"Jack Ma" and:@"02"];
    Student* b = [[Student alloc] init:@"John Kim" and:@"01"];
    Student* c = [[Student alloc] init:@"James Hall" and:@"03"];
    
    NSArray* arr3 = @[a, b, c, @3.14];
    
    //[arr3 makeObjectsPerformSelector:@selector(sayYourName)];
    
    [arr3 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj respondsToSelector:@selector(sayYourName)]) {
            [obj performSelector:@selector(sayYourName)];
        }
    }];
    
}



@end
