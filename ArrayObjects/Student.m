//
//  Student.m
//  ArrayObjects
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype) init:(NSString *)fullName and:(NSString *)studentID {
    self = [super init];
    if (self) {
        self.fullName = fullName;
        self.studentID = studentID;
    }
    return self;
}

- (void) sayYourName {
    NSLog(@"My name is %@", self.fullName);
}

@end
