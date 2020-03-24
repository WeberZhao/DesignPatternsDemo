//
//  ShapeFactory.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShapeFactory : NSObject{
    @private
    NSMutableDictionary <NSString*, id<Shape>>*_circleMap;
}

- (id<Shape>)circleForColor:(NSString*)color;

@end

NS_ASSUME_NONNULL_END
