.class public Lcom/AdX/tag/AdXGetReferralFunction;
.super Ljava/lang/Object;
.source "AdXGetReferralFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 31
    const/4 v5, 0x0

    .line 33
    .local v5, result:Lcom/adobe/fre/FREObject;
    const-string v6, "AdXGetReferralFunction"

    const-string v7, "call"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/AdX/tag/AdXExtensionContext;

    move-object v2, v0

    .line 39
    .local v2, adxExtContext:Lcom/AdX/tag/AdXExtensionContext;
    :try_start_0
    invoke-virtual {v2}, Lcom/AdX/tag/AdXExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 40
    .local v1, a:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/AdX/tag/AdXConnect;->getAdXReferral(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, referral:Ljava/lang/String;
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 49
    .end local v1           #a:Landroid/app/Activity;
    .end local v4           #referral:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 44
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 46
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "AdXFunction"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
