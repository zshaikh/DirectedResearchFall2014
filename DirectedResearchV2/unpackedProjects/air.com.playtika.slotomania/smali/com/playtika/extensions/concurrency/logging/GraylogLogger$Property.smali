.class public final enum Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
.super Ljava/lang/Enum;
.source "GraylogLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum CODE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum DEVICE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field private static final synthetic ENUM$VALUES:[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum FACILITY:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum FILE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum FULL_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum LEVEL:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum LINE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum OS_TYPE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum OS_VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum SHORT_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum SN_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum USER_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

.field public static final enum VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "FACILITY"

    const-string v2, "facility"

    invoke-direct {v0, v1, v4, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FACILITY:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "SHORT_MSG"

    const-string v2, "msg_short"

    invoke-direct {v0, v1, v5, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SHORT_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "FULL_MSG"

    const-string v2, "msg_full"

    invoke-direct {v0, v1, v6, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FULL_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "LEVEL"

    const-string v2, "level"

    invoke-direct {v0, v1, v7, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LEVEL:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "FILE"

    const-string v2, "file"

    invoke-direct {v0, v1, v8, v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FILE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "LINE"

    const/4 v2, 0x5

    const-string v3, "line"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LINE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "ACTION"

    const/4 v2, 0x6

    .line 34
    const-string v3, "action"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ACTION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "UDID"

    const/4 v2, 0x7

    const-string v3, "udid"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "VERSION"

    const/16 v2, 0x8

    const-string v3, "client_version"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "USER_ID"

    const/16 v2, 0x9

    const-string v3, "user_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->USER_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "SN_ID"

    const/16 v2, 0xa

    const-string v3, "sn_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SN_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "DEVICE"

    const/16 v2, 0xb

    const-string v3, "device"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->DEVICE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "CODE"

    const/16 v2, 0xc

    .line 35
    const-string v3, "code"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->CODE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "OS_TYPE"

    const/16 v2, 0xd

    const-string v3, "os_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_TYPE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    const-string v1, "OS_VERSION"

    const/16 v2, 0xe

    const-string v3, "os_version"

    invoke-direct {v0, v1, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FACILITY:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SHORT_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FULL_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v1, v0, v6

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LEVEL:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FILE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LINE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ACTION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->USER_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SN_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->DEVICE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->CODE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_TYPE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ENUM$VALUES:[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueBy(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->values()[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    move-result-object v1

    .line 41
    .local v1, "values":[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 46
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 41
    :cond_0
    aget-object v0, v1, v3

    .line 42
    .local v0, "property":Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    iget-object v4, v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 43
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    return-object p0
.end method

.method public static values()[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ENUM$VALUES:[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    array-length v1, v0

    new-array v2, v1, [Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->value:Ljava/lang/String;

    return-object v0
.end method
