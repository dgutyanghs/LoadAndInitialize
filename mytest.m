//
//  mytest.m
//  LoadAndInitializer
//
//  Created by AlexYang on 4/18/16.
//  Copyright © 2016 AlexYang. All rights reserved.
//

#import "mytest.h"

@implementation mytest

@end

@interface SuperClass : NSObject
@end

@interface ChildClass : SuperClass
@end

/******* Implementation *******/
@implementation SuperClass

+ (void) initialize {
   NSLog(@"%@ %s", [self class], __FUNCTION__);
}

+ (void) load {
    NSLog(@"SuperClass %s called ", __FUNCTION__);
//    NSLog(@"%@ %s", [self class], __FUNCTION__);
}

@end

@implementation ChildClass

+ (void) initialize {
       NSLog(@"%@ %s", [self class], __FUNCTION__);
}

+ (void)load {
    NSLog(@"ChildClass %s called ", __FUNCTION__);
//    NSLog(@"%@ %s", [self class], __FUNCTION__);
}

@end

