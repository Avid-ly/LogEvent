package com.example.test001.example;

import com.aly.sdk.ALYAnalysis;

import java.util.HashMap;

public class TASDKLogEvent {

    /***
     * 打开app点位
     */
    public void AlyT01(){
        ALYAnalysis.log("T01");
    }

    /***
     *  加载资源开始点位
     * @param isFirst 首次加载为1 非首次加载为0
     */
    public void AlyT011(String isFirst){
        ALYAnalysis.log("T011","F="+isFirst);
    }

    /***
     * 加载20%点位
     */
    public void AlyT011A(){
        ALYAnalysis.log("T011A");
    }

    /***
     * 加载40%点位
     */
    public void AlyT011B(){
        ALYAnalysis.log("T011B");
    }

    /***
     * 加载60%点位
     */
    public void AlyT011C(){
        ALYAnalysis.log("T011C");
    }

    /***
     * 加载80%点位
     */
    public void AlyT011D(){
        ALYAnalysis.log("T011D");
    }

    /***
     * 加载100%点位
     */
    public void AlyT011E(){
        ALYAnalysis.log("T011E");
    }

    /***
     * 点击upadte点位
     */
    public void AlyT011F(){
        ALYAnalysis.log("T011F");
    }

    /**
     * 加载资源结束
     * @param  time 加载资源好事消耗时长，单位秒
     * @param isFirst 首次加载为1 非首次加载为0
     * @param  patchNum 补丁包编号（无更新为0）
     * @param  uid 游戏角色id
     */
    public void AlyT012(String time,String isFirst,String patchNum,String uid){
        HashMap<String, String> map = new HashMap<>();
        map.put("T", time);
        map.put("F", isFirst);
        map.put("P", patchNum);
        map.put("U", uid);
        ALYAnalysis.log("T012", map);

    }

    /***
     * 加载资源错误点位
     * @param isFirst 首次加载为1 非首次加载为0
     * @param errorNum 异常信息编号（无异常为0）
     */
    public void AlyT013(String isFirst,String errorNum){
        HashMap<String, String> map = new HashMap<>();
        map.put("F", isFirst);
        map.put("E", errorNum);
        ALYAnalysis.log("T013", map);
    }

    /**
     * 点击登录点位
     * @param loginType 登录类型
     */
    public void AlyT03(String loginType){
        ALYAnalysis.log("T03","I="+loginType);
    }

    /***
     * 成功登录点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param loginType 登录类型
     * @param roleLevel 用户等级
     * @param vipLevel 用户vip等级
     * @param cyberMoneyNum1 虚拟货币1的数量
     * @param cyberMoneyNum2 虚拟货币2的数量
     * @param unlockNum 累计解锁关卡数量
     * @param overallNum 累计总关卡数量
     * @param isFirst 首次加载为1 非首次加载为0
     * @param grouping 用户分组组别
     */

    public void AlyT0F(String uid,String server,String area,
            String ggid,String loginType,String roleLevel,
            String vipLevel,String cyberMoneyNum1,String cyberMoneyNum2,
            String unlockNum,String overallNum,
            String isFirst,String grouping){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("I", loginType);
        map.put("L", roleLevel);
        map.put("V", vipLevel);
        map.put("A1", cyberMoneyNum1);
        map.put("A2", cyberMoneyNum2);
        map.put("B1", unlockNum);
        map.put("B2", overallNum);
        map.put("F", isFirst);
        map.put("AB", grouping);
        ALYAnalysis.log("T0F", map);
    }


    /**
     * 新主题下载点位
     * @param uid 游戏角色id
     * @param lockId 关卡/机台id
     * @param result 下载结果
     */
    public void AlyT04(String uid,String lockId,String result){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        map.put("G", lockId);
        map.put("S", result);
        ALYAnalysis.log("T04", map);
    }

    /***
     * 点击图标点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param ui1 一级ui的id
     * @param ui2 二级ui的id
     */
    public void AlyT06(String uid,String server,String area,
                       String ggid,String ui1,String ui2){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("UI1", ui1);
        map.put("UI2", ui2);
        ALYAnalysis.log("T06", map);
    }

