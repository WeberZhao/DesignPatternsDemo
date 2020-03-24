//
//  Circle.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject<Shape>{
    @private
    NSString *_color;
}
@property (nonatomic,assign) int x;
@property (nonatomic,assign) int y;
@property (nonatomic,assign) int radius;

- (instancetype)initWithColor:(NSString*)color;


@end

NS_ASSUME_NONNULL_END
