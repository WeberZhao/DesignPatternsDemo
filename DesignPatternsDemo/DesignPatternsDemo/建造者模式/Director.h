//
//  Director.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Build.h"

NS_ASSUME_NONNULL_BEGIN

///指挥者
@interface Director : NSObject
@property (nonatomic,strong) Build *builder;
- (void)createPerson;
@end

NS_ASSUME_NONNULL_END