    /**
     * 进入活动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param level 角色等级
     * @param activeType  活动类型
     * @param activeId 活动ID
     * @param finishNum 已完成数量
     * @param score 总分数
     * @param ranking 排行
     */
    public void AlyT07(String uid,String server,String area,
                       String ggid,String level,String activeType,
                       String activeId,String finishNum,String score,String ranking) {
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null) {
            map.put("H", server);
        }
        if (area != null) {
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("L", level);
        map.put("ACT_TYPE", activeType);
        map.put("ACT_ID", activeId);
        map.put("ACT_FINISH", finishNum);
        map.put("ACT_SCORE", score);
        map.put("ACT_RANK", ranking);
        ALYAnalysis.log("T07", map);
    }

    /***
     * 确认推出活动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param level 角色等级
     * @param activeType  活动类型
     * @param activeId 活动ID
     * @param finishNum 已完成数量
     * @param score 总分数
     * @param ranking 排行
     * @param revenue 奖励
     * @param cost 总消耗
     * @param spin spin次数
     * @param result 本次结果
     * @param time 本次活动耗时
     */
    public void AlyT07_F(String uid,String server,String area,
                       String ggid,String level,String activeType,
                       String activeId,String finishNum,String score,String ranking,
                         String revenue,String cost,String spin,
                         String result,String time) {
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null) {
            map.put("H", server);
        }
        if (area != null) {
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("L", level);
        map.put("ACT_TYPE", activeType);
        map.put("ACT_ID", activeId);
        map.put("ACT_FINISH", finishNum);
        map.put("ACT_SCORE", score);
        map.put("ACT_RANK", ranking);
        map.put("ACT_REVENUE", revenue);
        map.put("ACT_COST", cost);
        map.put("ACT_SPIN", spin);
        map.put("S", result);
        map.put("T", time);
        ALYAnalysis.log("T07_F", map);
    }


    /**
     * 用户关卡或机台确认开始
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param lockId 关卡id/机台id
     * @param virtualCoinNum 虚拟币数量
     * @param level 角色等级
     */
    public void AlyT08(String uid,String server,String area,
                       String ggid,String mode,String lockId,
                       String virtualCoinNum,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G", lockId);
        map.put("A1", virtualCoinNum);
        map.put("L", level);
        ALYAnalysis.log("T08", map);
    }


    /**
     * 用户关卡或机台确认结束点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param lockId 关卡id/机台id
     * @param time 本次机台的前台时长
     * @param level 角色等级
     * @param revenue 虚拟币收益
     * @param cost 虚拟币消耗
     * @param result 本次计算结果
     * @param reason 推出原因
     * @param spin 本次spin次数
     * @param spinMax 本次机台spin总次数
     * @param score 总得分
     * @param isFirst 是否为首次玩次机台 首次加载为1 非首次加载为0
     * @param isItem 是否使用过道具 用过为1 没有为0
     * @param remainingMoney 剩余货币数量
     */
    public void AlyT09(String uid,String server,String area,
                         String ggid,String mode,String lockId,
                         String time, String level,String revenue,
                         String cost,String result,String reason,String spin,
                         String spinMax,String score,String isFirst,
                         String isItem,String remainingMoney) {
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null) {
            map.put("H", server);
        }
        if (area != null) {
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G", lockId);
        map.put("T", time);
        map.put("L", level);
        map.put("M_REVENUE", revenue);
        map.put("M_COST", cost);
        map.put("S", result);
        map.put("O", reason);
        map.put("M_SPIN", spin);
        map.put("M_MAX", spinMax);
        map.put("M_SCORE", score);
        map.put("F", isFirst);
        map.put("M_ITEM", isItem);
        map.put("AFTER_MONEY", remainingMoney);
        ALYAnalysis.log("T09", map);
    }

