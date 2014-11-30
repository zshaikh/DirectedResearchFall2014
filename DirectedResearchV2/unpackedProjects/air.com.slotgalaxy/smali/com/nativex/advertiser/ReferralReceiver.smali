.class public Lcom/nativex/advertiser/ReferralReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReferralReceiver.java"


# static fields
.field private static final EXPECTED_PARAMETERS:[Ljava/lang/String;

.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "ReferralParamsFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "utm_medium"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "utm_term"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "utm_content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "utm_campaign"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/advertiser/ReferralReceiver;->EXPECTED_PARAMETERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static removeReferralParams(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string v6, "ReferralParamsFile"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 132
    .local v5, "storage":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v0, Lcom/nativex/advertiser/ReferralReceiver;->EXPECTED_PARAMETERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 135
    .local v3, "key":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method public static retrieveReferralParams(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 146
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "ReferralParamsFile"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 149
    .local v5, "storage":Landroid/content/SharedPreferences;
    sget-object v0, Lcom/nativex/advertiser/ReferralReceiver;->EXPECTED_PARAMETERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 150
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v5, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 152
    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v9

    .line 158
    :goto_1
    return-object v7

    :cond_2
    move-object v7, v4

    goto :goto_1
.end method

.method public static storeReferralParams(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "ReferralParamsFile"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 113
    .local v5, "storage":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 115
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v0, Lcom/nativex/advertiser/ReferralReceiver;->EXPECTED_PARAMETERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 116
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 117
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v11, "utm_campaign"

    .line 46
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 47
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 48
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 51
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v9, "referralParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 94
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v9    # "referralParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/nativex/advertiser/ReferralReceiver;
    :cond_1
    :goto_0
    return-void

    .line 58
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v9    # "referralParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/nativex/advertiser/ReferralReceiver;
    :cond_2
    const-string v11, "referrer"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "referrer":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 63
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Referral Information Encoded: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 66
    invoke-static {v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Referral Information Decoded: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 71
    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "params":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v7, v0, v3

    .line 73
    .local v7, "param":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "pair":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 75
    const/4 v11, 0x0

    aget-object v11, v6, v11

    const/4 v12, 0x1

    aget-object v12, v6, v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    .end local v6    # "pair":[Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "packageName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; Referral Package Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "utm_campaign"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/advertiser/ReferralReceiver;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 84
    const-string v11, "utm_campaign"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 88
    const-string v11, "utm_campaign"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 89
    invoke-static {p1, v9}, Lcom/nativex/advertiser/ReferralReceiver;->storeReferralParams(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "params":[Ljava/lang/String;
    .end local v9    # "referralParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "referrer":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "ReferralReceiver: Exception caught"

    invoke-static {v11, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
