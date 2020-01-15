//
//  AbstractClass.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractClass : NSObject

///抽象方法
- (void)PrimitiveOperation1;
- (void)PrimitiveOperation2;

///算法骨架
- (void)TemplateMethod;
@end

NS_ASSUME_NONNULL_END
