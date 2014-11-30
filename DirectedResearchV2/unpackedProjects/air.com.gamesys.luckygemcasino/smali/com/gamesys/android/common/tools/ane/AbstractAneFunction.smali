.class public abstract Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.super Ljava/lang/Object;
.source "AbstractAneFunction.java"

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
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 19
    const-string v3, "NotFound-Internal"

    .line 21
    .local v3, "extId":Ljava/lang/String;
    instance-of v7, p1, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    if-eqz v7, :cond_1

    move-object v7, p1

    .line 22
    check-cast v7, Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-virtual {v7}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getExtensionIdendtifer()Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsExtension;->getContext(Ljava/lang/String;Landroid/app/Activity;)Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;

    move-result-object v0

    .line 30
    .local v0, "ctx":Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 31
    .local v5, "startTime":J
    invoke-virtual {p0, p1, p2}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;->callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 32
    .local v4, "result":Lcom/adobe/fre/FREObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v5

    .line 34
    .local v1, "duration":J
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;->trackMe()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "auto-log"

    invoke-virtual {v0, v3, v7, v8, v9}, Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;->sendTimerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-object v4

    .line 24
    .end local v0    # "ctx":Lcom/gamesys/android/googleanalytics/ane/GoogleAnalyticsContext;
    .end local v1    # "duration":J
    .end local v4    # "result":Lcom/adobe/fre/FREObject;
    .end local v5    # "startTime":J
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "This context \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 25
    const-string v9, "\' is not an instance of AbstractContext => time auto-log disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end method

.method public abstract trackMe()Z
.end method
