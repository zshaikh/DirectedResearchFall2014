.class public final enum Lcom/gamesys/android/googleanalytics/fwk/GAFields;
.super Ljava/lang/Enum;
.source "GAFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gamesys/android/googleanalytics/fwk/GAFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum ITEM_PURCHASE:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum SCREEN_VIEW:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum SESSION_CLOSING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum SESSION_OPENING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum TIMER_EVENT:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum TRANSACTION:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

.field public static final enum UNKNOWN:Lcom/gamesys/android/googleanalytics/fwk/GAFields;


# instance fields
.field public final actionScriptValue:Ljava/lang/String;

.field private final paramtersGenerator:Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;


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
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "TRANSACTION"

    .line 23
    const-string v2, "TRANSACTION"

    new-instance v3, Lcom/gamesys/android/googleanalytics/fwk/GAFields$1;

    invoke-direct {v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$1;-><init>()V

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->TRANSACTION:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 54
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "ITEM_PURCHASE"

    .line 67
    const-string v2, "ITEM_PURCHASE"

    new-instance v3, Lcom/gamesys/android/googleanalytics/fwk/GAFields$2;

    invoke-direct {v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$2;-><init>()V

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->ITEM_PURCHASE:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 101
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "TIMER_EVENT"

    .line 111
    const-string v2, "TIMER_EVENT"

    new-instance v3, Lcom/gamesys/android/googleanalytics/fwk/GAFields$3;

    invoke-direct {v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$3;-><init>()V

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->TIMER_EVENT:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 134
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "SESSION_OPENING"

    .line 142
    const-string v2, "SESSION_OPENING"

    new-instance v3, Lcom/gamesys/android/googleanalytics/fwk/GAFields$4;

    invoke-direct {v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$4;-><init>()V

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SESSION_OPENING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 164
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "SESSION_CLOSING"

    .line 165
    const-string v2, "SESSION_OPENING"

    new-instance v3, Lcom/gamesys/android/googleanalytics/fwk/GAFields$5;

    invoke-direct {v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$5;-><init>()V

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SESSION_CLOSING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 178
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "SCREEN_VIEW"

    const/4 v2, 0x5

    .line 182
    const-string v3, "SCREEN_VIEW"

    new-instance v4, Lcom/gamesys/android/googleanalytics/fwk/GAFields$6;

    invoke-direct {v4}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$6;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SCREEN_VIEW:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 199
    new-instance v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    .line 202
    const-string v3, "UNKNOWN"

    new-instance v4, Lcom/gamesys/android/googleanalytics/fwk/GAFields$7;

    invoke-direct {v4}, Lcom/gamesys/android/googleanalytics/fwk/GAFields$7;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->UNKNOWN:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    sget-object v1, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->TRANSACTION:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->ITEM_PURCHASE:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->TIMER_EVENT:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SESSION_OPENING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v1, v0, v8

    sget-object v1, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SESSION_CLOSING:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->SCREEN_VIEW:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->UNKNOWN:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->ENUM$VALUES:[Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;)V
    .locals 0
    .param p3, "asValue"    # Ljava/lang/String;
    .param p4, "paramGenerator"    # Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 223
    iput-object p3, p0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->actionScriptValue:Ljava/lang/String;

    .line 224
    iput-object p4, p0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->paramtersGenerator:Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;

    .line 225
    return-void
.end method

.method public static getFieldsByName(Ljava/lang/String;)Lcom/gamesys/android/googleanalytics/fwk/GAFields;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {}, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->values()[Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 246
    sget-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->UNKNOWN:Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    :cond_0
    return-object v0

    .line 240
    :cond_1
    aget-object v0, v2, v1

    .line 241
    .local v0, "gaf":Lcom/gamesys/android/googleanalytics/fwk/GAFields;
    iget-object v4, v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->actionScriptValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gamesys/android/googleanalytics/fwk/GAFields;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    return-object v0
.end method

.method public static values()[Lcom/gamesys/android/googleanalytics/fwk/GAFields;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->ENUM$VALUES:[Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    array-length v1, v0

    new-array v2, v1, [Lcom/gamesys/android/googleanalytics/fwk/GAFields;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public varargs getGAParametersMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/gamesys/android/googleanalytics/fwk/GAFields;->paramtersGenerator:Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;

    invoke-interface {v0, p1}, Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;->generateParameter([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
