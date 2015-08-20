//
//  Student.m
//  testKVC
//
//  Created by leyikao on 15/8/20.
//  Copyright (c) 2015年 leyikao. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)init{
    self = [super init];
    if (self) {
     [self addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context{
    if ([keyPath isEqualToString:@"name"]) {
        NSLog(@"%@",change);
        
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

-(void)dealloc{
    [self removeObserver:self forKeyPath:@"name"];
}

@end
