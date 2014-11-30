.class public Lcom/playtika/extensions/tools/ToolsGetCarrier;
.super Ljava/lang/Object;
.source "ToolsGetCarrier.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "params"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    .local v0, "ctx":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 18
    .local v2, "manager":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 20
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 24
    :goto_0
    return-object v3

    .line 21
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 22
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
