//
//  main.m
//  testKVC
//
//  Created by leyikao on 15/8/20.
//  Copyright (c) 2015年 leyikao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Student *stu = [[Student alloc]init];
        
        [stu setValue:@"张三" forKey:@"name"];
        NSString *na = [stu valueForKey:@"name"];
        NSLog(@"%@",na);
        
        stu.age = @100;
    }
    return 0;
}
