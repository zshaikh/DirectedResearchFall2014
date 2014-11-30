.class public Lcom/playtika/extensions/flurry/FlurryLogEventFunction;
.super Ljava/lang/Object;
.source "FlurryLogEventFunction.java"

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
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    const-string v5, "FLURRY"

    .line 17
    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 19
    :cond_0
    const-string v2, "FLURRY"

    const-string v2, "Not enough params!"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 33
    :goto_0
    return-object v2

    .line 25
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "text":Ljava/lang/String;
    :goto_1
    move-object v2, v4

    .line 33
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FLURRY"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
