.class public Lcom/playhaven/src/common/PHConfig;
.super Ljava/lang/Object;
.source "PHConfig.java"


# static fields
.field public static api:Ljava/lang/String;

.field public static precache:Z

.field public static runningTests:Z

.field public static sdk_version:Ljava/lang/String;

.field public static secret:Ljava/lang/String;

.field public static token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/playhaven/src/common/PHConfig;->api:Ljava/lang/String;

    .line 22
    sget-object v0, Lv2/com/playhaven/configuration/Version;->PROJECT_VERSION:Ljava/lang/String;

    sput-object v0, Lcom/playhaven/src/common/PHConfig;->sdk_version:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/playhaven/src/common/PHConfig;->precache:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheDeviceInfo(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    return-void
.end method
