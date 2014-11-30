.class public Lcom/google/ads/m;
.super Lcom/google/ads/e/ac;
.source "ProGuard"


# static fields
.field private static final d:Lcom/google/ads/m;


# instance fields
.field public final a:Lcom/google/ads/e/ag;

.field public final b:Lcom/google/ads/e/af;

.field public final c:Lcom/google/ads/e/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/ads/m;

    invoke-direct {v0}, Lcom/google/ads/m;-><init>()V

    sput-object v0, Lcom/google/ads/m;->d:Lcom/google/ads/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/ads/e/ac;-><init>()V

    .line 103
    new-instance v0, Lcom/google/ads/e/ag;

    const-string v1, "marketPackages"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/ag;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->a:Lcom/google/ads/e/ag;

    .line 106
    new-instance v0, Lcom/google/ads/e/af;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/m$a;

    invoke-direct {v2}, Lcom/google/ads/m$a;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->b:Lcom/google/ads/e/af;

    .line 110
    new-instance v0, Lcom/google/ads/e/af;

    const-string v1, "uiHandler"

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/e/af;-><init>(Lcom/google/ads/e/ac;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->c:Lcom/google/ads/e/af;

    .line 118
    return-void
.end method

.method public static a()Lcom/google/ads/m;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/ads/m;->d:Lcom/google/ads/m;

    return-object v0
.end method
