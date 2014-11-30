.class public Lcom/playtika/extensions/tools/ToolsGetIMEI;
.super Ljava/lang/Object;
.source "ToolsGetIMEI.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 20
    .local v2, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "ctx":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 22
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 24
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 30
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "imei":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v2

    .line 26
    :catch_0
    move-exception v4

    goto :goto_0
.end method