    /**
     * 用户破产点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param lockId 关卡id/机台id
     * @param virtualCoinNum 虚拟币数量
     * @param level 角色等级
     */
    public void AlyT0B(String uid,String server,String area,
                       String ggid,String mode,String lockId,
                       String virtualCoinNum,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G", lockId);
        map.put("A1", virtualCoinNum);
        map.put("L", level);
        ALYAnalysis.log("T0B", map);
    }


    /**
     * 进入商城点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param isInside 是否在关卡/机台中
     * @param lockId 关卡id/机台id
     * @param entrance 进入商城来源
     * @param level 角色等级
     */
    public void AlyT0C(String uid,String server,String area,
                       String ggid,String mode,
                       String isInside,String lockId,
                       String entrance,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G_IN", isInside);
        map.put("G", lockId);
        map.put("S_ENTRANCE", entrance);
        map.put("L", level);
        ALYAnalysis.log("T0C", map);
    }


    /**
     * 点击付费商品点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param isInside 是否在关卡/机台中
     * @param lockId 关卡id/机台id
     * @param entrance 进入商城来源
     * @param itemName 档位名称
     * @param level 角色等级
     */
    public void AlyT0D(String uid,String server,String area,
                       String ggid,String mode,
                       String isInside,String lockId, String entrance,
                       String itemName,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G_IN", isInside);
        map.put("G", lockId);
        map.put("S_ENTRANCE", entrance);
        map.put("S_ITEM", itemName);
        map.put("L", level);
        ALYAnalysis.log("T0D", map);
    }

    /**
     * 付费成功点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param isInside 是否在关卡/机台中
     * @param lockId 关卡id/机台id
     * @param entrance 进入商城来源
     * @param itemName 档位名称
     * @param id 商品id
     * @param orderId 订单id
     * @param price 订单价格
     * @param virtualCoinNum 虚拟币数量
     * @param isFirst 是否为首次充值 首次加载为1 非首次加载为0
     * @param cyberMoneyNum1 虚拟货币1的数量
     * @param cyberMoneyNum2 虚拟货币2的数量
     * @param unlockNum 累计解锁关卡数量
     * @param overallNum 累计总关卡数量
     * @param roleLevel 角色等级
     * @param vipLevel 用户vip等级
     * @param channel 支付渠道
     */

    public void AlyT0E(String uid,String server,String area,
                       String ggid,String mode,
                       String isInside,String lockId, String entrance,
                       String itemName,String id,String orderId,String price,String virtualCoinNum,
                       String isFirst,String cyberMoneyNum1,String cyberMoneyNum2,
                       String unlockNum,String overallNum,String roleLevel,String vipLevel,
                       String channel
                       ){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G_IN", isInside);
        map.put("G", lockId);
        map.put("S_ENTRANCE", entrance);
        map.put("S_ITEM", itemName);
        map.put("S_ID", id);
        map.put("S_ORDERID", orderId);
        map.put("S_DOLLAR", price);
        map.put("S_A1", virtualCoinNum);
        map.put("F", isFirst);
        map.put("A1", cyberMoneyNum1);
        map.put("A2", cyberMoneyNum2);
        map.put("B1", unlockNum);
        map.put("B2", overallNum);
        map.put("L", roleLevel);
        map.put("V", vipLevel);
        map.put("CHANNEL", channel);
        ALYAnalysis.log("T0E", map);
    }


    /**
     * 在商城停留<=5秒退出 点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param isInside 是否在关卡/机台中
     * @param lockId 关卡id/机台id
     * @param entrance 进入商城来源
     * @param level 角色等级
     */
    public void AlyT0C1(String uid,String server,String area,
                       String ggid,String mode,
                       String isInside,String lockId,
                       String entrance,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G_IN", isInside);
        map.put("G", lockId);
        map.put("S_ENTRANCE", entrance);
        map.put("L", level);
        ALYAnalysis.log("T0C1", map);
    }

    /***
     * 新手引导
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param guide 新手引导阶段
     */
    public void AlyT0A(String uid,String server,String area,
                       String ggid,String guide){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("I_GUIDE", guide);
        ALYAnalysis.log("T0A", map);
    }

