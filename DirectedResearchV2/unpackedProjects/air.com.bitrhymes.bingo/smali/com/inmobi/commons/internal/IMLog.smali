.class public Lcom/inmobi/commons/internal/IMLog;
.super Ljava/lang/Object;
.source "IMLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;
    }
.end annotation


# static fields
.field private static synthetic a:[I

.field protected static debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    sput-object v0, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 7
    sget-object v0, Lcom/inmobi/commons/internal/IMLog;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->values()[Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/inmobi/commons/internal/IMLog;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/inmobi/commons/internal/IMLog;->a()[I

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-static {p0, p1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLogLevel()Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    return-object v0
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-virtual {v1}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_0
    return-void
.end method

.method public static setInternalLogLevel(Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/inmobi/commons/internal/IMLog;->debugLevel:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    .line 27
    return-void
.end method
