.class public Lcom/playtika/extensions/flurry/FlurryStartSessionFunction;
.super Ljava/lang/Object;
.source "FlurryStartSessionFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x0

    const-string v8, "FLURRY"

    .line 18
    if-eqz p2, :cond_0

    array-length v5, p2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 20
    :cond_0
    const-string v5, "FLURRY"

    const-string v5, "Application key missed!"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 38
    :goto_0
    return-object v5

    .line 26
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "appKey":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/flurry/FlurryExtensionContext;

    move-object v2, v0

    .line 29
    .local v2, "ctx":Lcom/playtika/extensions/flurry/FlurryExtensionContext;
    invoke-virtual {v2}, Lcom/playtika/extensions/flurry/FlurryExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 31
    .local v4, "tmp":Landroid/content/Context;
    invoke-static {v4, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "appKey":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/playtika/extensions/flurry/FlurryExtensionContext;
    .end local v4    # "tmp":Landroid/content/Context;
    :goto_1
    move-object v5, v7

    .line 38
    goto :goto_0

    .line 33
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 35
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "FLURRY"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
