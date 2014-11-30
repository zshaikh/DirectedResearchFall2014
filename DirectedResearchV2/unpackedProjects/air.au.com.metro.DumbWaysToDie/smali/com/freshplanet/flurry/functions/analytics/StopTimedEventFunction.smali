.class public Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StopTimedEventFunction"

    sput-object v0, Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;->TAG:Ljava/lang/String;

    const-string v1, "stopping time event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timed event name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->endTimedEvent(Ljava/lang/String;)V

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshplanet/flurry/functions/analytics/StopTimedEventFunction;->TAG:Ljava/lang/String;

    const-string v1, "null event name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
