//
//  FirebaseLogEvent.h
//  TraceAnalysisSDK
//
//  Created by steve on 2025/1/7.
//  Copyright © 2025  All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *FirebaseLogEventVersion = @"1.0.0";

@interface FirebaseLogEvent : NSObject

#pragma mark - 登录次数

/**
 打开APP
 打开APP(应用切到后台,再切回前台时也触发)
 */
+ (void)log_Open
{
    // Firebase自动事件，不需要主动调用
}

/**
 登录
 
 @param method
        含义：登录时所用的方法
        类型：字符串
        备注：比如Google，不是必须提供
 */
+ (void)log_Login_method:(NSString *)method;

#pragma mark - 付费

/**
 应用内购买事件
 记录应用内购买的详细信息
 请注意：游戏重装后无需上报历史付费数据(包括自动或者手动恢复内购）

 @param productID
        含义：产品ID
        类型：字符串
        备注：例如：600292.com.strategy.north.tower.bxx.99

 @param price
        含义：产品价格
        类型：数值
        备注：

 @param currency
        含义：货币代码
        类型：字符串
        备注：例如：USD

 @param quantity
        含义：商品数量
        类型：数值
        备注：
 */

- (void)logInAppPurchase_ProductID:(NSString *)productID
                             price:(NSNumber *)price
                          currency:(NSString *)currency
                          quantity:(NSNumber *)quantity;

/**
 本次用户充值
 请注意：游戏重装后无需上报历史付费数据(包括自动或者手动恢复内购)
 
 @param price
        含义：本次充值金额
        类型：数值
        备注：double类型，货币单位美元
 */
+ (void)log_T0E1_Price:(double)price;

/**
 用户首次任意付费
 记录用户首次进行任意确认成功的内购付费的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PA;

/**
 用户累计付费达到或超过19.99美元
 记录用户累计内购付费达到或超过19.99美元的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PB;

#pragma mark - 等级

/**
 用户等级升级
 用户等级达到相应级时上报
 
 @param level
        含义：等级
        类型：数值
        备注：升级后等级
 */
+ (void)log_T0Q_LevelUp:(int)level;

#pragma mark - 用户成长等级

/**
 达到新手保护结束等级
 记录玩家达到新手保护结束等级的事件。具体的等级依据每个游戏的进度设置，需与运营和CP沟通确定。
 */
+ (void)log_T0Q_E;

/**
 达到最早付费等级
 记录玩家达到最早付费等级的事件。具体的等级依据每个游戏的付费特性设置，需与运营和CP沟通确定。
 */
+ (void)log_T0Q_P;

/**
 累计登录次数=1次
 记录玩家首次登录的事件。仅在累计登录次数为1时上报。
 */
+ (void)log_T_LoginA;

/**
 累计登录次数=5次
 记录玩家累计登录达到5次的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_LoginB;

#pragma mark - 商城

/**
 用户首次在商店中停留时间>=15秒
 记录用户在商店中停留时间达到或超过15秒的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PPA;

/**
 用户首次在商店中停留时间>=30秒
 记录用户在商店中停留时间达到或超过30秒的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PPB;

#pragma mark - 广告

/**
 用户累计广告展示次数达到1次
 记录用户累计广告展示次数达到1次的事件（包括插屏广告与激励视频广告）。仅在首次满足条件时上报。
 */
+ (void)log_T_AdsA;

/**
 用户累计广告展示次数达到8次
 记录用户累计广告展示次数达到8次的事件（包括插屏广告与激励视频广告）。仅在首次满足条件时上报。
 */
+ (void)log_T_AdsB;

#pragma mark - 新手引导

/**
 完成新手引导
 */
+ (void)log_TutorialCompletion;

#pragma mark - 广告收益上报

/**
 广告展示事件（接入MSSDK的情况下，MSSDK会自动上报，不能再调用此方法，否则会数据重复）
 记录广告展示的详细信息

 @param value
        含义：广告收益金额
        类型：数值

 @param currency
        含义：货币代码
        类型：字符串
        备注：例如：USD

 @param adPlatform
        含义：广告聚合平台
        类型：字符串
        备注：如：appLovin，ironSource

 @param adUnitName
        含义：广告ID
        类型：字符串
        备注：是优化时创建的广告ID, 只用来优化，通常是对应设置价格的一个key。

 @param adFormat
        含义：广告类型
        类型：字符串
        备注：如：interstitial，rewarded_video

 @param adSource
        含义：广告来源，广告投放平台
        类型：字符串
        备注：如：vungle
 */

- (void)log_AdImpression_value:(NSNumber *)value
                      currency:(NSString *)currency
                    adPlatform:(NSString *)adPlatform
                    adUnitName:(NSString *)adUnitName
                      adFormat:(NSString *)adFormat
                      adSource:(NSString *)adSource;

@end

