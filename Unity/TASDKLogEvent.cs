using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UPTrace;

public class TASDKLogEvent
{
    /// <summary>
    /// 打开app点位
    /// </summary>
    public void AlyT01()
    {
        UPTraceApi.traceKey("T01");
    }

    /// <summary>
    /// 加载资源开始点位
    /// </summary>
    /// <param name="isFirst">首次加载为1 非首次加载为0</param>
    public void AlyT011(String isFirst)
    {
        UPTraceApi.traceString("T011", "F=" + isFirst);
    }

    /// <summary>
    /// 加载20%点位
    /// </summary>
    public void AlyT011A()
    {
        UPTraceApi.traceKey("T011A");
    }

    /// <summary>
    /// 加载40%点位
    /// </summary>
    public void AlyT011B()
    {
        UPTraceApi.traceKey("T011B");
    }

    /// <summary>
    /// 加载60%点位
    /// </summary>
    public void AlyT011C()
    {
        UPTraceApi.traceKey("T011C");
    }

    /// <summary>
    /// 加载80%点位
    /// </summary>
    public void AlyT011D()
    {
        UPTraceApi.traceKey("T011D");
    }

    /// <summary>
    /// 加载100%点位
    /// </summary>
    public void AlyT011E()
    {
        UPTraceApi.traceKey("T011E");
    }

    /// <summary>
    /// 点击upadte点位
    /// </summary>
    public void AlyT011F()
    {
        UPTraceApi.traceKey("T011F");
    }


