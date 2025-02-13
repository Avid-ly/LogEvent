using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirebaseLogEvent 
{

    /// <summary>
    /// 本次用户充值金额>0 且 <=9.99美元
    /// </summary>
    public void FirebaseT0E1()
    {

        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E1", null);
    }

    /// <summary>
    /// 本次用户充值金额>9.99 且 <=19.99美元
    /// </summary>
    public void FirebaseT0E2()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E2", null);
    }

    /// <summary>
    /// 本次用户充值金额>19.99 且 <=29.99美元
    /// </summary>
    public void FirebaseT0E3()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E3", null);
    }

    /// <summary>
    /// 本次用户充值金额>29.99 且 <=39.99美元
    /// </summary>
    public void FirebaseT0E4()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E4", null);
    }

    /// <summary>
    /// 本次用户充值金额>39.99 且 <=49.99美元
    /// </summary>
    public void FirebaseT0E5()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E5", null);
    }

    /// <summary>
    /// 本次用户充值金额>49.99 且 <=59.99美元
    /// </summary>
    public void FirebaseT0E6()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E6", null);
    }

    /// <summary>
    /// 本次用户充值金额>59.99 且 <=69.99美元
    /// </summary>
    public void FirebaseT0E7()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E7", null);
    }

    /// <summary>
    /// 本次用户充值金额>69.99 且 <=79.99美元
    /// </summary>
    public void FirebaseT0E8()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E8", null);
    }

    /// <summary>
    /// 本次用户充值金额>79.99 且 <=89.99美元
    /// </summary>
    public void FirebaseT0E9()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E9", null);
    }

    /// <summary>
    /// 本次用户充值金额>89.99 且 <=99.99美元
    /// </summary>
    public void FirebaseT0E10()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E10", null);
    }

    /// <summary>
    /// 本次用户充值金额>99.99美元
    /// </summary>
    public void FirebaseT0E11()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0E11", null);
    }


    /// <summary>
    /// 用户等级达到10级
    /// </summary>
    public void FirebaseT0Q1()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q1", null);
    }


    /// <summary>
    /// 用户等级达到20级
    /// </summary>
    public void FirebaseT0Q2()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q2", null);
    }

    /// <summary>
    /// 用户等级达到30级
    /// </summary>
    public void FirebaseT0Q3()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q3", null);
    }

    /// <summary>
    /// 用户等级达到40级
    /// </summary>
    public void FirebaseT0Q4()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q4", null);
    }

    /// <summary>
    /// 用户等级达到50级
    /// </summary>
    public void FirebaseT0Q5()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q5", null);
    }

    /// <summary>
    /// 用户等级达到60级
    /// </summary>
    public void FirebaseT0Q6()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q6", null);
    }

    /// <summary>
    /// 用户等级达到70级
    /// </summary>
    public void FirebaseT0Q7()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q7", null);
    }

    /// <summary>
    /// 用户等级达到80级
    /// </summary>
    public void FirebaseT0Q8()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q8", null);
    }

    /// <summary>
    /// 用户等级达到90级
    /// </summary>
    public void FirebaseT0Q9()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q9", null);
    }

    /// <summary>
    /// 用户等级达到100级
    /// </summary>
    public void FirebaseT0Q10()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q10", null);
    }

    /// <summary>
    /// 达到新手保护结束等级
    /// </summary>
    public void FirebaseT0Q_E()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q_E", null);
    }


    /// <summary>
    /// 达到最早付费等级
    /// </summary>
    public void FirebaseT0Q_P()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T0Q_P", null);
    }

    /// <summary>
    ///累计登录次数=1次
    /// </summary>
    public void FirebaseT_LoginA()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_LoginA", null);
    }

    /// <summary>
    ///累计登录次数=5次
    /// </summary>
    public void FirebaseT_LoginB()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_LoginB", null);
    }

    /// <summary>
    /// 首次在商店中停留时间>=15秒
    /// </summary>
    public void FirebaseT_PPA()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_PPA", null);
    }

    /// <summary>
    /// 首次在商店中停留时间>=30秒
    /// </summary>
    public void FirebaseT_PPB()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_PPB", null);
    }

    /// <summary>
    /// 首次任意付费
    /// </summary>
    public void FirebaseT_PA()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_PA", null);
    }

    /// <summary>
    /// 累计付费>=19.9$
    /// </summary>
    public void FirebaseT_PB()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_PB", null);
    }

    /// <summary>
    /// 累计广告展示次数=1次
    /// </summary>
    public void FirebaseT_AdsA()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_AdsA", null);
    }

    /// <summary>
    /// 累计广告展示次数=8次
    /// </summary>
    public void FirebaseT_AdsB()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("T_AdsB", null);
    }


    /// <summary>
    /// 打开app
    /// @param method 登录方式（比如Google）
    /// </summary>
    public void FirebaseOpen(string method)
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("app_open",
        new Firebase.Analytics.Parameter(Firebase.Analytics.FirebaseAnalytics.ParameterMethod, method));
    }


    /// <summary>
    /// 登录
    /// </summary>
    public void FirebaseLogin()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("login", null);
    }

    /// <summary>
    /// 完成新手引导
    /// </summary>
    public void FirebaseTutorial()
    {
        Firebase.Analytics.FirebaseAnalytics.LogEvent("tutorial_complete", null);
    }

    public static string FirebaseEventVersion()
    {
        return "1.0.0";
    }

}
