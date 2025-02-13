package com.example.test001.example;

import android.content.Context;

import com.appsflyer.AFAdRevenueData;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AdRevenueScheme;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.MediationNetwork;

import java.util.HashMap;
import java.util.Map;

public class AppsFlyerLogEvent {
    Context context;

    /***
     * 本次用户充值金额>0 且 <=9.99美元
     */
    public void AfT0E1(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E1",null);
    }

    /***
     * 本次用户充值金额>9.99 且 <=19.99美元
     */
    public void AfT0E2(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E2",null);
    }

    /***
     * 本次用户充值金额>19.99 且 <=29.99美元
     */
    public void AfT0E3(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E3",null);
    }

    /***
     * 本次用户充值金额>29.99 且 <=39.99美元
     */
    public void AfT0E4(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E4",null);
    }

    /***
     * 本次用户充值金额>39.99 且 <=49.99美元
     */
    public void AfT0E5(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E5",null);
    }

    /***
     * 本次用户充值金额>49.99 且 <=59.99美元
     */
    public void AfT0E6(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E6",null);
    }

    /***
     * 本次用户充值金额>59.99 且 <=69.99美元
     */
    public void AfT0E7(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E7",null);
    }

    /***
     * 本次用户充值金额>69.99 且 <=79.99美元
     */
    public void AfT0E8(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E8",null);
    }

    /***
     * 本次用户充值金额>79.99 且 <=89.99美元
     */
    public void AfT0E9(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E9",null);
    }

    /***
     * 本次用户充值金额>89.99 且 <=99.99美元
     */
    public void AfT0E10(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E10",null);
    }

    /***
     * 本次用户充值金额>99.99美元
     */
    public void AfT0E11(){
        AppsFlyerLib.getInstance().logEvent(context,"T0E11",null);
    }


    /**
     * 用户等级达到10级
     */
    public void AfT0Q1(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q1",null);
    }


    /**
     * 用户等级达到20级
     */
    public void AfT0Q2(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q2",null);
    }

    /**
     * 用户等级达到30级
     */
    public void AfT0Q3(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q3",null);
    }

    /**
     * 用户等级达到40级
     */
    public void AfT0Q4(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q4",null);
    }

    /**
     * 用户等级达到50级
     */
    public void AfT0Q5(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q5",null);
    }

    /**
     * 用户等级达到60级
     */
    public void AfT0Q6(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q6",null);
    }

    /**
     * 用户等级达到70级
     */
    public void AfT0Q7(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q7",null);
    }

    /**
     * 用户等级达到80级
     */
    public void AfT0Q8(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q8",null);
    }

    /**
     * 用户等级达到90级
     */
    public void AfT0Q9(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q9",null);
    }

    /**
     * 用户等级达到100级
     */
    public void AfT0Q10(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q10",null);
    }

    /***
     * 达到新手保护结束等级
     */
    public void AfT0Q_E(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q_E",null);
    }


    /***
     * 达到最早付费等级
     */
    public void AfT0Q_P(){
        AppsFlyerLib.getInstance().logEvent(context,"T0Q_P",null);
    }

    /**
     *累计登录次数=1次
     */
    public void AfT_LoginA(){
        AppsFlyerLib.getInstance().logEvent(context,"T_LoginA",null);
    }

    /**
     *累计登录次数=5次
     */
    public void AfT_LoginB(){
        AppsFlyerLib.getInstance().logEvent(context,"T_LoginB",null);
    }

    /**
     * 首次在商店中停留时间>=15秒
     */
    public void AfT_PPA(){
        AppsFlyerLib.getInstance().logEvent(context,"T_PPA",null);
    }

    /**
     * 首次在商店中停留时间>=30秒
     */
    public void AfT_PPB(){
        AppsFlyerLib.getInstance().logEvent(context,"T_PPB",null);
    }

    /**
     * 首次任意付费
     */
    public void AfT_PA(){
        AppsFlyerLib.getInstance().logEvent(context,"T_PA",null);
    }

    /**
     * 累计付费>=19.9$
     */
    public void AfT_PB(){
        AppsFlyerLib.getInstance().logEvent(context,"T_PB",null);
    }

