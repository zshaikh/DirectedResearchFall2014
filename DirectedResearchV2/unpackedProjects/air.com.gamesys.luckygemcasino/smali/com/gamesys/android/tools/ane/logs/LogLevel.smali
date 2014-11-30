.class public final enum Lcom/gamesys/android/tools/ane/logs/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/tools/ane/logs/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/tools/ane/logs/LogLevel;

.field public static final enum LEVEL_DEBUG:Lcom/gamesys/android/tools/ane/logs/LogLevel;

.field public static final enum LEVEL_ERROR:Lcom/gamesys/android/tools/ane/logs/LogLevel;

.field public static final enum LEVEL_INFO:Lcom/gamesys/android/tools/ane/logs/LogLevel;

.field public static final enum LEVEL_UNKOWN_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

.field public static final enum LEVEL_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

.field public static final enum LEVEL_WARNING:Lcom/gamesys/android/tools/ane/logs/LogLevel;


# instance fields
.field public final logInterface:Lcom/gamesys/android/tools/ane/logs/INativeLoggable;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    const-string v1, "LEVEL_ERROR"

    .line 14
    const-string v2, "LEVEL_ERROR"

    new-instance v3, Lcom/gamesys/android/tools/ane/logs/LogLevel$1;

    invoke-direct {v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel$1;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_ERROR:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    .line 22
    new-instance v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    const-string v1, "LEVEL_WARNING"

    .line 25
    const-string v2, "LEVEL_WARNING"

    new-instance v3, Lcom/gamesys/android/tools/ane/logs/LogLevel$2;

    invoke-direct {v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel$2;-><init>()V

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_WARNING:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    .line 33
    new-instance v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    const-string v1, "LEVEL_INFO"

    .line 36
    const-string v2, "LEVEL_INFO"

    new-instance v3, Lcom/gamesys/android/tools/ane/logs/LogLevel$3;

    invoke-direct {v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel$3;-><init>()V

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_INFO:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    .line 44
    new-instance v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    const-string v1, "LEVEL_DEBUG"

    .line 47
    const-string v2, "LEVEL_DEBUG"

    new-instance v3, Lcom/gamesys/android/tools/ane/logs/LogLevel$4;

    invoke-direct {v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel$4;-><init>()V

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_DEBUG:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    .line 55
    new-instance v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    const-string v1, "LEVEL_VERBOSE"

    .line 58
    const-string v2, "LEVEL_VERBOSE"

    new-instance v3, Lcom/gamesys/android/tools/ane/logs/LogLevel$5;

    invoke-direct {v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel$5;-><init>()V

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/gamesys/android/tools/ane/logs/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    .line 66
    new-instance v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    const-string v1, "LEVEL_UNKOWN_VERBOSE"

    const/4 v2, 0x5

    .line 69
    const-string v3, "LEVEL_UNKOWN_VERBOSE"

    new-instance v4, Lcom/gamesys/android/tools/ane/logs/LogLevel$6;

    invoke-direct {v4}, Lcom/gamesys/android/tools/ane/logs/LogLevel$6;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gamesys/android/tools/ane/logs/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_UNKOWN_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/gamesys/android/tools/ane/logs/LogLevel;

    sget-object v1, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_ERROR:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_WARNING:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_INFO:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_DEBUG:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_UNKOWN_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->ENUM$VALUES:[Lcom/gamesys/android/tools/ane/logs/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/tools/ane/logs/INativeLoggable;)V
    .locals 0
    .param p3, "levelName"    # Ljava/lang/String;
    .param p4, "logFunction"    # Lcom/gamesys/android/tools/ane/logs/INativeLoggable;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->name:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->logInterface:Lcom/gamesys/android/tools/ane/logs/INativeLoggable;

    .line 92
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/logs/LogLevel;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/gamesys/android/tools/ane/logs/LogLevel;->values()[Lcom/gamesys/android/tools/ane/logs/LogLevel;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 117
    sget-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->LEVEL_UNKOWN_VERBOSE:Lcom/gamesys/android/tools/ane/logs/LogLevel;

    :cond_0
    return-object v0

    .line 111
    :cond_1
    aget-object v0, v2, v1

    .line 112
    .local v0, "ll":Lcom/gamesys/android/tools/ane/logs/LogLevel;
    iget-object v4, v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/logs/LogLevel;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/tools/ane/logs/LogLevel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->ENUM$VALUES:[Lcom/gamesys/android/tools/ane/logs/LogLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/tools/ane/logs/LogLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public logMe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/logs/LogLevel;->logInterface:Lcom/gamesys/android/tools/ane/logs/INativeLoggable;

    invoke-interface {v0, p1, p2}, Lcom/gamesys/android/tools/ane/logs/INativeLoggable;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
