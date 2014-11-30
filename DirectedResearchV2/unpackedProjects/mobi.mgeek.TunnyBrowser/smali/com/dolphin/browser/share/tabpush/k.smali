.class public Lcom/dolphin/browser/share/tabpush/k;
.super Landroid/widget/FrameLayout;
.source "TabPushShareView.java"

# interfaces
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private a:Lcom/dolphin/browser/share/b/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/dolphin/browser/share/tabpush/k;->a:Lcom/dolphin/browser/share/b/j;

    .line 23
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/k;->c()V

    .line 24
    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/k;->removeAllViews()V

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
