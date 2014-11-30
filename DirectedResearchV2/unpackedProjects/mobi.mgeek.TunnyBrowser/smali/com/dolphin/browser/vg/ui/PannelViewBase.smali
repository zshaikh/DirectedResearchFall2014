.class public abstract Lcom/dolphin/browser/vg/ui/PannelViewBase;
.super Landroid/widget/RelativeLayout;
.source "PannelViewBase.java"


# instance fields
.field private a:Lcom/dolphin/browser/vg/ui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final a(Lcom/dolphin/browser/vg/ui/a;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/PannelViewBase;->a:Lcom/dolphin/browser/vg/ui/a;

    .line 33
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public e()Lcom/dolphin/browser/vg/ui/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/PannelViewBase;->a:Lcom/dolphin/browser/vg/ui/a;

    return-object v0
.end method
