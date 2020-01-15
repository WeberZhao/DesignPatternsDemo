//
//  Build.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Build : NSObject
- (void)BuildHead;
- (void)BuildBody;
- (void)BuildArmLeft;
- (void)BuildArmRight;
- (void)BuildLegLeft;
- (void)BuildLegRight;
@end

NS_ASSUME_NONNULL_END
