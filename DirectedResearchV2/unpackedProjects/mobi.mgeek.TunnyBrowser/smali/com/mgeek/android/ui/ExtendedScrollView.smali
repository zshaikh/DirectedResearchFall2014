.class public Lcom/mgeek/android/ui/ExtendedScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendedScrollView.java"


# instance fields
.field private a:Lcom/mgeek/android/ui/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 29
    iget-object v0, p0, Lcom/mgeek/android/ui/ExtendedScrollView;->a:Lcom/mgeek/android/ui/u;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/mgeek/android/ui/ExtendedScrollView;->a:Lcom/mgeek/android/ui/u;

    invoke-interface {v0}, Lcom/mgeek/android/ui/u;->a()V

    .line 32
    :cond_0
    return-void
.end method