    /***
     * 新手引导开始点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     */
    public void AlyT0A_S(String uid,String server,String area, String ggid){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        ALYAnalysis.log("T0A_S", map);
    }


    /***
     * 新手引导开始点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     */
    public void AlyT0A_F(String uid,String server,String area, String ggid){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        ALYAnalysis.log("T0A_F", map);
    }

    /**
     * 货币变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param lockId 关卡id/机台id
     * @param event 对应事件
     * @param moneyType 货币类型
     * @param change 货币改变 增加为0 减少为1
     * @param changeNum 货币改变数量
     * @param remainingMoney 剩余货币数量
     * @param level 用户角色等级
     * @param isPay 是否付费获得 是为1 否为0
     */
    public void AlyT0G(String uid,String server,String area,
                        String ggid,String mode, String lockId,
                        String event,String moneyType,String change,
                        String changeNum,String remainingMoney,
                        String level,String isPay){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G", lockId);
        map.put("EVENT", event);
        map.put("TYPE_MONEY", moneyType);
        map.put("X", change);
        map.put("X_MONEY", changeNum);
        map.put("AFTER_MONEY", remainingMoney);
        map.put("L", level);
        map.put("IS_PAY", isPay);
        ALYAnalysis.log("T0G", map);
    }


    /**
     * 物品变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param lockId 关卡id/机台id
     * @param event 对应事件
     * @param itemId 物品id
     * @param change 物品改变 增加为0 减少为1
     * @param changeNum 物品改变数量
     * @param remainingITEM 剩余物品数量
     * @param level 用户角色等级
     * @param isPay 是否付费获得 是为1 否为0
     */
    public void AlyT0H(String uid,String server,String area,
                       String ggid,String mode, String lockId,
                       String event,String itemId,String change,
                       String changeNum,String remainingITEM,
                       String level,String isPay){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G", lockId);
        map.put("EVENT", event);
        map.put("ITEMID", itemId);
        map.put("X", change);
        map.put("X_ITEM", changeNum);
        map.put("AFTER_ITEM", remainingITEM);
        map.put("L", level);
        map.put("IS_PAY", isPay);
        ALYAnalysis.log("T0H", map);
    }

    /***
     * 用户等级变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param mode 游戏模式
     * @param lockId 关卡id/机台id
     * @param level 角色等级
     */

    public void AlyT0Q(String uid,String server,String area,
                        String ggid,String mode,String lockId, String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("M", mode);
        map.put("G", lockId);
        map.put("L", level);
        ALYAnalysis.log("T0Q", map);
    }


    /**
     * 卡片变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param cardType 卡片类型
     * @param cardList 卡片id组
     * @param change 卡片改变 增加为0 减少为1
     * @param changeNum 卡片改变数量
     * @param remainingCard 剩余卡片数量
     * @param level 用户角色等级
     */
    public void AlyT0_CARD(String uid,String server,String area,
                       String ggid,String cardType, String cardList,
                       String change, String changeNum,String remainingCard,
                       String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("TYPE_CARD", cardType);
        map.put("CARD_LIST", cardList);
        map.put("X", change);
        map.put("X_CARD", changeNum);
        map.put("AFTER_CARD", remainingCard);
        map.put("L", level);
        ALYAnalysis.log("T0_CARD", map);
    }


    /***
     * 任务进度变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param type 任务类型
     * @param id 任务id
     * @param rate 任务进度
     * @param level 用户角色等级
     */
    public void AlyT0_MISSION(String uid,String server,String area,
                           String ggid,String type, String id,
                           String rate,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("MISSION_TYPE", type);
        map.put("MISSION_ID", id);
        map.put("MISSION_RATE", rate);
        map.put("L", level);
        ALYAnalysis.log("T0_MISSION", map);
    }


