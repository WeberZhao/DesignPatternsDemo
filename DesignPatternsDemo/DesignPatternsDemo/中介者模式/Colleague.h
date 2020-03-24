//
//  Colleague.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property (nonatomic,strong) AbstractMediator *mediator;

- (void)sendMessage:(NSString*)message;
- (void)notifyMessage:(NSString*)message;
@end

NS_ASSUME_NONNULL_END
