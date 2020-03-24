//
//  AbstractMediator.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Colleague;

NS_ASSUME_NONNULL_BEGIN

@interface AbstractMediator : NSObject

- (void)sendMessage:(NSString*)message colleage:(Colleague*)colleage;

@end

NS_ASSUME_NONNULL_END