    /***
     * 活动进度变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param type 活动类型
     * @param id 活动id
     * @param rate 活动进度
     * @param level 用户角色等级
     */
    public void AlyT0_ACTIVITY(String uid,String server,String area,
                              String ggid,String type, String id,
                              String rate,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("ACT_TYPE", type);
        map.put("ACT_ID", id);
        map.put("ACT_RATE", rate);
        map.put("L", level);
        ALYAnalysis.log("T0_ACTIVITY", map);
    }

    /***
     * 在邀请好友界面点击邀请好友
     */
    public void AlyT0L(){
        ALYAnalysis.log("T0L");
    }

    /***
     * 在邀请好友界面成功发送邀请
     */
    public void AlyT0M(){
        ALYAnalysis.log("T0M");
    }

    /***
     * 成功邀请好友进入游戏
     */
    public void AlyT0N(){
        ALYAnalysis.log("T0N");
    }


    /***
     * 好友变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param change 好友数量改变 增加为0 减少为1
     * @param changeUid 被操作的用户角色uid
     * @param remainingFriend 剩余好友数量
     * @param level 用户角色等级
     */
    public void AlyT0_FRIEND(String uid,String server,String area,
                           String ggid,String change, String changeUid,
                             String remainingFriend, String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("X", change);
        map.put("U2", changeUid);
        map.put("AFTER_U2", remainingFriend);
        map.put("L", level);
        ALYAnalysis.log("T0_FRIEND", map);
    }


    /***
     * 公会变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param change 公会数量改变 增加为0 减少为1
     * @param changeId 被执行操作的公会id
     * @param consortiaLevel 公会等级
     * @param level 用户角色等级
     */
    public void AlyT0_CONSORTIA(String uid,String server,String area,
                             String ggid,String change, String changeId,
                             String consortiaLevel, String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("X", change);
        map.put("CONSORTIA_ID", changeId);
        map.put("CONSORTIA_L", consortiaLevel);
        map.put("L", level);
        ALYAnalysis.log("T0_CONSORTIA", map);
    }


    /***
     * email变动点位
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param email 对应邮箱
     */
    public void AlyT0_EMAIL(String uid,String server,String area,
                       String ggid,String email){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("EMAIL", email);
        ALYAnalysis.log("T0_EMAIL", map);
    }


    /***
     * FCM注册 点位
     * @param result 注册结果 成功为0 失败为1 异常为-1
     */
    public void AlyT0I(String result){
        ALYAnalysis.log("T011","S="+result);
    }

    /***
     * FCM通知收到
     */
    public void AlyT0J(){
        ALYAnalysis.log("T0J");
    }

    /***
     * FCM通知点击
     */
    public void AlyT0K(){
        ALYAnalysis.log("T0K");
    }

    /***
     * 激励视频入口展示
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param enter 广告位
     * @param cache 广告缓存状态
     * @param button 按钮可用状态
     * @param reason 不满足展示条件原因
     */
    public void AlyT0R(String uid,String server,String area,
                            String ggid,String enter,String cache,
                       String button,String reason){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("AD_ENTRANCE", enter);
        map.put("AD_CACHE", cache);
        map.put("AD_BUTTON", button);
        map.put("AD_REASON", reason);
        ALYAnalysis.log("T0R", map);
    }

    /***
     * 激励视频入口点击
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param enter 广告位
     * @param cache 广告缓存状态
     * @param button 按钮可用状态
     */
    public void AlyT0O(String uid,String server,String area,
                       String ggid,String enter,String cache, String button){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("AD_ENTRANCE", enter);
        map.put("AD_CACHE", cache);
        map.put("AD_BUTTON", button);
        ALYAnalysis.log("T0O", map);
    }

    /***
     * 激励视频播放情况
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param enter 广告位
     * @param isShow 是否播放并成功领取奖励
     */
    public void AlyT0O1(String uid,String server,String area,
                       String ggid,String enter,String isShow){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("AD_ENTRANCE", enter);
        map.put("RV_FINISH", isShow);
        ALYAnalysis.log("T0O1", map);
    }


