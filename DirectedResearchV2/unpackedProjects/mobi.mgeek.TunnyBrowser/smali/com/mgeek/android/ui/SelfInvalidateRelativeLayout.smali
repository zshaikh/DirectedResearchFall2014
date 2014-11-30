.class public Lcom/mgeek/android/ui/SelfInvalidateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SelfInvalidateRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 27
    invoke-virtual {p0}, Lcom/mgeek/android/ui/SelfInvalidateRelativeLayout;->invalidate()V

    .line 28
    return-void
.end method
