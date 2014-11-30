.class public final enum Lcom/somo/apptimiser/SomoEvent$EventFields;
.super Ljava/lang/Enum;
.source "SomoEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/somo/apptimiser/SomoEvent$EventFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum ANDROID_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum APPLICATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum CONNECTION:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum DEVICE_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum DEVICE_PLATFORM:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum EVENT_TYPE:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum HANDSET:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum INFO:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum INSTALLATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum LOCATION:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum OPERATOR:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum OS:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum REFERRER:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum SOURCE:Lcom/somo/apptimiser/SomoEvent$EventFields;

.field public static final enum SOURCE_SITE:Lcom/somo/apptimiser/SomoEvent$EventFields;


# instance fields
.field private final mField:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "EVENT_TYPE"

    const-string v2, "event_type"

    invoke-direct {v0, v1, v4, v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TYPE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 41
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "APPLICATION_ID"

    const-string v2, "application_id"

    invoke-direct {v0, v1, v5, v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->APPLICATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 42
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "DEVICE_ID"

    const-string v2, "device_id"

    invoke-direct {v0, v1, v6, v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 43
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "DEVICE_PLATFORM"

    const-string v2, "device_platform"

    invoke-direct {v0, v1, v7, v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_PLATFORM:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 44
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "EVENT_TIME"

    const-string v2, "event_time"

    invoke-direct {v0, v1, v8, v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 45
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "LOCATION"

    const/4 v2, 0x5

    const-string v3, "location"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->LOCATION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 46
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "SOURCE"

    const/4 v2, 0x6

    const-string v3, "source"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 47
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "SOURCE_SITE"

    const/4 v2, 0x7

    const-string v3, "source_site"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE_SITE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 48
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "REFERRER"

    const/16 v2, 0x8

    const-string v3, "referrer"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->REFERRER:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 49
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "INFO"

    const/16 v2, 0x9

    const-string v3, "info"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->INFO:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 50
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "ANDROID_ID"

    const/16 v2, 0xa

    const-string v3, "android_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->ANDROID_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 51
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "HANDSET"

    const/16 v2, 0xb

    const-string v3, "handset"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->HANDSET:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 52
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "OS"

    const/16 v2, 0xc

    const-string v3, "os"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->OS:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 53
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "CONNECTION"

    const/16 v2, 0xd

    const-string v3, "connection"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->CONNECTION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 54
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "OPERATOR"

    const/16 v2, 0xe

    const-string v3, "operator"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->OPERATOR:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 55
    new-instance v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    const-string v1, "INSTALLATION_ID"

    const/16 v2, 0xf

    const-string v3, "installation_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$EventFields;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->INSTALLATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/somo/apptimiser/SomoEvent$EventFields;

    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TYPE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->APPLICATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_PLATFORM:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v1, v0, v7

    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->LOCATION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE_SITE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->REFERRER:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->INFO:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->ANDROID_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->HANDSET:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->OS:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->CONNECTION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->OPERATOR:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->INSTALLATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->$VALUES:[Lcom/somo/apptimiser/SomoEvent$EventFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/somo/apptimiser/SomoEvent$EventFields;->mField:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$EventFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/somo/apptimiser/SomoEvent$EventFields;

    return-object v0
.end method

.method public static values()[Lcom/somo/apptimiser/SomoEvent$EventFields;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->$VALUES:[Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v0}, [Lcom/somo/apptimiser/SomoEvent$EventFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/somo/apptimiser/SomoEvent$EventFields;

    return-object v0
.end method


# virtual methods
.method field()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$EventFields;->mField:Ljava/lang/String;

    return-object v0
.end method