    /***
     * 插屏视频入口展示
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param enter 广告位
     * @param cache 广告缓存状态
     * @param button 按钮可用状态
     */
    public void AlyT0S(String uid,String server,String area,
                       String ggid,String enter,String cache, String button){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("AD_ENTRANCE", enter);
        map.put("AD_CACHE", cache);
        map.put("AD_BUTTON", button);
        ALYAnalysis.log("T0S", map);
    }

    /***
     * 插屏广告播放情况
     * @param uid 游戏角色id
     * @param server 所在服务器 （没有传null）
     * @param area 所在区（没有传null)
     * @param ggid 登录sdk生成的id（未接入传null）
     * @param enter 广告位
     * @param showTime 广告播放时长
     */
    public void AlyT0S1(String uid,String server,String area,
                        String ggid,String enter,String showTime){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        if (server != null){
            map.put("H", server);
        }
        if (area != null){
            map.put("Z", area);
        }
        if (ggid != null) {
            map.put("GGID", ggid);
        }
        map.put("AD_ENTRANCE", enter);
        map.put("IS_TIME", showTime);
        ALYAnalysis.log("T0S1", map);
    }


    /***
     * 商城停留>=15秒
     */
    public void AlyT0C3(){
        ALYAnalysis.log("T0C3");
    }


    /***
     * 商城停留>=30秒
     */
    public void AlyT0C4(){
        ALYAnalysis.log("T0C4");
    }

    /***
     * 商城停留>=45秒
     */
    public void AlyT0C5(){
        ALYAnalysis.log("T0C5");
    }

    /***
     * 本次用户充值金额>0 且 <=9.99美元
     */
    public void AlyT0E1(){
        ALYAnalysis.log("T0E1");
    }

    /***
     * 本次用户充值金额>9.99 且 <=19.99美元
     */
    public void AlyT0E2(){
        ALYAnalysis.log("T0E2");
    }

    /***
     * 本次用户充值金额>19.99 且 <=29.99美元
     */
    public void AlyT0E3(){
        ALYAnalysis.log("T0E3");
    }

    /***
     * 本次用户充值金额>29.99 且 <=39.99美元
     */
    public void AlyT0E4(){
        ALYAnalysis.log("T0E4");
    }

    /***
     * 本次用户充值金额>39.99 且 <=49.99美元
     */
    public void AlyT0E5(){
        ALYAnalysis.log("T0E5");
    }

    /***
     * 本次用户充值金额>49.99 且 <=59.99美元
     */
    public void AlyT0E6(){
        ALYAnalysis.log("T0E6");
    }

    /***
     * 本次用户充值金额>59.99 且 <=69.99美元
     */
    public void AlyT0E7(){
        ALYAnalysis.log("T0E7");
    }

    /***
     * 本次用户充值金额>69.99 且 <=79.99美元
     */
    public void AlyT0E8(){
        ALYAnalysis.log("T0E8");
    }

    /***
     * 本次用户充值金额>79.99 且 <=89.99美元
     */
    public void AlyT0E9(){
        ALYAnalysis.log("T0E9");
    }

    /***
     * 本次用户充值金额>89.99 且 <=99.99美元
     */
    public void AlyT0E10(){
        ALYAnalysis.log("T0E10");
    }

    /***
     * 本次用户充值金额>99.99美元
     */
    public void AlyT0E11(){
        ALYAnalysis.log("T0E11");
    }

    /**
     * 用户等级达到10级
     */
    public void AlyT0Q1(){
        ALYAnalysis.log("T0Q1");
    }


    /**
     * 用户等级达到20级
     */
    public void AlyT0Q2(){
        ALYAnalysis.log("T0Q2");
    }

    /**
     * 用户等级达到30级
     */
    public void AlyT0Q3(){
        ALYAnalysis.log("T0Q3");
    }

    /**
     * 用户等级达到40级
     */
    public void AlyT0Q4(){
        ALYAnalysis.log("T0Q4");
    }

