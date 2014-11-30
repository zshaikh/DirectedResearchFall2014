.class public final enum Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
.super Ljava/lang/Enum;
.source "GraylogLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALERT:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum CRITICAL:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum EMERGENCY:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field private static final synthetic ENUM$VALUES:[Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum ERROR:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum INFO:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum NOTICE:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public static final enum WARNING:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "EMERGENCY"

    invoke-direct {v0, v1, v4, v4}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->EMERGENCY:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v5, v5}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ALERT:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "CRITICAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->CRITICAL:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ERROR:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v8, v8}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->WARNING:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "NOTICE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->NOTICE:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "INFO"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->INFO:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->EMERGENCY:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ALERT:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->CRITICAL:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ERROR:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v1, v0, v7

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->WARNING:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->NOTICE:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->INFO:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    aput-object v2, v0, v1

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ENUM$VALUES:[Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->value:I

    .line 34
    return-void
.end method

.method public static valueBy(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->values()[Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    move-result-object v1

    .line 38
    .local v1, "values":[Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 43
    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    :goto_1
    return-object v2

    .line 38
    :cond_0
    aget-object v0, v1, v3

    .line 39
    .local v0, "level":Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    iget v4, v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 40
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    return-object p0
.end method

.method public static values()[Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ENUM$VALUES:[Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    array-length v1, v0

    new-array v2, v1, [Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->value:I

    return v0
.end method
