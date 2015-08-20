//
//  Student.h
//  testKVC
//
//  Created by leyikao on 15/8/20.
//  Copyright (c) 2015年 leyikao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    NSString *name;
    
}
-(instancetype)init;
@property (strong,nonatomic)NSNumber *age;

@end
