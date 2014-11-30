.class public Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LogEventFunction"

    sput-object v0, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v0, p2, v3

    if-eqz v0, :cond_1

    aget-object v0, p2, v4

    if-eqz v0, :cond_1

    aget-object p0, p2, v3

    check-cast p0, Lcom/adobe/fre/FREArray;

    aget-object v0, p2, v4

    check-cast v0, Lcom/adobe/fre/FREArray;

    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    invoke-virtual {p0, v5, v6}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v0, v5, v6}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-object v1, v12

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    move-object v1, v12

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    move-object v1, v12

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v1, v12

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v12

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;->TAG:Ljava/lang/String;

    const-string v3, "log event with params"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_3
    return-object v12

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    aget-object v0, p2, v3

    if-eqz v0, :cond_2

    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;->TAG:Ljava/lang/String;

    const-string v3, "parameterValues is null while parameterKeys is not"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    aget-object v0, p2, v4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;->TAG:Ljava/lang/String;

    const-string v3, "parameterKeys is null while parameterValues is not"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/LogEventFunction;->TAG:Ljava/lang/String;

    const-string v2, "log event without params"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/freshplanet/flurry/Extension;->TAG:Ljava/lang/String;

    const-string v1, "null event name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
