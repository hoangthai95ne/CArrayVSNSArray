//
//  Student.h
//  ArrayObjects
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString* fullName;
@property (nonatomic, strong) NSString* studentID;

- (instancetype) init: (NSString*) fullName and: (NSString*) studentID;

- (void) sayYourName;

@end
