.class public abstract Lcom/dolphin/browser/provider/BaseProvider;
.super Landroid/content/ContentProvider;
.source "BaseProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/BaseProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/AppContext;->a(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    return v0
.end method
