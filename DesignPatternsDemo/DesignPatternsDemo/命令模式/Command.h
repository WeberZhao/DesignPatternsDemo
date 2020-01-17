//
//  Command.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject

@property (nonatomic,strong) Receiver *receiver;

- (void)Execute;

@end

NS_ASSUME_NONNULL_END
