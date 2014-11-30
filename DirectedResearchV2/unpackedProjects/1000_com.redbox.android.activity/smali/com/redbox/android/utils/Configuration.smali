.class public Lcom/redbox/android/utils/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/utils/Configuration$URLS;
    }
.end annotation


# static fields
.field public static final DEV_MODE:Z = true

.field public static DOMAIN:Ljava/lang/String; = null

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final LOG_LEVEL:I = 0x2

.field public static final MAX_THUMB_IMAGE_CACHE_SIZE_IN_BYTES:J = 0x100000L

.field public static final OMINITURE_ENABLED:Z = false

.field public static final TODAYS_DATE_MINUS_250_DAYS:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "v0.01a"

.field public static useProductionURL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    .line 28
    sget-boolean v0, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    if-eqz v0, :cond_0

    const-string v0, "www.redbox.com"

    :goto_0
    sput-object v0, Lcom/redbox/android/utils/Configuration;->DOMAIN:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/redbox/android/utils/Utils;->todaysDateMinus250Days()Ljava/lang/String;

    move-result-object v0

    .line 113
    sput-object v0, Lcom/redbox/android/utils/Configuration;->TODAYS_DATE_MINUS_250_DAYS:Ljava/lang/String;

    .line 7
    return-void

    .line 29
    :cond_0
    const-string v0, "qaweb1.rb.internal"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
