//
//  Person1.h
//  OC(串讲)-协议实现买票
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person1 : NSObject
@property(copy,nonatomic)void(^movieBlock)(NSString *);
-(void)takemovie;
@end
