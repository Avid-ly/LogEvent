using System.Collections;
using System.Collections.Generic;
using AppsFlyerSDK;
using UnityEngine;

public class AppsFlyerLogEvent
{
    /// <summary>
    /// 本次用户充值金额>0 且 <=9.99美元
    /// </summary>
    public void AfT0E1()
    {
        AppsFlyer.sendEvent("T0E1", null);
    }

    /// <summary>
    /// 本次用户充值金额>9.99 且 <=19.99美元
    /// </summary>
    public void AfT0E2()
    {
        AppsFlyer.sendEvent("T0E2", null);
    }

    /// <summary>
    /// 本次用户充值金额>19.99 且 <=29.99美元
    /// </summary>
    public void AfT0E3()
    {
        AppsFlyer.sendEvent("T0E3", null);
    }

    /// <summary>
    /// 本次用户充值金额>29.99 且 <=39.99美元
    /// </summary>
    public void AfT0E4()
    {
        AppsFlyer.sendEvent("T0E4", null);
    }

    /// <summary>
    /// 本次用户充值金额>39.99 且 <=49.99美元
    /// </summary>
    public void AfT0E5()
    {
        AppsFlyer.sendEvent("T0E5", null);
    }

    /// <summary>
    /// 本次用户充值金额>49.99 且 <=59.99美元
    /// </summary>
    public void AfT0E6()
    {
        AppsFlyer.sendEvent("T0E6", null);
    }

    /// <summary>
    /// 本次用户充值金额>59.99 且 <=69.99美元
    /// </summary>
    public void AfT0E7()
    {
        AppsFlyer.sendEvent("T0E7", null);
    }

    /// <summary>
    /// 本次用户充值金额>69.99 且 <=79.99美元
    /// </summary>
    public void AfT0E8()
    {
        AppsFlyer.sendEvent("T0E8", null);
    }

    /// <summary>
    /// 本次用户充值金额>79.99 且 <=89.99美元
    /// </summary>
    public void AfT0E9()
    {
        AppsFlyer.sendEvent("T0E9", null);
    }

    /// <summary>
    /// 本次用户充值金额>89.99 且 <=99.99美元
    /// </summary>
    public void AfT0E10()
    {
        AppsFlyer.sendEvent("T0E10", null);
    }

    /// <summary>
    /// 本次用户充值金额>99.99美元
    /// </summary>
    public void AfT0E11()
    {
        AppsFlyer.sendEvent("T0E11", null);
    }


    /// <summary>
    /// 用户等级达到10级
    /// </summary>
    public void AfT0Q1()
    {
        AppsFlyer.sendEvent("T0Q1", null);
    }


    /// <summary>
    /// 用户等级达到20级
    /// </summary>
    public void AfT0Q2()
    {
        AppsFlyer.sendEvent("T0Q2", null);
    }

    /// <summary>
    /// 用户等级达到30级
    /// </summary>
    public void AfT0Q3()
    {
        AppsFlyer.sendEvent("T0Q3", null);
    }

    /// <summary>
    /// 用户等级达到40级
    /// </summary>
    public void AfT0Q4()
    {
        AppsFlyer.sendEvent("T0Q4", null);
    }

    /// <summary>
    /// 用户等级达到50级
    /// </summary>
    public void AfT0Q5()
    {
        AppsFlyer.sendEvent("T0Q5", null);
    }

    /// <summary>
    /// 用户等级达到60级
    /// </summary>
    public void AfT0Q6()
    {
        AppsFlyer.sendEvent("T0Q6", null);
    }

    /// <summary>
    /// 用户等级达到70级
    /// </summary>
    public void AfT0Q7()
    {
        AppsFlyer.sendEvent("T0Q7", null);
    }

    /// <summary>
    /// 用户等级达到80级
    /// </summary>
    public void AfT0Q8()
    {
        AppsFlyer.sendEvent("T0Q8", null);
    }

    /// <summary>
    /// 用户等级达到90级
    /// </summary>
    public void AfT0Q9()
    {
        AppsFlyer.sendEvent("T0Q9", null);
    }

    /// <summary>
    /// 用户等级达到100级
    /// </summary>
    public void AfT0Q10()
    {
        AppsFlyer.sendEvent("T0Q10", null);
    }

    /// <summary>
    /// 达到新手保护结束等级
    /// </summary>
    public void AfT0Q_E()
    {
        AppsFlyer.sendEvent("T0Q_E", null);
    }


    /// <summary>
    /// 达到最早付费等级
    /// </summary>
    public void AfT0Q_P()
    {
        AppsFlyer.sendEvent("T0Q_P", null);
    }

    /// <summary>
    ///累计登录次数=1次
    /// </summary>
    public void AfT_LoginA()
    {
        AppsFlyer.sendEvent("T_LoginA", null);
    }

    /// <summary>
    ///累计登录次数=5次
    /// </summary>
    public void AfT_LoginB()
    {
        AppsFlyer.sendEvent("T_LoginB", null);
    }

