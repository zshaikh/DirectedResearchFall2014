.class public final Lcom/dolphin/browser/core/NullNetworkPredictor;
.super Ljava/lang/Object;
.source "NullNetworkPredictor.java"

# interfaces
.implements Lcom/dolphin/browser/core/INetworkPredictor;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static final a:Lcom/dolphin/browser/core/NullNetworkPredictor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/dolphin/browser/core/NullNetworkPredictor;

    invoke-direct {v0}, Lcom/dolphin/browser/core/NullNetworkPredictor;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/NullNetworkPredictor;->a:Lcom/dolphin/browser/core/NullNetworkPredictor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/INetworkPredictor;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/dolphin/browser/core/NullNetworkPredictor;->a:Lcom/dolphin/browser/core/NullNetworkPredictor;

    return-object v0
.end method


# virtual methods
.method public anticipateAddressBar(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public cancelPrefetchWebPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public preconnect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public varargs prefetchDNS([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public prefetchWebPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public save()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
