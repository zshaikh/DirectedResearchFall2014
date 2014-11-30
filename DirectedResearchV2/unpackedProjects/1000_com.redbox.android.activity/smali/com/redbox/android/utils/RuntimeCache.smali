.class public Lcom/redbox/android/utils/RuntimeCache;
.super Ljava/lang/Object;
.source "RuntimeCache.java"


# static fields
.field public static KEY:Ljava/lang/String;

.field public static LOGGED_IN:Z

.field public static isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    .line 5
    sput-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 6
    sput-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
