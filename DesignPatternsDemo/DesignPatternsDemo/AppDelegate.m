//
//  AppDelegate.m
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/8.
//  Copyright © 2019 Weber. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    
//    NSArray *array = @[@"1", @"2", @"3", @"4"];
//    if(0+4 <= array.count){
//    NSArray *subArray = [array subarrayWithRange:NSMakeRange(0, 4)];
//
//    NSLog(@"%@", subArray);
//    }else{
//        NSLog(@"越界");
//    }
    
    
//    NSUInteger a = 0;
//    NSLog(@"%lu", a - 4);
//    NSString *str = @"<password>a12345678</password><ae>13110451886</ae><user_id>13110451886</user_id><session>MdK4xYbb5n1Mq</session></today_order>";
//    NSMutableString *logStr = str.mutableCopy;
//    NSLog(@"替换前 %@", logStr);
//    NSString *pass = @"a12345678";
//
//    NSRange range = [logStr rangeOfString:pass];
//    if(NSMaxRange(range) <= logStr.length){
//        [logStr replaceCharactersInRange:range withString:@"******"];
//    }
//
//    NSLog(@"替换后 %@", logStr);
    
    
    unsigned short a = 1;
    unsigned short b = -1;
    
    unsigned short f = a+b;
    
//    short d = a+b;
    
    short e = b;
    short d = a + b;
    unsigned short c = d;
    
    
    NSLog(@"a = %d b = %u a+b=%u", a, b, c);
    
    
    
//    NSArray *data = @[];
//
//    NSRange range = NSMakeRange(-1, 1);
//    NSInteger maxRange = NSMaxRange(range);
//
//    if(range.location > data.count || NSMaxRange(range) > data.count){
//        NSLog(@"越界");
//    }else{
//        NSLog(@"没越界");
//    }
//
    
//    NSInteger loc = data.count-1;
//    if(loc >= 0 && loc + 1 <= data.count){
//        NSLog(@"没越界");
//    }
    
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
