.class public Lcom/playtika/extensions/concurrency/logging/GraylogSetLogLevel;
.super Ljava/lang/Object;
.source "GraylogSetLogLevel.java"

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
    .locals 3
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 14
    .local v1, "minLevel":Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->valueBy(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 19
    :goto_0
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getInstance()Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->setLogLevel(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;)V

    .line 21
    const/4 v2, 0x0

    return-object v2

    .line 15
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