    /**
     * 用户等级达到50级
     */
    public void AlyT0Q5(){
        ALYAnalysis.log("T0Q5");
    }

    /**
     * 用户等级达到60级
     */
    public void AlyT0Q6(){
        ALYAnalysis.log("T0Q6");
    }

    /**
     * 用户等级达到70级
     */
    public void AlyT0Q7(){
        ALYAnalysis.log("T0Q7");
    }

    /**
     * 用户等级达到80级
     */
    public void AlyT0Q8(){
        ALYAnalysis.log("T0Q8");
    }

    /**
     * 用户等级达到90级
     */
    public void AlyT0Q9(){
        ALYAnalysis.log("T0Q9");
    }

    /**
     * 用户等级达到100级
     */
    public void AlyT0Q10(){
        ALYAnalysis.log("T0Q10");
    }

    /***
     * 达到新手保护结束等级
     */
    public void AlyT0Q_E(){
        ALYAnalysis.log("T0Q_E");
    }


    /***
     * 达到最早付费等级
     */
    public void AlyT0Q_P(){
        ALYAnalysis.log("T0Q_P");
    }

    /**
     *累计登录次数=1次
     */
    public void AlyT_LoginA(){
        ALYAnalysis.log("T_LoginA");
    }

    /**
     *累计登录次数=5次
     */
    public void AlyT_LoginB(){
        ALYAnalysis.log("T_LoginB");
    }

    /**
     * 首次在商店中停留时间>=15秒
     */
    public void AlyT_PPA(){
        ALYAnalysis.log("T_PPA");
    }

    /**
     * 首次在商店中停留时间>=30秒
     */
    public void AlyT_PPB(){
        ALYAnalysis.log("T_PPB");
    }

    /**
     * 首次任意付费
     */
    public void AlyT_PA(){
        ALYAnalysis.log("T_PA");
    }

    /**
     * 累计付费>=19.9$
     */
    public void AlyT_PB(){
        ALYAnalysis.log("T_PB");
    }

    /**
     * 累计广告展示次数=1次
     */
    public void AlyT_AdsA(){
        ALYAnalysis.log("T_AdsA");
    }

    /**
     * 累计广告展示次数=8次
     */
    public void AlyT_AdsB(){
        ALYAnalysis.log("T_AdsB");
    }

    /***
     * 用户等级达到T0Q_L值时上报
     * @param uid 用户id
     * @param level 用户角色等级
     */
    public void AlyT0Q_L(String uid,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        map.put("L", level);
        ALYAnalysis.log("T0Q_L",map);
    }

    /***
     * 用户等级达到T0Q_M值时上报
     * @param uid 用户id
     * @param level 用户角色等级
     */
    public void AlyT0Q_M(String uid,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        map.put("L", level);
        ALYAnalysis.log("T0Q_M",map);
    }

    /***
     * 用户等级达到T0Q_H值时上报
     * @param uid 用户id
     * @param level 用户角色等级
     */
    public void AlyT0Q_H(String uid,String level){
        HashMap<String, String> map = new HashMap<>();
        map.put("U", uid);
        map.put("L", level);
        ALYAnalysis.log("T0Q_H",map);
    }

    /***
     * 广告收益点位
     * @param country 国家
     * @param unitId 广告的单元id
     * @param type 广告类型（banner，interstitial，rewarded）
     * @param placement 广告的展示场景
     * @param revenue 广告收入金额
     * @param source 聚合广告来源（MAX/IRONSOURCE/ADMOB）
     */

    public void AlyT0_AD_REV(String country,String unitId,String type,
                       String placement,String revenue,String source){
        HashMap<String, String> map = new HashMap<>();
        map.put("COUNTRY", country);
        map.put("AD_UNIT", unitId);
        map.put("AD_TYPE", type);
        map.put("PLACEMENT", placement);
        map.put("REVENUE", revenue);
        map.put("SOURCE", source);
        ALYAnalysis.log("T0_AD_REV", map);
    }

    public String  AlyEventVersion(){
        return "1.0.0";
    }

}
