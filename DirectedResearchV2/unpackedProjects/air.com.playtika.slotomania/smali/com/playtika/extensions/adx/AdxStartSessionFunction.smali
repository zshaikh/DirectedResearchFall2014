.class public Lcom/playtika/extensions/adx/AdxStartSessionFunction;
.super Ljava/lang/Object;
.source "AdxStartSessionFunction.java"

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
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v8, 0x0

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/adx/AdxExtensionContext;

    move-object v4, v0

    .line 14
    .local v4, "ctx":Lcom/playtika/extensions/adx/AdxExtensionContext;
    invoke-virtual {v4}, Lcom/playtika/extensions/adx/AdxExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 17
    .local v2, "appContext":Landroid/content/Context;
    invoke-static {v2, v8, v8}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    move-result-object v1

    .line 18
    .local v1, "adx":Lcom/AdX/tag/AdXConnect;
    const/4 v6, 0x0

    .line 19
    .local v6, "result":Lcom/adobe/fre/FREObject;
    if-nez v1, :cond_0

    .line 20
    const/4 v3, 0x0

    .line 25
    .local v3, "connected":Z
    :goto_0
    :try_start_0
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 30
    :goto_1
    return-object v6

    .line 22
    .end local v3    # "connected":Z
    :cond_0
    const/4 v3, 0x1

    .restart local v3    # "connected":Z
    goto :goto_0

    .line 26
    :catch_0
    move-exception v5

    .line 27
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
