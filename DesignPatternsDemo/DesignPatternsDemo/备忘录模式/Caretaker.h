//
//  Caretaker.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

NS_ASSUME_NONNULL_BEGIN

@interface Caretaker : NSObject

@property (nonatomic,strong) Memento *memento;

@end

NS_ASSUME_NONNULL_END
