//
//  My1stTest.m
//  kiwiSpike
//
//  Created by u16suzu on 2013/09/10.
//  Copyright (c) 2013年 u16suzu. All rights reserved.
//


#import "Kiwi.h"
#import "User.h"

SPEC_BEGIN(UserSpec)


describe(@"HogeUser", ^{
    __block User *taro;
    
    beforeAll(^{
       taro = [[User alloc]init];
    });

    it(@"taro", ^{
        [[taro.name should] equal:@"taro"];
    });
});

SPEC_END