    /**
     * 累计广告展示次数=1次
     */
    public void AfT_AdsA(){
        AppsFlyerLib.getInstance().logEvent(context,"T_AdsA",null);
    }

    /**
     * 累计广告展示次数=8次
     */
    public void AfT_AdsB(){
        AppsFlyerLib.getInstance().logEvent(context,"T_AdsB",null);
    }


    /**
     * 打开app
     */
    public void AfOpen(){
        AppsFlyerLib.getInstance().logEvent(context,"Af_open",null);
    }


    /**
     * 登录
     */
    public void AfLogin(){
        AppsFlyerLib.getInstance().logEvent(context,AFInAppEventType.LOGIN,null);
    }

    /***
     * 完成新手引导
     * @param isSuccess 用户是否完成新手引导
     * @param id 新手引导阶段ID
     * @param content 新手引导阶段名称
     */
    public void AfTutorial(String isSuccess,String id,String content){
        Map<String, Object> eventValues = new HashMap<String, Object>();
        eventValues.put(AFInAppEventParameterName.SUCCESS,isSuccess);
        eventValues.put(AFInAppEventParameterName.TUTORIAL_ID,id);
        eventValues.put(AFInAppEventParameterName.CONTENT,content);
        AppsFlyerLib.getInstance().logEvent(context, AFInAppEventType.TUTORIAL_COMPLETION,eventValues);
    }

    /***
     * 充值
     * @param revenue 订单总额
     * @param currency 货币代码
     * @param productId 商品数量
     * @param orderId 商品ID
     * @param isValidated 是否验证购买
     * @param receiptId 收据ID
     */
    public void AfPurchase(String revenue,String currency,String productId,String orderId,
                           String isValidated,String receiptId){
        Map<String, Object> eventValues = new HashMap<String, Object>();
        eventValues.put(AFInAppEventParameterName.REVENUE,revenue);
        eventValues.put(AFInAppEventParameterName.CURRENCY,currency);
        eventValues.put(AFInAppEventParameterName.CONTENT_ID,productId);
        eventValues.put(AFInAppEventParameterName.ORDER_ID,orderId);
        eventValues.put(AFInAppEventParameterName.VALIDATED,isValidated);
        eventValues.put(AFInAppEventParameterName.RECEIPT_ID,receiptId);
        AppsFlyerLib.getInstance().logEvent(context, AFInAppEventType.PURCHASE,eventValues);
    }

    /***
     * 用户升级
     * @param level 用户角色等级
     */
    public void AfT0Q(String level){
        Map<String, Object> eventValues = new HashMap<String, Object>();
        eventValues.put("L",level);
        AppsFlyerLib.getInstance().logEvent(context,"T0Q",null);
    }

    /**
     * 广告收入
     * @param monetizationNetwork 广告联盟名字
     * @param mediationNetwork 广告聚合名字
     * @param code 货币代码
     * @param revenue 广告收入金额
     * @param country 国家
     * @param unitId 广告单元id
     * @param adType 广告类型
     * @param placement 广告展示场景
     */
    public void AfAdRevenue(String monetizationNetwork,MediationNetwork mediationNetwork,String code,double revenue,
                           String country,String unitId,String adType,String placement){

        // Create an instance of AFAdRevenueData
        AFAdRevenueData adRevenueData = new AFAdRevenueData(
                monetizationNetwork,       // monetizationNetwork
                mediationNetwork, // mediationNetwork
                code,           // currencyIso4217Code
                revenue           // revenue
        );

        Map<String, Object> additionalParameters = new HashMap<>();
        additionalParameters.put(AdRevenueScheme.COUNTRY, country);
        additionalParameters.put(AdRevenueScheme.AD_UNIT, unitId);
        additionalParameters.put(AdRevenueScheme.AD_TYPE, adType);
        additionalParameters.put(AdRevenueScheme.PLACEMENT, placement);
        AppsFlyerLib.getInstance().logAdRevenue(adRevenueData, additionalParameters);
    }

    public String  AFEventVersion(){
        return "1.0.0";
    }
}
