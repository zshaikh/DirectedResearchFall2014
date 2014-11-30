.class public Lcom/dolphin/browser/addons/bb;
.super Lcom/dolphin/browser/addons/ah;
.source "TabImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/ITab;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/addons/ah;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/addons/bb;->a:Lcom/dolphin/browser/core/ITab;

    .line 30
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;)I
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/addons/bb;->a:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/dolphin/browser/addons/ag;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/addons/bb;->a:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/addons/bb;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bb;-><init>(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0
.end method

.method public c()Lcom/dolphin/browser/addons/as;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/dolphin/browser/addons/WebViewImpl;

    iget-object v1, p0, Lcom/dolphin/browser/addons/bb;->a:Lcom/dolphin/browser/core/ITab;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/addons/bb;->a:Lcom/dolphin/browser/core/ITab;

    invoke-static {v0}, Lcom/dolphin/browser/addons/bb;->a(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    return v0
.end method
