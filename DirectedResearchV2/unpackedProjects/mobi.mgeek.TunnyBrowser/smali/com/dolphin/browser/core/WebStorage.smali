.class public final Lcom/dolphin/browser/core/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/IWebStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/IWebStorage;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/core/WebStorage;->a:Lcom/dolphin/browser/core/IWebStorage;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->e()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebStorage;->a:Lcom/dolphin/browser/core/IWebStorage;

    .line 36
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/WebStorage;->a:Lcom/dolphin/browser/core/IWebStorage;

    return-object v0
.end method