    /// <summary>
    /// 加载资源结束点位
    /// </summary>
    /// <param name="time">加载资源好事消耗时长，单位秒</param>
    /// <param name="isFirst">首次加载为1 非首次加载为0</param>
    /// <param name="patchNum">补丁包编号（无更新为0）</param>
    /// <param name="uid">游戏角色id</param>
    public static void AlyT012(string time, string isFirst, string patchNum, string uid)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("T", time);
        dic.Add("F", isFirst);
        dic.Add("P", patchNum);
        dic.Add("U", uid);
        UPTraceApi.traceDictionary("T012", dic);

    }

    /// <summary>
    /// 加载资源错误点位
    /// </summary>
    /// <param name="isFirst">首次加载为1 非首次加载为0</param>
    /// <param name="errorNum">异常信息编号（无异常为0）</param>
    public static void AlyT013(string isFirst, string errorNum)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("F", isFirst);
        dic.Add("E", errorNum);
        UPTraceApi.traceDictionary("T013", dic);

    }


    /// <summary>
    /// 点击登录点位
    /// </summary>
    /// <param name="loginType">登录类型</param>
    public void AlyT03(string loginType)
    {
        UPTraceApi.traceString("T03", "I=" + loginType);
    }

    /// <summary>
    /// 成功登录点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid">登录sdk生成的id（未接入传null）</param>  
    /// <param name="loginType">登录类型</param>  
    /// <param name="roleLevel">用户等级</param>  
    /// <param name="vipLevel">用户vip等级</param>  
    /// <param name="cyberMoneyNum1">虚拟货币1的数量</param>  
    /// <param name="cyberMoneyNum2">虚拟货币2的数量</param> 
    /// <param name="unlockNum">累计解锁关卡数量</param>  
    /// <param name="overallNum">累计总关卡数量</param>  
    /// <param name="isFirst">首次加载为1 非首次加载为0</param>  
    /// <param name="grouping">用户分组组别</param>  
    public void AlyT0F(string uid, string server, string area,
            string ggid, string loginType, string roleLevel,
            string vipLevel, string cyberMoneyNum1, string cyberMoneyNum2,
            string unlockNum, string overallNum,
            string isFirst, string grouping)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("I", loginType);
        dic.Add("L", roleLevel);
        dic.Add("V", vipLevel);
        dic.Add("A1", cyberMoneyNum1);
        dic.Add("A2", cyberMoneyNum2);
        dic.Add("B1", unlockNum);
        dic.Add("B2", overallNum);
        dic.Add("F", isFirst);
        dic.Add("AB", grouping);
        UPTraceApi.traceDictionary("T0F", dic);
    }


    /// <summary>
    /// 新主题下载点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="lockId">关卡/机台id</param>  
    /// <param name="result">下载结果</param>  
    public void AlyT04(string uid, string lockId, string result)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        dic.Add("G", lockId);
        dic.Add("S", result);
        UPTraceApi.traceDictionary("T04", dic);
    }

    /// <summary>
    /// 点击图标点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="ui1">一级ui的id</param>  
    /// <param name="ui2">二级ui的id</param>  
    public void AlyT06(string uid, string server, string area,
                       string ggid, string ui1, string ui2)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("UI1", ui1);
        dic.Add("UI2", ui2);
        UPTraceApi.traceDictionary("T06", dic);
    }

    /// <summary>
    /// 进入活动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="level">用户等级</param>  
    /// <param name="activeType">活动类型</param>  
    /// <param name="activeId">活动ID</param> 
    /// <param name="finishNum">已完成数量</param> 
    /// <param name="score">总分数</param> 
    /// <param name="ranking">排行</param>  
    public void AlyT07(string uid, string server, string area,
                       string ggid, string level, string activeType,
                       string activeId, string finishNum, string score, string ranking)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("L", level);
        dic.Add("ACT_TYPE", activeType);
        dic.Add("ACT_ID", activeId);
        dic.Add("ACT_FINISH", finishNum);
        dic.Add("ACT_SCORE", score);
        dic.Add("ACT_RANK", ranking);
        UPTraceApi.traceDictionary("T07", dic);
    }

    /// <summary>
    /// 确认推出活动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="level">用户等级</param>  
    /// <param name="activeType">活动类型</param>  
    /// <param name="activeId">活动ID</param> 
    /// <param name="finishNum">已完成数量</param> 
    /// <param name="score">总分数</param> 
    /// <param name="ranking">排行</param>  
    /// <param name="revenue">奖励</param> 
    /// <param name="cost">总消耗</param> 
    /// <param name="spin">spin次数</param> 
    /// <param name="result">本次结果</param> 
    /// <param name="time">本次活动耗时</param> 
    public void AlyT07_F(string uid, string server, string area,
                       string ggid, string level, string activeType,
                       string activeId, string finishNum, string score, string ranking,
                         string revenue, string cost, string spin,
                         string result, string time)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("L", level);
        dic.Add("ACT_TYPE", activeType);
        dic.Add("ACT_ID", activeId);
        dic.Add("ACT_FINISH", finishNum);
        dic.Add("ACT_SCORE", score);
        dic.Add("ACT_RANK", ranking);
        dic.Add("ACT_REVENUE", revenue);
        dic.Add("ACT_COST", cost);
        dic.Add("ACT_SPIN", spin);
        dic.Add("S", result);
        dic.Add("T", time);
        UPTraceApi.traceDictionary("T07_F", dic);
    }


    /// <summary>
    /// 用户关卡或机台确认开始
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="virtualCoinNum">虚拟币数量</param> 
    /// <param name="level">角色等级</param> 
    public void AlyT08(string uid, string server, string area,
                       string ggid, string mode, string lockId,
                       string virtualCoinNum, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G", lockId);
        dic.Add("A1", virtualCoinNum);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T08", dic);
    }


    /// <summary>
    /// 用户关卡或机台确认结束点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="time">本次机台的前台时长</param>  
    /// <param name="level">角色等级</param>  
    /// <param name="revenue">虚拟币收益</param>  
    /// <param name="cost">虚拟币消耗</param> 
    /// <param name="result">本次计算结果</param>  
    /// <param name="reason">推出原因</param>  
    /// <param name="spin">本次spin次数</param>  
    /// <param name="spinMax">本次机台spin总次数</param>  
    /// <param name="score">总得分</param>  
    /// <param name="isFirst">首次加载为1 非首次加载为0</param>
    /// <param name="isItem ">是否使用过道具 用过为1 没有为0</param> 
    /// <param name="remainingMoney 剩余货币数量
    public void AlyT09(string uid, string server, string area,
                         string ggid, string mode, string lockId,
                         string time, string level, string revenue,
                         string cost, string result, string reason, string spin,
                         string spinMax, string score, string isFirst,
                         string isItem, string remainingMoney)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G", lockId);
        dic.Add("T", time);
        dic.Add("L", level);
        dic.Add("M_REVENUE", revenue);
        dic.Add("M_COST", cost);
        dic.Add("S", result);
        dic.Add("O", reason);
        dic.Add("M_SPIN", spin);
        dic.Add("M_MAX", spinMax);
        dic.Add("M_SCORE", score);
        dic.Add("F", isFirst);
        dic.Add("M_ITEM", isItem);
        dic.Add("AFTER_MONEY", remainingMoney);
        UPTraceApi.traceDictionary("T09", dic);
    }

    /// <summary>
    /// 用户破产点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="virtualCoinNum">虚拟币数量</param> 
    /// <param name="level">角色等级</param> 
    public void AlyT0B(string uid, string server, string area,
                       string ggid, string mode, string lockId,
                       string virtualCoinNum, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G", lockId);
        dic.Add("A1", virtualCoinNum);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0B", dic);
    }


    /// <summary>
    /// 进入商城点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="isInside">是否在关卡/机台中</param>  
    /// <param name="lockId ">关卡id/机台id</param> 
    /// <param name="entrance">进入商城来源</param>  
    /// <param name="level">角色等级</param>  
    public void AlyT0C(string uid, string server, string area,
                       string ggid, string mode,
                       string isInside, string lockId,
                       string entrance, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G_IN", isInside);
        dic.Add("G", lockId);
        dic.Add("S_ENTRANCE", entrance);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0C", dic);
    }


    /// <summary>
    /// 点击付费商品点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="isInside">是否在关卡/机台中</param>  
    /// <param name="lockId ">关卡id/机台id</param> 
    /// <param name="entrance">进入商城来源</param>  
    /// <param name="itemName">档位名称</param> 
    /// <param name="level">角色等级</param>  
    public void AlyT0D(string uid, string server, string area,
                       string ggid, string mode,
                       string isInside, string lockId, string entrance,
                       string itemName, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G_IN", isInside);
        dic.Add("G", lockId);
        dic.Add("S_ENTRANCE", entrance);
        dic.Add("S_ITEM", itemName);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0D", dic);
    }

    /// <summary>
    /// 付费成功点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="isInside">是否在关卡/机台中</param>  
    /// <param name="lockId"> 关卡id/机台id</param> 
    /// <param name="entrance">进入商城来源</param>  
    /// <param name="itemName">档位名称</param> 
    /// <param name="id">商品id</param>  
    /// <param name="orderId">订单id</param>  
    /// <param name="price">订单价格</param>  
    /// <param name="virtualCoinNum">虚拟币数量</param>  
    /// <param name="isFirst">首次加载为1 非首次加载为0</param>
    /// <param name="cyberMoneyNum1">虚拟货币1的数量</param>  
    /// <param name="cyberMoneyNum2">虚拟货币2的数量</param>  
    /// <param name="unlockNum">累计解锁关卡数量</param>  
    /// <param name="overallNum">累计总关卡数量</param>  
    /// <param name="roleLevel">角色等级</param>  
    /// <param name="vipLevel">用户vip等级</param>  
    /// <param name="channel">支付渠道</param>  
    public void AlyT0E(string uid, string server, string area,
                       string ggid, string mode,
                       string isInside, string lockId, string entrance,
                       string itemName, string id, string orderId, string price, string virtualCoinNum,
                       string isFirst, string cyberMoneyNum1, string cyberMoneyNum2,
                       string unlockNum, string overallNum, string roleLevel, string vipLevel,
                       string channel
                       )
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G_IN", isInside);
        dic.Add("G", lockId);
        dic.Add("S_ENTRANCE", entrance);
        dic.Add("S_ITEM", itemName);
        dic.Add("S_ID", id);
        dic.Add("S_ORDERID", orderId);
        dic.Add("S_DOLLAR", price);
        dic.Add("S_A1", virtualCoinNum);
        dic.Add("F", isFirst);
        dic.Add("A1", cyberMoneyNum1);
        dic.Add("A2", cyberMoneyNum2);
        dic.Add("B1", unlockNum);
        dic.Add("B2", overallNum);
        dic.Add("L", roleLevel);
        dic.Add("V", vipLevel);
        dic.Add("CHANNEL", channel);
        UPTraceApi.traceDictionary("T0E", dic);
    }


    /// <summary>
    /// 在商城停留<=5秒退出 点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="isInside">是否在关卡/机台中</param>  
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="entrance">进入商城来源</param>  
    /// <param name="level">角色等级</param>
    public void AlyT0C1(string uid, string server, string area,
                       string ggid, string mode,
                       string isInside, string lockId,
                       string entrance, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G_IN", isInside);
        dic.Add("G", lockId);
        dic.Add("S_ENTRANCE", entrance);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0C1", dic);
    }

    /// <summary>
    /// 新手引导
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="guide">新手引导阶段</param> 
    public void AlyT0A(string uid, string server, string area,
                       string ggid, string guide)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("I_GUIDE", guide);
        UPTraceApi.traceDictionary("T0A", dic);
    }

    /// <summary>
    /// 新手引导开始点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>
    public void AlyT0A_S(string uid, string server, string area, string ggid)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        UPTraceApi.traceDictionary("T0A_S", dic);
    }


    /// <summary>
    /// 新手引导开始点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>
    public void AlyT0A_F(string uid, string server, string area, string ggid)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        UPTraceApi.traceDictionary("T0A_F", dic);
    }

    /// <summary>
    /// 货币变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="events">对应事件</param> 
    /// <param name="moneyType">货币类型</param> 
    /// <param name="change">货币改变 增加为0 减少为1</param> 
    /// <param name="changeNum">货币改变数量</param> 
    /// <param name="remainingMoney">剩余货币数量</param> 
    /// <param name="level">用户角色等级</param> 
    /// <param name="isPay">是否付费获得 是为1 否为0</param> 
    public void AlyT0G(string uid, string server, string area,
                        string ggid, string mode, string lockId,
                        string events, string moneyType, string change,
                        string changeNum, string remainingMoney,
                        string level, string isPay)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G", lockId);
        dic.Add("EVENT", events);
        dic.Add("TYPE_MONEY", moneyType);
        dic.Add("X", change);
        dic.Add("X_MONEY", changeNum);
        dic.Add("AFTER_MONEY", remainingMoney);
        dic.Add("L", level);
        dic.Add("IS_PAY", isPay);
        UPTraceApi.traceDictionary("T0G", dic);
    }


    /// <summary>
    /// 物品变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="events">对应事件</param> 
    /// <param name="itemId">物品id</param> 
    /// <param name="change">物品改变 增加为0 减少为1</param> 
    /// <param name="changeNum">物品改变数量</param> 
    /// <param name="remainingITEM">剩余物品数量</param> 
    /// <param name="level">用户角色等级</param> 
    /// <param name="isPay">是否付费获得 是为1 否为0</param> 
    public void AlyT0H(string uid, string server, string area,
                       string ggid, string mode, string lockId,
                       string events, string itemId, string change,
                       string changeNum, string remainingITEM,
                       string level, string isPay)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G", lockId);
        dic.Add("EVENT", events);
        dic.Add("ITEMID", itemId);
        dic.Add("X", change);
        dic.Add("X_ITEM", changeNum);
        dic.Add("AFTER_ITEM", remainingITEM);
        dic.Add("L", level);
        dic.Add("IS_PAY", isPay);
        UPTraceApi.traceDictionary("T0H", dic);
    }

    /// <summary>
    /// 用户等级变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="mode">游戏模式</param> 
    /// <param name="lockId">关卡id/机台id</param> 
    /// <param name="level">角色等级</param> 
    public void AlyT0Q(string uid, string server, string area,
                    string ggid, string mode, string lockId, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("M", mode);
        dic.Add("G", lockId);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0Q", dic);
    }


    /// <summary>
    /// 卡片变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="cardType">角色等级</param> 
    /// <param name="cardList">角色等级</param> 卡片id组
    /// <param name="change">角色等级</param> 卡片改变 增加为0 减少为1
    /// <param name="changeNum">角色等级</param> 卡片改变数量
    /// <param name="remainingCard">角色等级</param> 剩余卡片数量
    /// <param name="level">角色等级</param> 
    public void AlyT0_CARD(string uid, string server, string area,
                   string ggid, string cardType, string cardList,
                   string change, string changeNum, string remainingCard,
                   string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("TYPE_CARD", cardType);
        dic.Add("CARD_LIST", cardList);
        dic.Add("X", change);
        dic.Add("X_CARD", changeNum);
        dic.Add("AFTER_CARD", remainingCard);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0_CARD", dic);
    }


    /// <summary>
    /// 任务进度变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="type">任务类型</param> 
    /// <param name="id">任务id</param> 
    /// <param name="rate">任务进度</param> 
    /// <param name="level">用户角色等级</param> 
    public void AlyT0_MISSION(string uid, string server, string area,
                       string ggid, string type, string id,
                       string rate, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("MISSION_TYPE", type);
        dic.Add("MISSION_ID", id);
        dic.Add("MISSION_RATE", rate);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0_MISSION", dic);
    }


    /// <summary>
    /// 活动进度变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="type">活动类型</param> 
    /// <param name="id">活动id</param> 
    /// <param name="rate">活动进度</param> 
    /// <param name="level">用户角色等级</param> 
    public void AlyT0_ACTIVITY(string uid, string server, string area,
                          string ggid, string type, string id,
                          string rate, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("ACT_TYPE", type);
        dic.Add("ACT_ID", id);
        dic.Add("ACT_RATE", rate);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0_ACTIVITY", dic);
    }

    /// <summary>
    /// 在邀请好友界面点击邀请好友
    /// </summary>
    public void AlyT0L()
    {
        UPTraceApi.traceKey("T0L");
    }

    /// <summary>
    /// 在邀请好友界面成功发送邀请
    /// </summary>
    public void AlyT0M()
    {
        UPTraceApi.traceKey("T0M");
    }

    /// <summary>
    /// 成功邀请好友进入游戏
    /// </summary>
    public void AlyT0N()
    {
        UPTraceApi.traceKey("T0N");
    }


    /// <summary>
    /// 好友变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="change">好友数量改变 增加为0 减少为1</param> 
    /// <param name="changeUid"> 被操作的用户角色uid</param>
    /// <param name="remainingFriend">剩余好友数量</param> 
    /// <param name="level">用户角色等级</param> 

    public void AlyT0_FRIEND(string uid, string server, string area,
                           string ggid, string change, string changeUid,
                             string remainingFriend, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("X", change);
        dic.Add("U2", changeUid);
        dic.Add("AFTER_U2", remainingFriend);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0_FRIEND", dic);
    }


    /// <summary>
    /// 公会变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="change">公会数量改变 增加为0 减少为1</param> 
    /// <param name="changeId">被执行操作的公会id</param> 
    /// <param name="consortiaLevel">公会等级</param> 
    /// <param name="level">用户角色等级</param> 

    public void AlyT0_CONSORTIA(string uid, string server, string area,
                             string ggid, string change, string changeId,
                             string consortiaLevel, string level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("X", change);
        dic.Add("CONSORTIA_ID", changeId);
        dic.Add("CONSORTIA_L", consortiaLevel);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0_CONSORTIA", dic);
    }


    /// <summary>
    /// email变动点位
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="server">所在服务器 （没有传null）</param>  
    /// <param name="area">所在区（没有传null)</param>  
    /// <param name="ggid"> 登录sdk生成的id（未接入传null）</param>  
    /// <param name="email">对应邮箱</param> 

    public void AlyT0_EMAIL(string uid, string server, string area,
                       string ggid, string email)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("EMAIL", email);
        UPTraceApi.traceDictionary("T0_EMAIL", dic);
    }

    /// <summary>
    /// FCM注册 点位
    /// </summary>
    /// <param name="result">注册结果 成功为0 失败为1 异常为-1</param>
    public void AlyT0I(String result)
    {
        UPTraceApi.traceString("T011", "S=" + result);
    }
    /// <summary>
    /// FCM通知收到
    /// </summary>
    public void AlyT0J()
    {
        UPTraceApi.traceKey("T0J");
    }

    /// <summary>
    /// FCM通知点击
    /// </summary>
    public void AlyT0K()
    {
        UPTraceApi.traceKey("T0K");
    }


    /// <summary>
    /// 激励视频入口展示点位
    /// </summary>
    /// <param name="uid">游戏角色id</param>
    /// <param name="server">所在服务器 （没有传null）</param>
    /// <param name="area">所在区（没有传null)</param>
    /// <param name="ggid">登录sdk生成的id（未接入传null)</param>
    /// <param name="enternce">广告位</param>
    /// <param name="cache">广告缓存状态</param>
    /// <param name="button">广告按钮是否可点击</param>
    /// <param name="reason">不满足展示的原因</param>
    public void AlyT0R(string uid, string server, string area, string ggid, string enternce,
        string cache, string button, string reason)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("AD_ENTRANCE", enternce);
        dic.Add("AD_CACHE", cache);
        dic.Add("AD_BUTTON", button);
        dic.Add("AD_REASON", reason);
        UPTraceApi.traceDictionary("T0R", dic);

    }


    /// <summary>
    /// 激励视频入口点击
    /// </summary>
    /// <param name="uid">游戏角色id</param>
    /// <param name="server">所在服务器 （没有传null）</param>
    /// <param name="area">所在区（没有传null)</param>
    /// <param name="ggid">登录sdk生成的id（未接入传null)</param>
    /// <param name="enter">广告位</param>
    /// <param name="cache">广告缓存状态</param>
    /// <param name="button">广告按钮是否可点击</param>

    public void AlyT0O(string uid, string server, string area,
                       string ggid, string enter, string cache, string button)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("AD_ENTRANCE", enter);
        dic.Add("AD_CACHE", cache);
        dic.Add("AD_BUTTON", button);
        UPTraceApi.traceDictionary("T0O", dic);
    }

    /// <summary>
    /// 激励视频播放情况
    /// </summary>
    /// <param name="uid">游戏角色id</param>
    /// <param name="server">所在服务器 （没有传null）</param>
    /// <param name="area">所在区（没有传null)</param>
    /// <param name="ggid">登录sdk生成的id（未接入传null)</param>
    /// <param name="enter">广告位</param>
    /// <param name="isShow">是否播放并成功领取奖励</param> 

    public void AlyT0O1(string uid, string server, string area,
                       string ggid, string enter, string isShow)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("AD_ENTRANCE", enter);
        dic.Add("RV_FINISH", isShow);
        UPTraceApi.traceDictionary("T0O1", dic);
    }


    /// <summary>
    /// 插屏视频入口展示
    /// </summary>
    /// <param name="uid">游戏角色id</param>
    /// <param name="server">所在服务器 （没有传null）</param>
    /// <param name="area">所在区（没有传null)</param>
    /// <param name="ggid">登录sdk生成的id（未接入传null)</param>
    /// <param name="enter">广告位</param>
    /// <param name="cache">广告缓存状态</param>
    /// <param name="button">广告按钮是否可点击</param>

    public void AlyT0S(string uid, string server, string area,
                       string ggid, string enter, string cache, string button)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("AD_ENTRANCE", enter);
        dic.Add("AD_CACHE", cache);
        dic.Add("AD_BUTTON", button);
        UPTraceApi.traceDictionary("T0S", dic);
    }

    /// <summary>
    /// 插屏广告播放情况
    /// </summary>
    /// <param name="uid">游戏角色id</param>
    /// <param name="server">所在服务器 （没有传null）</param>
    /// <param name="area">所在区（没有传null)</param>
    /// <param name="ggid">登录sdk生成的id（未接入传null)</param>
    /// <param name="enter">广告位</param>
    /// <param name="showTime">广告播放时长</param> 

    public void AlyT0S1(string uid, string server, string area,
                        string ggid, string enter, string showTime)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        if (server != null)
        {
            dic.Add("H", server);
        }
        if (area != null)
        {
            dic.Add("Z", area);
        }
        if (ggid != null)
        {
            dic.Add("GGID", ggid);
        }
        dic.Add("AD_ENTRANCE", enter);
        dic.Add("IS_TIME", showTime);
        UPTraceApi.traceDictionary("T0S1", dic);
    }

    /// <summary>
    /// 商城停留>=15秒
    /// </summary>
    public void AlyT0C3()
    {
        UPTraceApi.traceKey("T0C3");
    }


    /// <summary>
    /// 商城停留>=30秒
    /// </summary>
    public void AlyT0C4()
    {
        UPTraceApi.traceKey("T0C4");
    }

    /// <summary>
    /// 商城停留>=45秒
    /// </summary>
    public void AlyT0C5()
    {
        UPTraceApi.traceKey("T0C5");
    }

    /// <summary>
    /// 本次用户充值金额>0 且 <=9.99美元
    /// </summary>
    public void AlyT0E1()
    {
        UPTraceApi.traceKey("T0E1");
    }

    /// <summary>
    /// 本次用户充值金额>9.99 且 <=19.99美元
    /// </summary>
    public void AlyT0E2()
    {
        UPTraceApi.traceKey("T0E2");
    }

    /// <summary>
    /// 本次用户充值金额>19.99 且 <=29.99美元
    /// </summary>
    public void AlyT0E3()
    {
        UPTraceApi.traceKey("T0E3");
    }

    /// <summary>
    /// 本次用户充值金额>29.99 且 <=39.99美元
    /// </summary>
    public void AlyT0E4()
    {
        UPTraceApi.traceKey("T0E4");
    }

    /// <summary>
    /// 本次用户充值金额>39.99 且 <=49.99美元
    /// </summary>
    public void AlyT0E5()
    {
        UPTraceApi.traceKey("T0E5");
    }

    /// <summary>
    /// 本次用户充值金额>49.99 且 <=59.99美元
    /// </summary>
    public void AlyT0E6()
    {
        UPTraceApi.traceKey("T0E6");
    }

    /// <summary>
    /// 本次用户充值金额>59.99 且 <=69.99美元
    /// </summary>
    public void AlyT0E7()
    {
        UPTraceApi.traceKey("T0E7");
    }

    /// <summary>
    /// 本次用户充值金额>69.99 且 <=79.99美元
    /// </summary>
    public void AlyT0E8()
    {
        UPTraceApi.traceKey("T0E8");
    }

    /// <summary>
    /// 本次用户充值金额>79.99 且 <=89.99美元
    /// </summary>
    public void AlyT0E9()
    {
        UPTraceApi.traceKey("T0E9");
    }

    /// <summary>
    /// 本次用户充值金额>89.99 且 <=99.99美元
    /// </summary>
    public void AlyT0E10()
    {
        UPTraceApi.traceKey("T0E10");
    }

    /// <summary>
    /// 本次用户充值金额>99.99美元
    /// </summary>
    public void AlyT0E11()
    {
        UPTraceApi.traceKey("T0E11");
    }

    /// <summary>
    /// 用户等级达到10级
    /// </summary>
    public void AlyT0Q1()
    {
        UPTraceApi.traceKey("T0Q1");
    }


    /// <summary>
    /// 用户等级达到20级
    /// </summary>
    public void AlyT0Q2()
    {
        UPTraceApi.traceKey("T0Q2");
    }

    /// <summary>
    /// 用户等级达到30级
    /// </summary>
    public void AlyT0Q3()
    {
        UPTraceApi.traceKey("T0Q3");
    }

    /// <summary>
    /// 用户等级达到40级
    /// </summary>
    public void AlyT0Q4()
    {
        UPTraceApi.traceKey("T0Q4");
    }

    /// <summary>
    /// 用户等级达到50级
    /// </summary>
    public void AlyT0Q5()
    {
        UPTraceApi.traceKey("T0Q5");
    }

    /// <summary>
    /// 用户等级达到60级
    /// </summary>
    public void AlyT0Q6()
    {
        UPTraceApi.traceKey("T0Q6");
    }

    /// <summary>
    /// 用户等级达到70级
    /// </summary>
    public void AlyT0Q7()
    {
        UPTraceApi.traceKey("T0Q7");
    }

    /// <summary>
    /// 用户等级达到80级
    /// </summary>
    public void AlyT0Q8()
    {
        UPTraceApi.traceKey("T0Q8");
    }

    /// <summary>
    /// 用户等级达到90级
    /// </summary>
    public void AlyT0Q9()
    {
        UPTraceApi.traceKey("T0Q9");
    }

    /// <summary>
    /// 用户等级达到100级
    /// </summary>
    public void AlyT0Q10()
    {
        UPTraceApi.traceKey("T0Q10");
    }

    /// <summary>
    /// 达到新手保护结束等级
    /// </summary>
    public void AlyT0Q_E()
    {
        UPTraceApi.traceKey("T0Q_E");
    }


    /// <summary>
    /// 达到最早付费等级
    /// </summary>
    public void AlyT0Q_P()
    {
        UPTraceApi.traceKey("T0Q_P");
    }

    /// <summary>
    ///累计登录次数=1次
    /// </summary>
    public void AlyT_LoginA()
    {
        UPTraceApi.traceKey("T_LoginA");
    }

    /// <summary>
    ///累计登录次数=5次
    /// </summary>
    public void AlyT_LoginB()
    {
        UPTraceApi.traceKey("T_LoginB");
    }

    /// <summary>
    /// 首次在商店中停留时间>=15秒
    /// </summary>
    public void AlyT_PPA()
    {
        UPTraceApi.traceKey("T_PPA");
    }

    /// <summary>
    /// 首次在商店中停留时间>=30秒
    /// </summary>
    public void AlyT_PPB()
    {
        UPTraceApi.traceKey("T_PPB");
    }

    /// <summary>
    /// 首次任意付费
    /// </summary>
    public void AlyT_PA()
    {
        UPTraceApi.traceKey("T_PA");
    }

    /// <summary>
    /// 累计付费>=19.9$
    /// </summary>
    public void AlyT_PB()
    {
        UPTraceApi.traceKey("T_PB");
    }

    /// <summary>
    /// 累计广告展示次数=1次
    /// </summary>
    public void AlyT_AdsA()
    {
        UPTraceApi.traceKey("T_AdsA");
    }

    /// <summary>
    /// 累计广告展示次数=8次
    /// </summary>
    public void AlyT_AdsB()
    {
        UPTraceApi.traceKey("T_AdsB");
    }



    /// <summary>
    /// 用户等级达到T0Q_L值时上报
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="level">用户角色等级</param> 

    public void AlyT0Q_L(String uid, String level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0Q_L", dic);
    }

    /// <summary>
    /// 用户等级达到T0Q_M值时上报
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="level">用户角色等级</param> 

    public void AlyT0Q_M(String uid, String level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0Q_M", dic);
    }

    /// <summary>
    /// 用户等级达到T0Q_H值时上报
    /// </summary>
    /// <param name="uid">游戏角色id</param> 
    /// <param name="level">用户角色等级</param> 

    public void AlyT0Q_H(String uid, String level)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("U", uid);
        dic.Add("L", level);
        UPTraceApi.traceDictionary("T0Q_H", dic);
    }

    /// <summary>
    /// 广告收益点位
    /// </summary>
    /// <param name="country">国家</param> 
    /// <param name="unitId">广告的单元id</param> 
    /// <param name="type">广告类型（banner，interstitial，rewarded）</param> 
    /// <param name="placement">广告的展示场景</param> 
    /// <param name="revenue">广告收入金额</param> 
    /// <param name="source">聚合广告来源（MAX/IRONSOURCE/ADMOB）</param> 
    public void AlyT0_AD_REV(String country, String unitId, String type,
                       String placement, String revenue, String source)
    {
        Dictionary<string, string> dic = new Dictionary<string, string>();
        dic.Add("COUNTRY", country);
        dic.Add("AD_UNIT", unitId);
        dic.Add("AD_TYPE", type);
        dic.Add("PLACEMENT", placement);
        dic.Add("REVENUE", revenue);
        dic.Add("SOURCE", source);
        UPTraceApi.traceDictionary("T0_AD_REV", dic);
    }

    public static string TasdkEventVersion()
    {
        return "1.0.0";
    }

}
