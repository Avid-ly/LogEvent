//
//  AppsFlyerLogEvent.h
//  TraceAnalysisSDK
//
//  Created by steve on 2025/1/7.
//  Copyright © 2025  All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *AppsFlyerLogEventVersion = @"1.0.0";

@interface AppsFlyerLogEvent : NSObject

#pragma mark - 游戏生命周期

/**
 打开APP
 打开APP(应用切到后台,再切回前台时也触发)
 */
+ (void)log_Open;

#pragma mark - 新手引导

/**
 完成新手引导

 @param af_success
        含义：用户是否完成新手引导
        类型：字符串
        备注：
 @param af_tutorial_id
        含义：新手引导阶段ID
        类型：字符串
        备注：新手引导阶段ID（无则不传该参数），烦请说明
 @param af_content
        含义：新手引导阶段名称
        类型：字符串
        备注：新手引导阶段名称（无则不传该参数），烦请说明
 */
+ (void)log_TutorialCompletion_success:(NSString *)af_success tutorialId:(NSString *)af_tutorial_id content:(NSString *)af_content;

#pragma mark - 登录次数

/**
 登录
 */
+ (void)log_Login;

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

#pragma mark - 付费

/**
 应用内购买事件
 记录应用内购买的详细信息

 @param af_revenue
 含义：订单总额
 类型：数值

 @param af_currency
 含义：货币代码
 类型：字符串

 @param af_quantity
 含义：商品数量
 类型：数值

 @param af_content_id
 含义：商品ID
 类型：字符串

 @param af_order_id
 含义：订单ID
 类型：字符串
 备注：iOS 传 transaction_id，Android 传 Google order id

 @param af_validated
 含义：是否验证购买
 类型：布尔值
 备注：已验证为 true，未验证为 false

 @param af_receipt_id
 含义：收据 ID
 类型：字符串
 备注：iOS 不传，Android 传 purchaseToken
 */

- (void)logPurchase_Revenue:(NSNumber *)af_revenue
                   currency:(NSString *)af_currency
                   quantity:(NSNumber *)af_quantity
                  contentID:(NSString *)af_content_id
                    orderID:(NSString *)af_order_id
                  validated:(BOOL)af_validated
                  receiptID:(NSString *)af_receipt_id;

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
 等级变动
 用户等级变动产生时上报(无该属性时忽略)

 @param U
        含义：游戏中角色UID
        类型：字符串
        备注：在人物界面或设定中可直接确认到的UID,无则为设备id

 @param H
        含义：所在服务器
        类型：字符串
        备注：角色所在服务器(若服务器与区的概念重合,则为0;没有服务器概念则不传该参数)

 @param Z
        含义：所在区
        类型：字符串
        备注：角色所在区(没有区概念则不传该参数)

 @param GGID
        含义：账号id
        类型：字符串
        备注：登录sdk生成的id(未接入则不传该参数)

 @param M
        含义：游戏模式
        类型：字符串
        备注：区分用户参与的模式，如普通模式、vip房间等

 @param G
        含义：关卡id或机台id
        类型：字符串
        备注：对应关卡id或机台id或牌局类型等

 @param L
        含义：等级
        类型：数值
        备注：升级后等级
 */
+ (void)log_T0Q_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
                G:(NSString *)G
                L:(NSNumber *)L;

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

#pragma mark - 广告收益上报

/**
 广告收入上报（接入MSSDK的情况下，MSSDK会自动上报，不能再调用此方法，否则会数据重复）
 接入聚合广告 SDK，实时上报拿到的收入参数

 @param COUNTRY
        含义：国家
        类型：字符串

 @param AD_UNIT
        含义：广告单元ID
        类型：字符串
        备注：每种广告类型和位置都会创建一个广告单元，并生成独特的广告单元ID，由广告平台在创建广告单元时提供。

 @param AD_TYPE
        含义：广告类型
        类型：字符串
        备注：Banner, Interstitial, Rewarded 等类型

 @param PLACEMENT
        含义：广告的展示场景
        类型：字符串
        备注：广告位名称

 @param REVENUE
        含义：广告收入金额
        类型：数值

 @param SOURCE
        含义：聚合广告来源
        类型：字符串
        备注：MAX / IRONSOURCE / ADMOB
 */
+ (void)log_T0_AD_REV_COUNTRY:(NSString *)COUNTRY
                      AD_UNIT:(NSString *)AD_UNIT
                      AD_TYPE:(NSString *)AD_TYPE
                    PLACEMENT:(NSString *)PLACEMENT
                      REVENUE:(NSNumber *)REVENUE
                       SOURCE:(NSString *)SOURCE;

#pragma mark - 用户度量

/**
 用户等级达到T0Q_L值时上报
 首次游戏启动后，通过TASDK【游戏用户度量】方法，获取T0Q_L、T0Q_M、T0Q_H对应的值并缓存在本地。
 若API未能获取最新值，则本地T0Q_L、T0Q_M、T0Q_H 的值使用默认值(前提为有测试数据)

 【游戏用户度量】方法的介绍文档如下：
 ios介绍文档：https://doc.gamehaus.com/sdk/#/tasdk/ios/ios_tag?id=_36-%e8%8e%b7%e5%be%97-%e6%b8%b8%e6%88%8f%e7%94%a8%e6%88%b7%e5%ba%a6%e9%87%8f-%e6%a0%87%e7%ad%be
 unity介绍文档：https://doc.gamehaus.com/sdk/#/tasdk/unity/unity_tag?id=_8-%e6%b8%b8%e6%88%8f%e7%94%a8%e6%88%b7%e5%ba%a6%e9%87%8f%e6%a0%87%e7%ad%be
 
 @param U
        含义：游戏中角色UID
        类型：字符串
        备注：在人物界面或设定中可直接确认到的UID,无则为设备id
 
 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)
 */
+ (void)log_T0Q_L_U:(NSString *)U
                  L:(NSNumber *)L;

/**
 用户等级达到T0Q_M值时上报
 首次游戏启动后，通过TASDK【游戏用户度量】方法，获取T0Q_L、T0Q_M、T0Q_H对应的值并缓存在本地。
 若API未能获取最新值，则本地T0Q_L、T0Q_M、T0Q_H 的值使用默认值(前提为有测试数据)

 @param U
        含义：游戏中角色UID
        类型：字符串
        备注：在人物界面或设定中可直接确认到的UID,无则为设备id

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)
 */
+ (void)log_T0Q_M_U:(NSString *)U
                  L:(NSNumber *)L;


/**
 用户等级达到T0Q_H值时上报
 首次游戏启动后，通过TASDK【游戏用户度量】方法，获取T0Q_L、T0Q_M、T0Q_H对应的值并缓存在本地。
 若API未能获取最新值，则本地T0Q_L、T0Q_M、T0Q_H 的值使用默认值(前提为有测试数据)

 @param U
        含义：游戏中角色UID
        类型：字符串
        备注：在人物界面或设定中可直接确认到的UID,无则为设备id

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)
 */
+ (void)log_T0Q_H_U:(NSString *)U
                  L:(NSNumber *)L;

@end

