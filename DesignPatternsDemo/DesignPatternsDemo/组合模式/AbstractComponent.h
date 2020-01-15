//
//  AbstractComponent.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/15.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractComponent : NSObject

@property (nonatomic,copy) NSString *name;

- (void)add:(AbstractComponent*)c;
- (void)remove:(AbstractComponent*)c;
- (void)display;


@end

NS_ASSUME_NONNULL_END
