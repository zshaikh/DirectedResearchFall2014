.class public Lcom/playtika/extensions/chartboost/ChartboostInitFunction;
.super Ljava/lang/Object;
.source "ChartboostInitFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "params"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v5, 0x0

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "appId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 16
    .local v1, "appSignature":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 17
    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    .line 22
    .local v2, "cb":Lcom/chartboost/sdk/Chartboost;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 23
    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->startSession()V

    .line 24
    return-object v5

    .line 18
    .end local v2    # "cb":Lcom/chartboost/sdk/Chartboost;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 19
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
