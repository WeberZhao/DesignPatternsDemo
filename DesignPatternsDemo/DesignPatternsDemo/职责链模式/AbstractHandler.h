//
//  AbstractHandler.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/20.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractHandler : NSObject

@property (nonatomic,strong) AbstractHandler *nextResponse;

- (void)HandleRequest:(int)request;

@end

NS_ASSUME_NONNULL_END
