.class public Lcom/playtika/extensions/tools/ToolsHasMobileNetworkFunction;
.super Ljava/lang/Object;
.source "ToolsHasMobileNetworkFunction.java"

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
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    const/4 v3, 0x0

    .line 21
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    .local v1, "ctx":Landroid/content/Context;
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 23
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 25
    .local v2, "network":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 31
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :goto_1
    return-object v3

    .line 25
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 27
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
