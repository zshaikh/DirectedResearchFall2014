.class public final Lcom/dolphin/browser/core/NullNetworkPLO;
.super Ljava/lang/Object;
.source "NullNetworkPLO.java"

# interfaces
.implements Lcom/dolphin/browser/core/INetworkPLO;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/dolphin/browser/core/NullNetworkPLO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/dolphin/browser/core/NullNetworkPLO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/NullNetworkPLO;->a:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/dolphin/browser/core/NullNetworkPLO;

    invoke-direct {v0}, Lcom/dolphin/browser/core/NullNetworkPLO;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/NullNetworkPLO;->b:Lcom/dolphin/browser/core/NullNetworkPLO;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/INetworkPLO;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/dolphin/browser/core/NullNetworkPLO;->b:Lcom/dolphin/browser/core/NullNetworkPLO;

    return-object v0
.end method


# virtual methods
.method public updatePloData()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
