//
//  TASDKLogEvent.m
//  TraceAnalysisSDK
//
//  Created by steve on 2025/1/2.
//  Copyright © 2025  All rights reserved.
//

#import "TASDKLogEvent.h"
#if __has_include(<TraceAnalysisSDK/TraceAnalysis.h>)
#import <TraceAnalysisSDK/TraceAnalysis.h>
#else
#import "TraceAnalysis.h"
#endif

@implementation TASDKLogEvent

#pragma mark - Log

+ (void)logWithKey:(NSString *)key value:(id)value {
    
    NSLog(@"[TASDKLogEvent] key:%@ value:%@",key,value);
    [TraceAnalysis logWithKey:key value:value];
}

#pragma mark - 游戏生命周期

/**
 打开APP
 打开APP(应用切到后台,再切回前台时也触发)
 */
+ (void)log_T01
{
    NSString *key = @"T01";
    NSMutableDictionary *value = nil;
    [self logWithKey:key value:value];
}


#pragma mark - 资源加载

/**
 加载资源开始
 加载资源确认开始(无该属性时忽略)

 @param F
        含义：是否首次
        类型：数值
        备注：首次加载为1|非首次加载为0
 */
+ (void)log_T011_F:(NSNumber *)F
{
    NSString *key = @"T011";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [value setValue:F forKey:@"F"];
    [self logWithKey:key value:value];
}

/**
 加载资源打点
 当加载资源达到20%、40%、60%、80%、100%时调用
 
 @param progress
        含义：进度；
        类型：数值
        备注：0-1
 */
+ (void)log_T011_Progress:(double)progress {
    if (progress == 0.2) {
        NSString *key = @"T011A";
        [self logWithKey:key value:nil];
    }
    else if (progress == 0.4) {
        NSString *key = @"T011B";
        [self logWithKey:key value:nil];
    }
    else if (progress == 0.6) {
        NSString *key = @"T011C";
        [self logWithKey:key value:nil];
    }
    else if (progress == 0.8) {
        NSString *key = @"T011D";
        [self logWithKey:key value:nil];
    }
    else if (progress == 1) {
        NSString *key = @"T011E";
        [self logWithKey:key value:nil];
    }
}

/**
 点击update
 下载资源开始(点击update,有更新包时)
 */
+ (void)log_T011F {
    NSString *key = @"T011F";
    [self logWithKey:key value:nil];
}

/**
 加载资源结束
 加载资源确认结束

 @param T
        含义：时长
        类型：数值
        备注：本次加载资源消耗时长,单位精确到秒(0-86400间整数)
 @param F
        含义：是否首次
        类型：数值
        备注：首次加载为1|非首次加载为0
 @param P
        含义：更新补丁id
        类型：字符串
        备注：有更新下载时为对应的更新包,补丁包编号(无更新时为0)
 @param U
        含义：游戏中角色UID
        类型：字符串
        备注：在人物界面或设定中可直接确认到的UID,无则为设备id
 */

+ (void)log_T012_T:(NSNumber *)T
                 F:(NSNumber *)F
                 P:(NSString *)P
                 U:(NSString *)U
{
    NSString *key = @"T012";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [value setValue:T forKey:@"T"];
    [value setValue:F forKey:@"F"];
    [value setValue:P forKey:@"P"];
    [value setValue:U forKey:@"U"];
    [self logWithKey:key value:value];
}

/**
 加载资源错误
 从打开游戏到加载资源确认结束之间有异常信息时上报

 @param F
        含义：是否首次
        类型：数值
        备注：首次加载为1|非首次加载为0

 @param E
        含义：异常编号
        类型：字符串
        备注：对应异常信息编号(无异常则为0)
 */
+ (void)log_T013_F:(NSNumber *)F E:(NSString *)E
{
    NSString *key = @"T013";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [value setValue:F forKey:@"F"];
    [value setValue:E forKey:@"E"];
    [self logWithKey:key value:value];
}

#pragma mark - 登录

/**
 点击登录
 登录界面中选择不同账户类型后登录,含首次选择后自动登录

 @param I
        含义：登录类型
        类型：字符串
        备注：区分facebook, guest或其他
 */
+ (void)log_T03_I:(NSString *)I
{
    NSString *key = @"T03";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [value setValue:I forKey:@"I"];
    [self logWithKey:key value:value];
}

/**
 成功登录
 成功登录时,上报用户状态信息(应用切到后台,再切回前台时也触发)

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

 @param I
        含义：登录类型
        类型：数值
        备注：区分facebook,guest或其他

 @param L
        含义：等级
        类型：数值
        备注：用户等级(无则为0)

 @param V
        含义：VIP等级
        类型：数值
        备注：用户VIP等级(无则为0)

 @param A1
        含义：虚拟币1数量
        类型：数值
        备注：登录时主要虚拟货币1的数量(如金币,无则为0)

 @param A2
        含义：虚拟币2数量
        类型：数值
        备注：登录时主要虚拟货币2的数量(如钻石,无则为0)

 @param B1
        含义：累计解锁关卡或机台数量
        类型：数值
        备注：登录时已解锁的机台数或主线关卡数(通常为剧情模式,无则为0)

 @param B2
        含义：累计总局数
        类型：数值
        备注：登录时累计已玩过的总局数或总关卡数(所有模式,无则为0)

 @param F
        含义：是否首次
        类型：数值
        备注：是否首次成功登录游戏，首次为1，非首次为0

 @param AB
        含义：ab分组组别
        类型：字符串
        备注：角色UID对应的ab分组组别(无则为0)
 */
+ (void)log_T0F_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                I:(NSNumber *)I
                L:(NSNumber *)L
                V:(NSNumber *)V
               A1:(NSNumber *)A1
               A2:(NSNumber *)A2
               B1:(NSNumber *)B1
               B2:(NSNumber *)B2
                F:(NSNumber *)F
               AB:(NSString *)AB
{
    NSString *key = @"T0F";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (I) [value setValue:I forKey:@"I"];
    if (L) [value setValue:L forKey:@"L"];
    if (V) [value setValue:V forKey:@"V"];
    if (A1) [value setValue:A1 forKey:@"A1"];
    if (A2) [value setValue:A2 forKey:@"A2"];
    if (B1) [value setValue:B1 forKey:@"B1"];
    if (B2) [value setValue:B2 forKey:@"B2"];
    if (F) [value setValue:F forKey:@"F"];
    if (AB) [value setValue:AB forKey:@"AB"];
    [self logWithKey:key value:value];
}

#pragma mark - 登录次数

/**
 累计登录次数=1次
 记录玩家首次登录的事件。仅在累计登录次数为1时上报。
 */
