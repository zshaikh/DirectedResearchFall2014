.class public Lcom/playtika/extensions/payments/PaymentsLogger;
.super Ljava/lang/Object;
.source "PaymentsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/payments/PaymentsLogger$ActionLogicStatus;,
        Lcom/playtika/extensions/payments/PaymentsLogger$Actions;
    }
.end annotation


# static fields
.field private static final FACILITY:Ljava/lang/String; = "vs-mobile-payments"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .param p0, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Payments: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "shortMessage":Ljava/lang/String;
    move-object v3, v2

    .line 37
    .local v3, "fullMessage":Ljava/lang/String;
    invoke-static {p1}, Lcom/playtika/extensions/payments/PaymentsLogger;->addCommonParams(Ljava/util/HashMap;)V

    .line 39
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getInstance()Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    move-result-object v0

    const-string v1, "vs-mobile-payments"

    sget-object v4, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->WARNING:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v9, 0x1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->logFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Z)V

    .line 40
    return-void
.end method

.method private static addCommonParams(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/playtika/extensions/data/RuntimeVariablesContext;->INSTANCE:Lcom/playtika/extensions/data/RuntimeVariablesContext;

    .line 45
    .local v1, "runtimeVariablesContext":Lcom/playtika/extensions/data/RuntimeVariablesContext;
    const-string v4, "SocialConfig.user_id"

    invoke-virtual {v1, v4}, Lcom/playtika/extensions/data/RuntimeVariablesContext;->getStringVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "userId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 48
    const-string v3, ""

    .line 50
    :cond_0
    const-string v4, "ServerConfig.session_id"

    invoke-virtual {v1, v4}, Lcom/playtika/extensions/data/RuntimeVariablesContext;->getStringVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "sessionId":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 53
    const-string v2, ""

    .line 55
    :cond_1
    const-string v4, "MobilePlatformUtil.AndroidMarketId"

    invoke-virtual {v1, v4}, Lcom/playtika/extensions/data/RuntimeVariablesContext;->getStringVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "paySys":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 58
    const-string v0, ""

    .line 61
    :cond_2
    const-string v4, "db_id"

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v4, "session_id"

    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v4, "pay_sys"

    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v4, "facility"

    const-string v5, "vs-mobile-payments"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
