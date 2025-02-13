package com.example.test001.example;

import android.content.Context;
import android.os.Bundle;

import com.google.firebase.analytics.FirebaseAnalytics;

public class FirebaseLogEvent {
    Context context;

    /***
     * 本次用户充值金额>0 且 <=9.99美元
     */
    public void FirebaseT0E1(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E1",null);
    }

    /***
     * 本次用户充值金额>9.99 且 <=19.99美元
     */
    public void FirebaseT0E2(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E2",null);
    }

    /***
     * 本次用户充值金额>19.99 且 <=29.99美元
     */
    public void FirebaseT0E3(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E3",null);
    }

    /***
     * 本次用户充值金额>29.99 且 <=39.99美元
     */
    public void FirebaseT0E4(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E4",null);
    }

    /***
     * 本次用户充值金额>39.99 且 <=49.99美元
     */
    public void FirebaseT0E5(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E5",null);
    }

    /***
     * 本次用户充值金额>49.99 且 <=59.99美元
     */
    public void FirebaseT0E6(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E6",null);
    }

    /***
     * 本次用户充值金额>59.99 且 <=69.99美元
     */
    public void FirebaseT0E7(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E7",null);
    }

    /***
     * 本次用户充值金额>69.99 且 <=79.99美元
     */
    public void FirebaseT0E8(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E8",null);
    }

    /***
     * 本次用户充值金额>79.99 且 <=89.99美元
     */
    public void FirebaseT0E9(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E9",null);
    }

    /***
     * 本次用户充值金额>89.99 且 <=99.99美元
     */
    public void FirebaseT0E10(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E10",null);
    }

    /***
     * 本次用户充值金额>99.99美元
     */
    public void FirebaseT0E11(){
        FirebaseAnalytics.getInstance(context).logEvent("T0E11",null);
    }


    /**
     * 用户等级达到10级
     */
    public void FirebaseT0Q1(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q1",null);
    }


    /**
     * 用户等级达到20级
     */
    public void FirebaseT0Q2(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q2",null);
    }

    /**
     * 用户等级达到30级
     */
    public void FirebaseT0Q3(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q3",null);
    }

    /**
     * 用户等级达到40级
     */
    public void FirebaseT0Q4(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q4",null);
    }

    /**
     * 用户等级达到50级
     */
    public void FirebaseT0Q5(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q5",null);
    }

    /**
     * 用户等级达到60级
     */
    public void FirebaseT0Q6(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q6",null);
    }

    /**
     * 用户等级达到70级
     */
    public void FirebaseT0Q7(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q7",null);
    }

    /**
     * 用户等级达到80级
     */
    public void FirebaseT0Q8(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q8",null);
    }

    /**
     * 用户等级达到90级
     */
    public void FirebaseT0Q9(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q9",null);
    }

    /**
     * 用户等级达到100级
     */
    public void FirebaseT0Q10(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q10",null);
    }

    /***
     * 达到新手保护结束等级
     */
    public void FirebaseT0Q_E(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q_E",null);
    }


    /***
     * 达到最早付费等级
     */
    public void FirebaseT0Q_P(){
        FirebaseAnalytics.getInstance(context).logEvent("T0Q_P",null);
    }

    /**
     *累计登录次数=1次
     */
    public void FirebaseT_LoginA(){
        FirebaseAnalytics.getInstance(context).logEvent("T_LoginA",null);
    }

    /**
     *累计登录次数=5次
     */
    public void FirebaseT_LoginB(){
        FirebaseAnalytics.getInstance(context).logEvent("T_LoginB",null);
    }

    /**
     * 首次在商店中停留时间>=15秒
     */
    public void FirebaseT_PPA(){
        FirebaseAnalytics.getInstance(context).logEvent("T_PPA",null);
    }

    /**
     * 首次在商店中停留时间>=30秒
     */
    public void FirebaseT_PPB(){
        FirebaseAnalytics.getInstance(context).logEvent("T_PPB",null);
    }

    /**
     * 首次任意付费
     */
    public void FirebaseT_PA(){
        FirebaseAnalytics.getInstance(context).logEvent("T_PA",null);
    }

    /**
     * 累计付费>=19.9$
     */
    public void FirebaseT_PB(){
        FirebaseAnalytics.getInstance(context).logEvent("T_PB",null);
    }

    /**
     * 累计广告展示次数=1次
     */
    public void FirebaseT_AdsA(){
        FirebaseAnalytics.getInstance(context).logEvent("T_AdsA",null);
    }

    /**
     * 累计广告展示次数=8次
     */
    public void FirebaseT_AdsB(){
        FirebaseAnalytics.getInstance(context).logEvent("T_AdsB",null);
    }


    /**
     * 打开app
     * @param method 登录方式（比如Google）
     */
    public void FirebaseOpen(String method){
        Bundle parameters = new Bundle();
        parameters.putString("method", method);
        FirebaseAnalytics.getInstance(context).logEvent(FirebaseAnalytics.Event.APP_OPEN,parameters);
    }


    /**
     * 登录
     */
    public void FirebaseLogin(){
        FirebaseAnalytics.getInstance(context).logEvent("login",null);
    }

    /**
     * 完成新手引导
     */
    public void FirebaseTutorial(){
        FirebaseAnalytics.getInstance(context).logEvent("tutorial_complete",null);
    }

    /***
     * 支付上报
     * @param price 金额
     * @param currency 货币代码
     * @param productId 商品id
     * @param quantity 数量
     */
    public void FirebasePurchase(int price,String currency,String productId,int quantity){
        Bundle parameters = new Bundle();
        parameters.putString("product_id",productId);
        parameters.putInt("price",price);
        parameters.putInt("value",price);
        parameters.putString("currency",currency);
        parameters.putInt("quantity",quantity);
        FirebaseAnalytics.getInstance(context).logEvent(FirebaseAnalytics.Event.PURCHASE,parameters);

    }

    /**
     * 广告收入
     * @param monetizationNetwork 广告联盟名字
     * @param mediationNetwork 广告聚合名字
     * @param format format
     * @param revenue 收入金额
     * @param country 货币国家类型
     * @param unitId 广告单元id
     */
    public void FirebasePurchase(String monetizationNetwork, String  mediationNetwork, String format, double revenue,
                                 String country, String unitId){
        Bundle params = new Bundle();
        params.putString(FirebaseAnalytics.Param.AD_PLATFORM, mediationNetwork);
        params.putString(FirebaseAnalytics.Param.AD_SOURCE, monetizationNetwork);
        params.putString(FirebaseAnalytics.Param.AD_FORMAT, format);
        params.putString(FirebaseAnalytics.Param.AD_UNIT_NAME, unitId);
        params.putDouble(FirebaseAnalytics.Param.VALUE, revenue);
        params.putString(FirebaseAnalytics.Param.CURRENCY, country);
        FirebaseAnalytics.getInstance(context).logEvent(FirebaseAnalytics.Event.AD_IMPRESSION, params);

    }
    public String  FirebaseEventVersion(){
        return "1.0.0";
    }
}