    /// <summary>
    /// 首次在商店中停留时间>=15秒
    /// </summary>
    public void AfT_PPA()
    {
        AppsFlyer.sendEvent("T_PPA", null);
    }

    /// <summary>
    /// 首次在商店中停留时间>=30秒
    /// </summary>
    public void AfT_PPB()
    {
        AppsFlyer.sendEvent("T_PPB", null);
    }

    /// <summary>
    /// 首次任意付费
    /// </summary>
    public void AfT_PA()
    {
        AppsFlyer.sendEvent("T_PA", null);
    }

    /// <summary>
    /// 累计付费>=19.9$
    /// </summary>
    public void AfT_PB()
    {
        AppsFlyer.sendEvent("T_PB", null);
    }

    /// <summary>
    /// 累计广告展示次数=1次
    /// </summary>
    public void AfT_AdsA()
    {
        AppsFlyer.sendEvent("T_AdsA", null);
    }

    /// <summary>
    /// 累计广告展示次数=8次
    /// </summary>
    public void AfT_AdsB()
    {
        AppsFlyer.sendEvent("T_AdsB", null);
    }


    /// <summary>
    /// 打开app
    /// </summary>
    public void AfOpen()
    {
        AppsFlyer.sendEvent("Af_open", null);
    }


    /// <summary>
    /// 登录
    /// </summary>
    public void AfLogin()
    {
        AppsFlyer.sendEvent(AFInAppEvents.LOGIN, null);
    }

    /// <summary>
    /// 完成新手引导
    /// </summary>
    /// <param name="isSuccess">用户是否完成新手引导</param> 
    /// <param name="id">新手引导阶段ID</param> 
    /// <param name="content">新手引导阶段名称</param> 

    public void AfTutorial(string isSuccess, string id, string content)
    {
        Dictionary<string, string> eventValues = new Dictionary<string, string>();
        eventValues.Add(AFInAppEvents.SUCCESS, isSuccess);
        eventValues.Add(AFInAppEvents.CONTENT_ID, id);
        eventValues.Add(AFInAppEvents.CONTENT_VIEW, content);
        AppsFlyer.sendEvent(AFInAppEvents.TUTORIAL_COMPLETION, eventValues);
    }

    /// <summary>
    /// 充值
    /// </summary>
    /// <param name="revenue">订单总额</param> 
    /// <param name="currency">货币代码</param> 
    /// <param name="productId">商品数量</param> 
    /// <param name="orderId">商品ID</param> 
    /// <param name="isValidated">是否验证购买</param> 
    /// <param name="receiptId">收据ID</param> 
    public void AfPurchase(string revenue, string currency, string productId, string orderId,
                           string isValidated, string receiptId)
    {
        Dictionary<string, string> eventValues = new Dictionary<string, string>();
        eventValues.Add(AFInAppEvents.REVENUE, revenue);
        eventValues.Add(AFInAppEvents.CURRENCY, currency);
        eventValues.Add(AFInAppEvents.CONTENT_ID, productId);
        eventValues.Add(AFInAppEvents.ORDER_ID, orderId);
        eventValues.Add(AFInAppEvents.VALIDATED, isValidated);
        eventValues.Add(AFInAppEvents.RECEIPT_ID, receiptId);
        AppsFlyer.sendEvent(AFInAppEvents.PURCHASE, eventValues);
    }

    /// <summary>
    /// 用户升级
    /// <param name="level 用户角色等级
    /// </summary>
    public void AfT0Q(string level)
    {
        Dictionary<string, string> eventValues = new Dictionary<string, string>();
        eventValues.Add("L", level);
        AppsFlyer.sendEvent("T0Q", null);
    }

    /// <summary>
    /// 广告收入
    /// </summary>
    /// <param name="monetizationNetwork">广告联盟名字</param> 
    /// <param name="mediationNetwork">广告聚合名字</param> 
    /// <param name="code">货币代码</param> 
    /// <param name="revenue">广告收入金额</param> 
    /// <param name="country">国家</param> 
    /// <param name="unitId">广告单元id</param> 
    /// <param name="adType">广告类型</param>
    /// <param name="placement">广告展示场景</param> 
    public void AfAdRevenue(string monetizationNetwork, MediationNetwork mediationNetwork, string code, double revenue,
                           string country, string unitId, string adType, string placement)
    {

        Dictionary<string, string> additionalParams = new Dictionary<string, string>();
        additionalParams.Add(AdRevenueScheme.COUNTRY, country);
        additionalParams.Add(AdRevenueScheme.AD_UNIT, unitId);
        additionalParams.Add(AdRevenueScheme.AD_TYPE, adType);
        additionalParams.Add(AdRevenueScheme.PLACEMENT, placement);
        var logRevenue = new AFAdRevenueData(monetizationNetwork, mediationNetwork, code, revenue);
        AppsFlyer.logAdRevenue(logRevenue, additionalParams);
    }

    public static string AfEventVersion()
    {
        return "1.0.0";
    }
}
