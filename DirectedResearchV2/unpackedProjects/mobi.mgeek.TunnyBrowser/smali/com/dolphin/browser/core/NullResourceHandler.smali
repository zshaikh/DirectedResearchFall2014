.class public final Lcom/dolphin/browser/core/NullResourceHandler;
.super Ljava/lang/Object;
.source "NullResourceHandler.java"

# interfaces
.implements Lcom/dolphin/browser/core/IResourceHandler;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static final a:Lcom/dolphin/browser/core/NullResourceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/dolphin/browser/core/NullResourceHandler;

    invoke-direct {v0}, Lcom/dolphin/browser/core/NullResourceHandler;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/NullResourceHandler;->a:Lcom/dolphin/browser/core/NullResourceHandler;

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

.method public static getInstance()Lcom/dolphin/browser/core/IResourceHandler;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/dolphin/browser/core/NullResourceHandler;->a:Lcom/dolphin/browser/core/NullResourceHandler;

    return-object v0
.end method


# virtual methods
.method public updateSettings()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