+ (void)log_T_LoginA
{
    NSString *key = @"T_LoginA";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

/**
 累计登录次数=5次
 记录玩家累计登录达到5次的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_LoginB
{
    NSString *key = @"T_LoginB";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

#pragma mark - 新手引导

/**
 新手引导
 新手引导对应的每个阶段上报(如果只关注新手引导开始与结束，则忽略本事件;无该属性时忽略)

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

 @param I_GUIDE
        含义：新手引导阶段
        类型：字符串
        备注：对应的新手引导的不同阶段,如guide_1,guide2等等
 */
+ (void)log_T0A_U:(NSString *)U
                 H:(NSString *)H
                 Z:(NSString *)Z
              GGID:(NSString *)GGID
           I_GUIDE:(NSString *)I_GUIDE
{
    NSString *key = @"T0A";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (I_GUIDE) [value setValue:I_GUIDE forKey:@"I_GUIDE"];
    [self logWithKey:key value:value];
}

/**
 新手引导开始
 新手引导开始时上报(无该属性时忽略)

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
 */
+ (void)log_T0A_S_U:(NSString *)U
                  H:(NSString *)H
                  Z:(NSString *)Z
               GGID:(NSString *)GGID
{
    NSString *key = @"T0A_S";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    [self logWithKey:key value:value];
}

/**
 新手引导完成
 新手引导结束时上报(无该属性时忽略)

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
 */
+ (void)log_T0A_F_U:(NSString *)U
                  H:(NSString *)H
                  Z:(NSString *)Z
               GGID:(NSString *)GGID
{
    NSString *key = @"T0A_F";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    [self logWithKey:key value:value];
}


#pragma mark - 用户活动

/**
 新主题下载
 新主题下载时,上报下载结果(无该属性时忽略)

 @param U
        含义：游戏中角色UID
        类型：字符串
        备注：在人物界面或设定中可直接确认到的UID,无则为设备id

 @param G
        含义：关卡id或机台id
        类型：字符串
        备注：对应关卡id或机台id或牌局类型等

 @param S
        含义：结果
        类型：数值
        备注：下载结果,成功1|失败0|异常退出-1,不区分成功失败统一为1
 */
+ (void)log_T04_U:(NSString *)U
                G:(NSString *)G
                S:(NSNumber *)S
{
    NSString *key = @"T04";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (G) [value setValue:G forKey:@"G"];
    if (S) [value setValue:S forKey:@"S"];
    [self logWithKey:key value:value];
}


/**
 点击图标
 点击主界面的交互图标(主要)

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

 @param UI1
        含义：一级UI的id
        类型：字符串
        备注：如设置、邀请等；仅需主要UI(或根据需求指定)

 @param UI2
        含义：二级UI的id
        类型：字符串
        备注：如设置下的RATE GAME等
 */
+ (void)log_T06_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
              UI1:(NSString *)UI1
              UI2:(NSString *)UI2
{
    NSString *key = @"T06";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (UI1) [value setValue:UI1 forKey:@"UI1"];
    if (UI2) [value setValue:UI2 forKey:@"UI2"];
    [self logWithKey:key value:value];
}

#pragma mark - 活动任务

/**
 进入活动
 进入具体活动时上报(无该属性时忽略)

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

 @param L
        含义：等级
        类型：数值
        备注：角色当前游戏等级

 @param ACT_TYPE
        含义：活动类型
        类型：字符串
        备注：当前进入的活动类型

 @param ACT_ID
        含义：活动ID
        类型：字符串
        备注：当前进入的活动id

 @param ACT_FINISH
        含义：已解锁/已完成个数
        类型：字符串
        备注：不同活动具体意义不同，详情问询运营组

 @param ACT_SCORE
        含义：当前活动总分
        类型：数值
        备注：不同活动具体意义不同，详情问询运营组

 @param ACT_RANK
        含义：活动排行
        类型：数值
        备注：活动内排行(该活动没有排行则为0)
 */
+ (void)log_T07_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                L:(NSNumber *)L
         ACT_TYPE:(NSString *)ACT_TYPE
           ACT_ID:(NSString *)ACT_ID
       ACT_FINISH:(NSString *)ACT_FINISH
        ACT_SCORE:(NSNumber *)ACT_SCORE
         ACT_RANK:(NSNumber *)ACT_RANK
{
    NSString *key = @"T07";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (L) [value setValue:L forKey:@"L"];
    if (ACT_TYPE) [value setValue:ACT_TYPE forKey:@"ACT_TYPE"];
    if (ACT_ID) [value setValue:ACT_ID forKey:@"ACT_ID"];
    if (ACT_FINISH) [value setValue:ACT_FINISH forKey:@"ACT_FINISH"];
    if (ACT_SCORE) [value setValue:ACT_SCORE forKey:@"ACT_SCORE"];
    if (ACT_RANK) [value setValue:ACT_RANK forKey:@"ACT_RANK"];
    [self logWithKey:key value:value];
}

/**
 确认退出活动
 退出具体活动时上报(无该属性时忽略)

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

 @param L
        含义：等级
        类型：数值
        备注：角色当前游戏等级

 @param ACT_TYPE
        含义：活动类型
        类型：字符串
        备注：当前进入的活动类型

 @param ACT_ID
        含义：活动ID
        类型：字符串
        备注：当前进入的活动id

 @param ACT_FINISH
        含义：已解锁/已完成个数
        类型：字符串
        备注：不同活动具体意义不同，详情问询运营组

 @param ACT_SCORE
        含义：当前活动总分
        类型：数值
        备注：不同活动具体意义不同，详情问询运营组

 @param ACT_RANK
        含义：活动排行
        类型：数值
        备注：活动内排行(该活动没有排行则为0)

 @param ACT_REVENUE
        含义：本次总收益/领取奖励
        类型：字符串
        备注：不同活动具体意义不同，详情问询运营组

 @param ACT_COST
        含义：本次总消耗/道具消耗
        类型：字符串
        备注：不同活动具体意义不同，详情问询运营组

 @param ACT_SPIN
        含义：本次spin次数
        类型：数值
        备注：对应活动的本次spin次数

 @param S
        含义：结果
        类型：数值
        备注：本次结果,成功1|失败0|异常退出-1,不区分成功失败统一为1

 @param T
        含义：时长
        类型：数值
        备注：本次活动耗时,单位精确到秒(0-86400间整数)
 */
+ (void)log_T07_F_U:(NSString *)U
                  H:(NSString *)H
                  Z:(NSString *)Z
               GGID:(NSString *)GGID
                  L:(NSNumber *)L
           ACT_TYPE:(NSString *)ACT_TYPE
             ACT_ID:(NSString *)ACT_ID
         ACT_FINISH:(NSString *)ACT_FINISH
          ACT_SCORE:(NSNumber *)ACT_SCORE
           ACT_RANK:(NSNumber *)ACT_RANK
        ACT_REVENUE:(NSString *)ACT_REVENUE
           ACT_COST:(NSString *)ACT_COST
           ACT_SPIN:(NSNumber *)ACT_SPIN
                  S:(NSNumber *)S
                  T:(NSNumber *)T
{
    NSString *key = @"T07_F";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (L) [value setValue:L forKey:@"L"];
    if (ACT_TYPE) [value setValue:ACT_TYPE forKey:@"ACT_TYPE"];
    if (ACT_ID) [value setValue:ACT_ID forKey:@"ACT_ID"];
    if (ACT_FINISH) [value setValue:ACT_FINISH forKey:@"ACT_FINISH"];
    if (ACT_SCORE) [value setValue:ACT_SCORE forKey:@"ACT_SCORE"];
    if (ACT_RANK) [value setValue:ACT_RANK forKey:@"ACT_RANK"];
    if (ACT_REVENUE) [value setValue:ACT_REVENUE forKey:@"ACT_REVENUE"];
    if (ACT_COST) [value setValue:ACT_COST forKey:@"ACT_COST"];
    if (ACT_SPIN) [value setValue:ACT_SPIN forKey:@"ACT_SPIN"];
    if (S) [value setValue:S forKey:@"S"];
    if (T) [value setValue:T forKey:@"T"];
    [self logWithKey:key value:value];
}

#pragma mark - 关卡机台

/**
 用户关卡或机台确认开始
 进入关卡或机台确认开始时上报(无该属性时忽略)

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

 @param A1
        含义：虚拟币1数量
        类型：数值
        备注：开始时主要虚拟货币1的数量(如金币,无则为0)

 @param L
        含义：等级
        类型：数值
        备注：角色当前游戏等级
 */
+ (void)log_T08_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
                G:(NSString *)G
               A1:(NSNumber *)A1
                L:(NSNumber *)L
{
    NSString *key = @"T08";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G) [value setValue:G forKey:@"G"];
    if (A1) [value setValue:A1 forKey:@"A1"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

/**
 用户关卡或机台确认结束
 用户结束关卡或机台时上报(无该属性时忽略)

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

 @param T
        含义：时长
        类型：数值
        备注：本次机台的前台时长,单位精确到秒(0-86400间整数)

 @param L
        含义：等级
        类型：数值
        备注：角色当前游戏等级

 @param M_REVENUE
        含义：本次主要虚拟币1的收益
        类型：数值
        备注：本次机台虚拟货币1的收益

 @param M_COST
        含义：本次主要虚拟币1的消耗
        类型：数值
        备注：本次机台虚拟货币1的消耗

 @param S
        含义：结果
        类型：数值
        备注：本次结算结果,成功1|失败0,不区分成功失败统一为1

 @param O
        含义：退出原因
        类型：数值
        备注：本次退出原因，游戏结束自动退出为1，手动退出为2

 @param M_SPIN
        含义：本次spin次数
        类型：数值
        备注：本次机台spin总次数

 @param M_MAX
        含义：本次MAXspin次数
        类型：数值
        备注：本次机台MAX spin的总次数

 @param M_SCORE
        含义：本次游戏总得分
        类型：数值
        备注：本次机台得分(没有得分可传0）

 @param F
        含义：是否首次
        类型：数值
        备注：是否为历史首次玩该机台,首次为1，非首次为0

 @param M_ITEM
        含义：是否使用过道具
        类型：数值
        备注：用过为1，没用过为0，没有设定可使用道具也传0

 @param AFTER_MONEY
        含义：剩余货币数量
        类型：数值
        备注：本次机台结算后剩余的虚拟货币1的数量(无则为0)
 */
+ (void)log_T09_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
                G:(NSString *)G
                T:(NSNumber *)T
                L:(NSNumber *)L
        M_REVENUE:(NSNumber *)M_REVENUE
           M_COST:(NSNumber *)M_COST
                S:(NSNumber *)S
                O:(NSNumber *)O
           M_SPIN:(NSNumber *)M_SPIN
            M_MAX:(NSNumber *)M_MAX
          M_SCORE:(NSNumber *)M_SCORE
                F:(NSNumber *)F
           M_ITEM:(NSNumber *)M_ITEM
     AFTER_MONEY:(NSNumber *)AFTER_MONEY
{
    NSString *key = @"T09";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G) [value setValue:G forKey:@"G"];
    if (T) [value setValue:T forKey:@"T"];
    if (L) [value setValue:L forKey:@"L"];
    if (M_REVENUE) [value setValue:M_REVENUE forKey:@"M_REVENUE"];
    if (M_COST) [value setValue:M_COST forKey:@"M_COST"];
    if (S) [value setValue:S forKey:@"S"];
    if (O) [value setValue:O forKey:@"O"];
    if (M_SPIN) [value setValue:M_SPIN forKey:@"M_SPIN"];
    if (M_MAX) [value setValue:M_MAX forKey:@"M_MAX"];
    if (M_SCORE) [value setValue:M_SCORE forKey:@"M_SCORE"];
    if (F) [value setValue:F forKey:@"F"];
    if (M_ITEM) [value setValue:M_ITEM forKey:@"M_ITEM"];
    if (AFTER_MONEY) [value setValue:AFTER_MONEY forKey:@"AFTER_MONEY"];
    [self logWithKey:key value:value];
}

#pragma mark - 商城

/**
 进入商城
 任意触发进入商城|购物界面的操作(无该属性时忽略)

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

 @param G_IN
        含义：是否在关卡或机台中
        类型：数值
        备注：当前是否在任意关卡或机台中(在为1|不在为0)

 @param G
        含义：关卡id或机台id
        类型：字符串
        备注："在关卡中,为当前对应机台id; 不在关卡中,则为上一局参与的机台id"

 @param S_ENTRANCE
        含义：进入商城来源
        类型：字符串
        备注：对应来源,如主界面点击虚拟币、弹窗促销等等

 @param L
        含义：等级
        类型：数值
        备注：角色对应的游戏等级
 */
+ (void)log_T0C_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
             G_IN:(NSNumber *)G_IN
                G:(NSString *)G
      S_ENTRANCE:(NSString *)S_ENTRANCE
                L:(NSNumber *)L
{
    NSString *key = @"T0C";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G_IN) [value setValue:G_IN forKey:@"G_IN"];
    if (G) [value setValue:G forKey:@"G"];
    if (S_ENTRANCE) [value setValue:S_ENTRANCE forKey:@"S_ENTRANCE"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

/**
 点击付费商品
 点击具体价格|商品,触发苹果付费|谷歌付费|第三方付费等上报(无该属性时忽略)

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
        备注：区分用户参与的模式，如普通模式、vip房间等(与T0C保持一致)

 @param G_IN
        含义：是否在关卡或机台中
        类型：数值
        备注：当前是否在任意关卡或机台中(在为1|不在为0)

 @param G
        含义：关卡id或机台id
        类型：字符串
        备注："在关卡中,为当前对应机台id(与T0C保持一致); 不在关卡中,则为上一局参与的机台id(与T0C保持一致)"

 @param S_ENTRANCE
        含义：进入商城来源
        类型：字符串
        备注：对应来源,如主界面点击虚拟币、弹窗促销等等(与T0C保持一致)

 @param S_ITEM
        含义：档位名称
        类型：字符串
        备注：对应的档位名称,无则为0

 @param L
        含义：等级
        类型：数值
        备注：角色当前游戏等级
 */
+ (void)log_T0D_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
             G_IN:(NSNumber *)G_IN
                G:(NSString *)G
      S_ENTRANCE:(NSString *)S_ENTRANCE
           S_ITEM:(NSString *)S_ITEM
                L:(NSNumber *)L
{
    NSString *key = @"T0D";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G_IN) [value setValue:G_IN forKey:@"G_IN"];
    if (G) [value setValue:G forKey:@"G"];
    if (S_ENTRANCE) [value setValue:S_ENTRANCE forKey:@"S_ENTRANCE"];
    if (S_ITEM) [value setValue:S_ITEM forKey:@"S_ITEM"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

/**
 商城停留<=5秒退出
 任意触发进入商城|购物界面的属于误操作(进入商店中后无滑动、翻页等行为)且停留<=5秒的退出(无该属性时忽略)

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
        备注：区分用户参与的模式，如普通模式、vip房间等(与T0C保持一致)

 @param G_IN
        含义：是否在关卡或机台中
        类型：数值
        备注：当前是否在任意关卡或机台中(在为1|不在为0)

 @param G
        含义：关卡id或机台id
        类型：字符串
        备注："在关卡中,为当前对应机台id(与T0C保持一致); 不在关卡中,则为上一局参与的机台id(与T0C保持一致)"

 @param S_ENTRANCE
        含义：进入商城来源
        类型：字符串
        备注：对应来源,如主界面点击虚拟币、弹窗促销等等(与T0C保持一致)

 @param T
        含义：时长
        类型：数值
        备注：几秒内退出,单位精确到秒(一般为0-5间整数)
 */
+ (void)log_T0C1_U:(NSString *)U
                 H:(NSString *)H
                 Z:(NSString *)Z
              GGID:(NSString *)GGID
                 M:(NSString *)M
              G_IN:(NSNumber *)G_IN
                 G:(NSString *)G
       S_ENTRANCE:(NSString *)S_ENTRANCE
                 T:(NSNumber *)T
{
    NSString *key = @"T0C1";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G_IN) [value setValue:G_IN forKey:@"G_IN"];
    if (G) [value setValue:G forKey:@"G"];
    if (S_ENTRANCE) [value setValue:S_ENTRANCE forKey:@"S_ENTRANCE"];
    if (T) [value setValue:T forKey:@"T"];
    [self logWithKey:key value:value];
}

/**
 商城停留
 用户在商店中停留的时间
 
 @param time
        含义：用户在商店中停留的时间
        类型：数值
        备注：单位秒
 */
+ (void)log_T0C3_Time:(double)time
{
    if (time >= 15) {
        NSString *key = @"T0C3";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (time >= 30) {
        NSString *key = @"T0C4";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (time >= 45) {
        NSString *key = @"T0C5";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
}

/**
 用户首次在商店中停留时间>=15秒
 记录用户在商店中停留时间达到或超过15秒的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PPA
{
    NSString *key = @"T_PPA";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

/**
 用户首次在商店中停留时间>=30秒
 记录用户在商店中停留时间达到或超过30秒的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PPB
{
    NSString *key = @"T_PPB";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

#pragma mark - 付费

/**
 付费成功
 确认用户真实货币付费成功后(收到回调)上报(无该属性时忽略)
 请注意：游戏重装后无需上报历史付费数据(包括自动或者手动恢复内购)

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
        备注：区分用户参与的模式，如普通模式、vip房间等(与T0C保持一致)

 @param G_IN
        含义：是否在关卡或机台中
        类型：数值
        备注：当前是否在任意关卡或机台中(在为1|不在为0)

 @param G
        含义：关卡id或机台id
        类型：字符串
        备注："在关卡中,为当前对应机台id(与T0C保持一致); 不在关卡中,则为上一局参与的机台id(与T0C保持一致)"

 @param S_ENTRANCE
        含义：进入商城来源
        类型：字符串
        备注：对应来源,如主界面点击虚拟币、弹窗促销等等(与T0C保持一致)

 @param S_ITEM
        含义：档位名称
        类型：字符串
        备注：对应的档位名称(内购id)无则为0

 @param S_ID
        含义：订单购买的物品id
        类型：字符串
        备注：唯一物品id(用以区分不同商品,有时同价位的不同商品共用一个内购id）

 @param S_ORDERID
        含义：订单id
        类型：字符串
        备注：对应的订单id，如google的GPA xxx等

 @param S_DOLLAR
        含义：订单价格
        类型：数值
        备注：对应的订单(档位)价格(美元)

 @param S_A1
        含义：虚拟币1数量
        类型：数值
        备注：付费后主要虚拟货币1的数量(如金币,无则为0)

 @param F
        含义：是否首次
        类型：数值
        备注：是否首次充值付费(首次为1|非首次为0)

 @param A1
        含义：虚拟币1数量
        类型：数值
        备注：付费前主要虚拟货币1的数量(如金币,无则为0)

 @param A2
        含义：虚拟币2数量
        类型：数值
        备注：付费前主要虚拟货币2的数量(如钻石,无则为0)

 @param B1
        含义：累计解锁关卡或机台数量
        类型：数值
        备注：付费前已解锁的机台数或主线关卡数(通常为剧情模式,无则为0)

 @param B2
        含义：累计总局数
        类型：数值
        备注：付费前累计已玩过的总局数或总关卡数(所有模式,无则为0)

 @param L
        含义：等级
        类型：数值
        备注：付费前用户等级(无则为0)

 @param V
        含义：VIP等级
        类型：数值
        备注：付费前用户VIP等级(无则为0)

 @param CHANNEL
        含义：支付渠道
        类型：数值
        备注：本次付费的支付渠道（1=官方渠道；2=第三方支付渠道）
 */
+ (void)log_T0E_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
             G_IN:(NSNumber *)G_IN
                G:(NSString *)G
      S_ENTRANCE:(NSString *)S_ENTRANCE
           S_ITEM:(NSString *)S_ITEM
              S_ID:(NSString *)S_ID
       S_ORDERID:(NSString *)S_ORDERID
       S_DOLLAR:(NSNumber *)S_DOLLAR
            S_A1:(NSNumber *)S_A1
                F:(NSNumber *)F
               A1:(NSNumber *)A1
               A2:(NSNumber *)A2
               B1:(NSNumber *)B1
               B2:(NSNumber *)B2
                L:(NSNumber *)L
                V:(NSNumber *)V
         CHANNEL:(NSNumber *)CHANNEL
{
    NSString *key = @"T0E";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G_IN) [value setValue:G_IN forKey:@"G_IN"];
    if (G) [value setValue:G forKey:@"G"];
    if (S_ENTRANCE) [value setValue:S_ENTRANCE forKey:@"S_ENTRANCE"];
    if (S_ITEM) [value setValue:S_ITEM forKey:@"S_ITEM"];
    if (S_ID) [value setValue:S_ID forKey:@"S_ID"];
    if (S_ORDERID) [value setValue:S_ORDERID forKey:@"S_ORDERID"];
    if (S_DOLLAR) [value setValue:S_DOLLAR forKey:@"S_DOLLAR"];
    if (S_A1) [value setValue:S_A1 forKey:@"S_A1"];
    if (F) [value setValue:F forKey:@"F"];
    if (A1) [value setValue:A1 forKey:@"A1"];
    if (A2) [value setValue:A2 forKey:@"A2"];
    if (B1) [value setValue:B1 forKey:@"B1"];
    if (B2) [value setValue:B2 forKey:@"B2"];
    if (L) [value setValue:L forKey:@"L"];
    if (V) [value setValue:V forKey:@"V"];
    if (CHANNEL) [value setValue:CHANNEL forKey:@"CHANNEL"];
    [self logWithKey:key value:value];
}

/**
 本次用户充值
 请注意：游戏重装后无需上报历史付费数据(包括自动或者手动恢复内购)
 
 @param price
        含义：本次充值金额
        类型：数值
        备注：double类型，货币单位美元
 */
+ (void)log_T0E1_Price:(double)price
{
    if (price > 0 && price <= 9.99) {
        NSString *key = @"T0E1";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 9.99 && price <= 19.99) {
        NSString *key = @"T0E2";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 19.99 && price <= 29.99) {
        NSString *key = @"T0E3";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 29.99 && price <= 39.99) {
        NSString *key = @"T0E4";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 39.99 && price <= 49.99) {
        NSString *key = @"T0E5";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 49.99 && price <= 59.99) {
        NSString *key = @"T0E6";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 59.99 && price <= 69.99) {
        NSString *key = @"T0E7";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 69.99 && price <= 79.99) {
        NSString *key = @"T0E8";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 79.99 && price <= 89.99) {
        NSString *key = @"T0E9";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 89.99 && price <= 99.99) {
        NSString *key = @"T0E10";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    else if (price > 99.99) {
        NSString *key = @"T0E11";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
}

/**
 用户首次任意付费
 记录用户首次进行任意确认成功的内购付费的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PA
{
    NSString *key = @"T_PA";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

/**
 用户累计付费达到或超过19.99美元
 记录用户累计内购付费达到或超过19.99美元的事件。仅在首次满足条件时上报。
 */
+ (void)log_T_PB
{
    NSString *key = @"T_PB";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

#pragma mark - 资产变动

/**
 货币变动
 虚拟货币变动产生时上报:(无该属性时忽略),一般博彩类游戏中不记录具体主题中每次主要虚拟币1(金币)的投注(消耗),以免数据上报过于频繁(相应统计汇总以T09为准);但记录金币的获得。

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

 @param EVENT
        含义：对应事件
        类型：字符串
        备注：如解锁模式|每日奖励|付费购买等

 @param TYPE_MONEY
        含义：货币类型
        类型：数值
        备注：主要虚拟币1[如金币]为1，主要虚拟币2[如钻石]为2，依次递增

 @param X
        含义：增加或减少
        类型：数值
        备注：增加为0，减少为1

 @param X_MONEY
        含义：货币增加或减少的数量
        类型：数值
        备注：本次事件涉及增加或减少的货币数量

 @param AFTER_MONEY
        含义：剩余货币数量
        类型：数值
        备注：本次事件结束后剩余的货币数量(无则为0)

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)

 @param IS_PAY
        含义：是否付费获得
        类型：数值
        备注：是为1，否为0
 */
+ (void)log_T0G_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
                G:(NSString *)G
            EVENT:(NSString *)EVENT
       TYPE_MONEY:(NSNumber *)TYPE_MONEY
                X:(NSNumber *)X
         X_MONEY:(NSNumber *)X_MONEY
     AFTER_MONEY:(NSNumber *)AFTER_MONEY
                L:(NSNumber *)L
           IS_PAY:(NSNumber *)IS_PAY
{
    NSString *key = @"T0G";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G) [value setValue:G forKey:@"G"];
    if (EVENT) [value setValue:EVENT forKey:@"EVENT"];
    if (TYPE_MONEY) [value setValue:TYPE_MONEY forKey:@"TYPE_MONEY"];
    if (X) [value setValue:X forKey:@"X"];
    if (X_MONEY) [value setValue:X_MONEY forKey:@"X_MONEY"];
    if (AFTER_MONEY) [value setValue:AFTER_MONEY forKey:@"AFTER_MONEY"];
    if (L) [value setValue:L forKey:@"L"];
    if (IS_PAY) [value setValue:IS_PAY forKey:@"IS_PAY"];
    [self logWithKey:key value:value];
}

/**
 物品变动
 虚拟物品变动产生时上报(无该属性时忽略)

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

 @param EVENT
        含义：对应事件
        类型：字符串
        备注：如游戏中获得|游戏中使用|虚拟币购买|每日奖励|完成每日任务等

 @param ITEMID
        含义：物品id
        类型：字符串
        备注：本次变动的物品id

 @param X
        含义：增加或减少
        类型：数值
        备注：增加为0，减少为1

 @param X_ITEM
        含义：物品增加或减少的数量
        类型：数值
        备注：本次事件涉及增加或减少的物品数量

 @param AFTER_ITEM
        含义：剩余物品数量
        类型：数值
        备注：本次事件结束后剩余的物品数量(无则为0)

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)

 @param IS_PAY
        含义：是否付费获得
        类型：数值
        备注：是为1，否为0
 */
+ (void)log_T0H_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
                G:(NSString *)G
            EVENT:(NSString *)EVENT
           ITEMID:(NSString *)ITEMID
                X:(NSNumber *)X
           X_ITEM:(NSNumber *)X_ITEM
       AFTER_ITEM:(NSNumber *)AFTER_ITEM
                L:(NSNumber *)L
           IS_PAY:(NSNumber *)IS_PAY
{
    NSString *key = @"T0H";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G) [value setValue:G forKey:@"G"];
    if (EVENT) [value setValue:EVENT forKey:@"EVENT"];
    if (ITEMID) [value setValue:ITEMID forKey:@"ITEMID"];
    if (X) [value setValue:X forKey:@"X"];
    if (X_ITEM) [value setValue:X_ITEM forKey:@"X_ITEM"];
    if (AFTER_ITEM) [value setValue:AFTER_ITEM forKey:@"AFTER_ITEM"];
    if (L) [value setValue:L forKey:@"L"];
    if (IS_PAY) [value setValue:IS_PAY forKey:@"IS_PAY"];
    [self logWithKey:key value:value];
}

/**
 卡片变动
 卡片变动产生时上报(无该属性时忽略)

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

 @param TYPE_CARD
        含义：卡组类型
        类型：字符串
        备注：card group类型，如13_1

 @param CARD_LIST
        含义：卡片id组
        类型：字符串
        备注：本次变动的卡片id,如10158_10013_10005_10015_10169，多个时使用"_"分隔

 @param X
        含义：增加或减少
        类型：数值
        备注：增加为0，减少为1

 @param X_CARD
        含义：卡片增加或减少数量
        类型：数值
        备注：本次事件涉及增加或减少的卡片总数量

 @param AFTER_CARD
        含义：剩余卡片数量
        类型：数值
        备注：本次事件结束后剩余的卡片总数量

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)
 */
+ (void)log_T0_CARD_U:(NSString *)U
                    H:(NSString *)H
                    Z:(NSString *)Z
                 GGID:(NSString *)GGID
            TYPE_CARD:(NSString *)TYPE_CARD
            CARD_LIST:(NSString *)CARD_LIST
                    X:(NSNumber *)X
               X_CARD:(NSNumber *)X_CARD
           AFTER_CARD:(NSNumber *)AFTER_CARD
                    L:(NSNumber *)L
{
    NSString *key = @"T0_CARD";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (TYPE_CARD) [value setValue:TYPE_CARD forKey:@"TYPE_CARD"];
    if (CARD_LIST) [value setValue:CARD_LIST forKey:@"CARD_LIST"];
    if (X) [value setValue:X forKey:@"X"];
    if (X_CARD) [value setValue:X_CARD forKey:@"X_CARD"];
    if (AFTER_CARD) [value setValue:AFTER_CARD forKey:@"AFTER_CARD"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

#pragma mark - 用户破产

/**
 用户破产
 当提示用户(主要虚拟币1)不足时上报(无该属性时忽略)

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

 @param A1
        含义：虚拟币1数量
        类型：数值
        备注：用户本次提示破产时持有的虚拟货币1的数量

 @param L
        含义：等级
        类型：数值
        备注：角色当前游戏等级
 */
+ (void)log_T0B_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
                M:(NSString *)M
                G:(NSString *)G
               A1:(NSNumber *)A1
                L:(NSNumber *)L
{
    NSString *key = @"T0B";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G) [value setValue:G forKey:@"G"];
    if (A1) [value setValue:A1 forKey:@"A1"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

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
                L:(NSNumber *)L
{
    NSString *key = @"T0Q";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (M) [value setValue:M forKey:@"M"];
    if (G) [value setValue:G forKey:@"G"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

/**
 用户等级升级
 用户等级达到相应级时上报
 
 @param level
        含义：等级
        类型：数值
        备注：升级后等级
 */
+ (void)log_T0Q_LevelUp:(int)level
{
    if (level == 10) {
        NSString *key = @"T0Q1";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 20) {
        NSString *key = @"T0Q2";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 30) {
        NSString *key = @"T0Q3";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 40) {
        NSString *key = @"T0Q4";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 50) {
        NSString *key = @"T0Q5";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 60) {
        NSString *key = @"T0Q6";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 70) {
        NSString *key = @"T0Q7";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 80) {
        NSString *key = @"T0Q8";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 90) {
        NSString *key = @"T0Q9";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    if (level == 100) {
        NSString *key = @"T0Q10";
        NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
        [self logWithKey:key value:value];
    }
    
}

#pragma mark - 用户成长等级

/**
 达到新手保护结束等级
 记录玩家达到新手保护结束等级的事件。具体的等级依据每个游戏的进度设置，需与运营和CP沟通确定。
 */
+ (void)log_T0Q_E
{
    NSString *key = @"T0Q_E";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

/**
 达到最早付费等级
 记录玩家达到最早付费等级的事件。具体的等级依据每个游戏的付费特性设置，需与运营和CP沟通确定。
 */
+ (void)log_T0Q_P
{
    NSString *key = @"T0Q_P";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

#pragma mark - 任务

/**
 任务进度变动
 任务进度变动产生时上报(无该属性时忽略)

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

 @param MISSION_TYPE
        含义：任务类型
        类型：字符串
        备注：如每日任务，每周任务，主线任务等，上报"每日任务"(不含引号)

 @param MISSION_ID
        含义：任务ID
        类型：字符串
        备注：如战斗10次的任务Id是101，上报"101"(不含引号)

 @param MISSION_RATE
        含义：任务进度
        类型：字符串
        备注：如"每日任务_战斗10次"达到了4次,上报"0.4"(不含引号,0-1间小数,最多保留4位小数)

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)
 */
+ (void)log_T0_MISSION_U:(NSString *)U
                       H:(NSString *)H
                       Z:(NSString *)Z
                    GGID:(NSString *)GGID
            MISSION_TYPE:(NSString *)MISSION_TYPE
               MISSION_ID:(NSString *)MISSION_ID
            MISSION_RATE:(NSString *)MISSION_RATE
                       L:(NSNumber *)L
{
    NSString *key = @"T0_MISSION";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (MISSION_TYPE) [value setValue:MISSION_TYPE forKey:@"MISSION_TYPE"];
    if (MISSION_ID) [value setValue:MISSION_ID forKey:@"MISSION_ID"];
    if (MISSION_RATE) [value setValue:MISSION_RATE forKey:@"MISSION_RATE"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

/**
 活动进度变动
 活动进度变动产生时上报(无该属性时忽略)

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

 @param ACT_TYPE
        含义：活动类型
        类型：字符串
        备注：爬塔、拼图、卡牌等等，如上报"拼图"(不含引号)

 @param ACT_ID
        含义：活动ID
        类型：字符串
        备注：如拼图_恒河女神的活动Id是201，上报"201"(不含引号)

 @param ACT_RATE
        含义：活动进度
        类型：字符串
        备注：如"拼图_恒河女神"的完成度到90%,上报"0.9"(不含引号,0-1间小数,最多保留4位小数)

 @param L
        含义：等级
        类型：数值
        备注：当前等级(无则为0)
 */
+ (void)log_T0_ACTIVITY_U:(NSString *)U
                         H:(NSString *)H
                         Z:(NSString *)Z
                      GGID:(NSString *)GGID
                  ACT_TYPE:(NSString *)ACT_TYPE
                    ACT_ID:(NSString *)ACT_ID
                  ACT_RATE:(NSString *)ACT_RATE
                         L:(NSNumber *)L
{
    NSString *key = @"T0_ACTIVITY";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (ACT_TYPE) [value setValue:ACT_TYPE forKey:@"ACT_TYPE"];
    if (ACT_ID) [value setValue:ACT_ID forKey:@"ACT_ID"];
    if (ACT_RATE) [value setValue:ACT_RATE forKey:@"ACT_RATE"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

#pragma mark - 邀请好友

/**
 在邀请好友界面点击邀请好友
 在邀请好友界面点击邀请好友(无该属性时忽略)
 */
+ (void)log_T0L
{
    NSString *key = @"T0L";
    NSMutableDictionary *value = nil;
    [self logWithKey:key value:value];
}

/**
 在邀请好友界面成功发送邀请
 在邀请好友界面成功发送邀请(无该属性时忽略)
 */
+ (void)log_T0M
{
    NSString *key = @"T0M";
    NSMutableDictionary *value = nil;
    [self logWithKey:key value:value];
}

/**
 成功邀请好友进入游戏
 成功邀请好友进入游戏(无该属性时忽略)
 */
+ (void)log_T0N
{
    NSString *key = @"T0N";
    NSMutableDictionary *value = nil;
    [self logWithKey:key value:value];
}

/**
 好友变动
 用户好友变动时上报(无该属性时忽略)

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

 @param X
        含义：增加或减少
        类型：数值
        备注：增加(添加)为0，减少(删除)为1

 @param U2
        含义：被执行操作的角色UID
        类型：字符串
        备注：被添加或被删除的用户角色UID

 @param AFTER_U2
        含义：剩余好友数量
        类型：数值
        备注：本次事件结束后剩余的好友数量

 @param L
        含义：等级
        类型：数值
        备注：好友变动时等级
 */
+ (void)log_T0_FRIEND_U:(NSString *)U
                      H:(NSString *)H
                      Z:(NSString *)Z
                   GGID:(NSString *)GGID
                      X:(NSNumber *)X
                     U2:(NSString *)U2
               AFTER_U2:(NSNumber *)AFTER_U2
                      L:(NSNumber *)L
{
    NSString *key = @"T0_FRIEND";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (X) [value setValue:X forKey:@"X"];
    if (U2) [value setValue:U2 forKey:@"U2"];
    if (AFTER_U2) [value setValue:AFTER_U2 forKey:@"AFTER_U2"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

#pragma mark - 公会

/**
 公会变动
 用户公会变动时上报(无该属性时忽略)

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

 @param X
        含义：增加或减少
        类型：数值
        备注：增加(添加)为0，减少(离开)为1

 @param CONSORTIA_ID
        含义：被执行操作的公会id
        类型：字符串
        备注：被添加进入或离开的公会id

 @param CONSORTIA_L
        含义：公会等级
        类型：数值
        备注：加入的公会等级(离开时则置0)

 @param L
        含义：等级
        类型：数值
        备注：加入公会时角色等级
 */
+ (void)log_T0_CONSORTIA_U:(NSString *)U
                         H:(NSString *)H
                         Z:(NSString *)Z
                      GGID:(NSString *)GGID
                         X:(NSNumber *)X
              CONSORTIA_ID:(NSString *)CONSORTIA_ID
               CONSORTIA_L:(NSNumber *)CONSORTIA_L
                         L:(NSNumber *)L
{
    NSString *key = @"T0_CONSORTIA";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (X) [value setValue:X forKey:@"X"];
    if (CONSORTIA_ID) [value setValue:CONSORTIA_ID forKey:@"CONSORTIA_ID"];
    if (CONSORTIA_L) [value setValue:CONSORTIA_L forKey:@"CONSORTIA_L"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

#pragma mark - 用户信息

/**
 EMAIL变动
 用户EMAIL信息调整时或确认成功时上报(如任务引导注册邮箱、VIP修改邮箱、绑定FB账号时对应的邮箱等等;无该属性时忽略)

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

 @param EMAIL
        含义：邮箱
        类型：字符串
        备注：角色对应的邮箱
 */
+ (void)log_T0_EMAIL_U:(NSString *)U
                     H:(NSString *)H
                     Z:(NSString *)Z
                  GGID:(NSString *)GGID
                 EMAIL:(NSString *)EMAIL
{
    NSString *key = @"T0_EMAIL";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (EMAIL) [value setValue:EMAIL forKey:@"EMAIL"];
    [self logWithKey:key value:value];
}

#pragma mark - 推送通知

/**
 FCM注册 (iOS为APNs)
 安装客户端时进行FCM的注册。item id为注册上报信息 (iOS为APNs) (无该属性时忽略)

 @param S
        含义：结果
        类型：数值
        备注：注册结果，系统推送注册是否成功，成功为0，失败为1，异常为-1
 */
+ (void)log_T0I_S:(NSNumber *)S
{
    NSString *key = @"T0I";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (S) [value setValue:S forKey:@"S"];
    [self logWithKey:key value:value];
}

/**
 FCM通知收到 (iOS为APNs)
 客户端收到FCM通知，itemid为数值（通知id） (iOS为APNs) (无该属性时忽略)
 */
+ (void)log_T0J
{
    NSString *key = @"T0J";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

/**
 FCM通知点击 (iOS为APNs)
 客户端点击FCM通知，itemid为数值（通知id） (iOS为APNs) (无该属性时忽略)
 */
+ (void)log_T0K
{
    NSString *key = @"T0K";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

#pragma mark - 广告

/**
 激励视频入口展现
 激励视频广告入口展现时上报 (无该属性时忽略)

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

 @param AD_ENTRANCE
        含义：入口
        类型：字符串
        备注：对应入口(即广告位)

 @param AD_CACHE
        含义：广告缓存状态
        类型：字符串
        备注：当前广告缓存状态(isReady参数对应的值:0表示没有视频|1表示有视频)

 @param AD_BUTTON
        含义：按钮状态
        类型：字符串
        备注：当前广告按钮是否可点击（如可点击为1，不可点击为0）

 @param AD_REASON
        含义：不满足时原因
        类型：字符串
        备注：不满足展示条件的原因(满足时为1)
 */
+ (void)log_T0R_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
      AD_ENTRANCE:(NSString *)AD_ENTRANCE
         AD_CACHE:(NSString *)AD_CACHE
        AD_BUTTON:(NSString *)AD_BUTTON
        AD_REASON:(NSString *)AD_REASON
{
    NSString *key = @"T0R";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (AD_ENTRANCE) [value setValue:AD_ENTRANCE forKey:@"AD_ENTRANCE"];
    if (AD_CACHE) [value setValue:AD_CACHE forKey:@"AD_CACHE"];
    if (AD_BUTTON) [value setValue:AD_BUTTON forKey:@"AD_BUTTON"];
    if (AD_REASON) [value setValue:AD_REASON forKey:@"AD_REASON"];
    [self logWithKey:key value:value];
}

/**
 激励视频入口点击
 激励视频广告入口被点击时上报 (无该属性时忽略)

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

 @param AD_ENTRANCE
        含义：入口
        类型：字符串
        备注：对应入口(即广告位)

 @param AD_CACHE
        含义：广告缓存状态
        类型：数值
        备注：当前广告缓存状态(isReady参数对应的值:0表示没有视频|1表示有视频)

 @param AD_BUTTON
        含义：按钮状态
        类型：数值
        备注：当前广告按钮是否可点击（如可点击为1，不可点击为0）
 */
+ (void)log_T0O_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
      AD_ENTRANCE:(NSString *)AD_ENTRANCE
         AD_CACHE:(NSNumber *)AD_CACHE
        AD_BUTTON:(NSNumber *)AD_BUTTON
{
    NSString *key = @"T0O";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (AD_ENTRANCE) [value setValue:AD_ENTRANCE forKey:@"AD_ENTRANCE"];
    if (AD_CACHE) [value setValue:AD_CACHE forKey:@"AD_CACHE"];
    if (AD_BUTTON) [value setValue:AD_BUTTON forKey:@"AD_BUTTON"];
    [self logWithKey:key value:value];
}

/**
 激励广告情况
 激励广告点击播放后，能判断是否成功领取奖励时上报 (无该属性时忽略)

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

 @param AD_ENTRANCE
        含义：入口
        类型：字符串
        备注：对应入口(即广告位)

 @param RV_FINISH
        含义：是否播放并成功领取奖励
        类型：数值
        备注：是否播放并成功领取奖励（成功1，不成功0）
 */
+ (void)log_T0O1_U:(NSString *)U
                 H:(NSString *)H
                 Z:(NSString *)Z
              GGID:(NSString *)GGID
       AD_ENTRANCE:(NSString *)AD_ENTRANCE
         RV_FINISH:(NSNumber *)RV_FINISH
{
    NSString *key = @"T0O1";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (AD_ENTRANCE) [value setValue:AD_ENTRANCE forKey:@"AD_ENTRANCE"];
    if (RV_FINISH) [value setValue:RV_FINISH forKey:@"RV_FINISH"];
    [self logWithKey:key value:value];
}

/**
 插屏入口展现
 插屏入口将要展示时上报 (若等同于插屏展示则可不必上报该点) (无该属性时忽略)

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

 @param AD_ENTRANCE
        含义：入口
        类型：字符串
        备注：对应入口(即广告位)

 @param AD_CACHE
        含义：广告缓存状态
        类型：数值
        备注：当前广告缓存状态(isReady参数对应的值:0表示没有视频|1表示有视频)

 @param AD_REASON
        含义：不满足时原因
        类型：字符串
        备注：不满足展示条件的原因(满足时为1)
 */
+ (void)log_T0S_U:(NSString *)U
                H:(NSString *)H
                Z:(NSString *)Z
             GGID:(NSString *)GGID
      AD_ENTRANCE:(NSString *)AD_ENTRANCE
         AD_CACHE:(NSNumber *)AD_CACHE
        AD_REASON:(NSString *)AD_REASON
{
    NSString *key = @"T0S";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (AD_ENTRANCE) [value setValue:AD_ENTRANCE forKey:@"AD_ENTRANCE"];
    if (AD_CACHE) [value setValue:AD_CACHE forKey:@"AD_CACHE"];
    if (AD_REASON) [value setValue:AD_REASON forKey:@"AD_REASON"];
    [self logWithKey:key value:value];
}

/**
 插屏广告情况
 广告开始播放后，能判断是否结束播放时上报 (无该属性时忽略)

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

 @param AD_ENTRANCE
        含义：入口
        类型：字符串
        备注：对应入口(即广告位)

 @param IS_TIME
        含义：广告关闭前播放时长
        类型：数值
        备注：广告关闭前播放时长（根据具体播放时长上报对应数值，如播放5s=5，播放10s=10，不成功0）
 */
+ (void)log_T0S1_U:(NSString *)U
                 H:(NSString *)H
                 Z:(NSString *)Z
              GGID:(NSString *)GGID
       AD_ENTRANCE:(NSString *)AD_ENTRANCE
           IS_TIME:(NSNumber *)IS_TIME
{
    NSString *key = @"T0S1";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (H) [value setValue:H forKey:@"H"];
    if (Z) [value setValue:Z forKey:@"Z"];
    if (GGID) [value setValue:GGID forKey:@"GGID"];
    if (AD_ENTRANCE) [value setValue:AD_ENTRANCE forKey:@"AD_ENTRANCE"];
    if (IS_TIME) [value setValue:IS_TIME forKey:@"IS_TIME"];
    [self logWithKey:key value:value];
}

/**
 用户累计广告展示次数达到1次
 记录用户累计广告展示次数达到1次的事件（包括插屏广告与激励视频广告）。仅在首次满足条件时上报。
 */
+ (void)log_T_AdsA
{
    NSString *key = @"T_AdsA";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

/**
 用户累计广告展示次数达到8次
 记录用户累计广告展示次数达到8次的事件（包括插屏广告与激励视频广告）。仅在首次满足条件时上报。
 */
+ (void)log_T_AdsB
{
    NSString *key = @"T_AdsB";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    [self logWithKey:key value:value];
}

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
                       SOURCE:(NSString *)SOURCE
{
    NSString *key = @"T0_AD_REV";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (COUNTRY) [value setValue:COUNTRY forKey:@"COUNTRY"];
    if (AD_UNIT) [value setValue:AD_UNIT forKey:@"AD_UNIT"];
    if (AD_TYPE) [value setValue:AD_TYPE forKey:@"AD_TYPE"];
    if (PLACEMENT) [value setValue:PLACEMENT forKey:@"PLACEMENT"];
    if (REVENUE) [value setValue:REVENUE forKey:@"REVENUE"];
    if (SOURCE) [value setValue:SOURCE forKey:@"SOURCE"];
    [self logWithKey:key value:value];
}

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
                  L:(NSNumber *)L
{
    NSString *key = @"T0Q_L";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

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
                  L:(NSNumber *)L
{
    NSString *key = @"T0Q_M";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}


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
                  L:(NSNumber *)L
{
    NSString *key = @"T0Q_H";
    NSMutableDictionary *value = [[NSMutableDictionary alloc] init];
    if (U) [value setValue:U forKey:@"U"];
    if (L) [value setValue:L forKey:@"L"];
    [self logWithKey:key value:value];
}

@end
