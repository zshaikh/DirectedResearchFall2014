.class public Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;
.super Ljava/lang/Object;
.source "DolphinNetworkPLO.java"

# interfaces
.implements Lcom/dolphin/browser/core/INetworkPLO;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

.field private static c:Ldolphin/webkit/PLO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const-class v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->a:Ljava/lang/String;

    .line 15
    sput-object v1, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->b:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

    .line 16
    sput-object v1, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->c:Ldolphin/webkit/PLO;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ldolphin/webkit/PLO;->getInstance()Ldolphin/webkit/PLO;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->c:Ldolphin/webkit/PLO;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 20
    const-class v1, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->a:Ljava/lang/String;

    const-string v2, "[DolphinNetworkPLO::getInstance]"

    invoke-static {v0, v2}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->b:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

    invoke-direct {v0}, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;-><init>()V

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->b:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;

    .line 24
    :cond_0
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->b:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public updatePloData()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPLO;->c:Ldolphin/webkit/PLO;

    invoke-virtual {v0}, Ldolphin/webkit/PLO;->updatePloData()V

    .line 37
    return-void
.end method
