.class public Lcom/dolphin/browser/share/Spacer;
.super Landroid/view/View;
.source "Spacer.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/dolphin/browser/share/Spacer;->a:I

    .line 22
    iput v0, p0, Lcom/dolphin/browser/share/Spacer;->b:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/dolphin/browser/share/Spacer;->a:I

    .line 22
    iput v0, p0, Lcom/dolphin/browser/share/Spacer;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/dolphin/browser/share/Spacer;->a:I

    .line 26
    iput p2, p0, Lcom/dolphin/browser/share/Spacer;->b:I

    .line 27
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    iget v0, p0, Lcom/dolphin/browser/share/Spacer;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/share/Spacer;->b:I

    if-ne v0, v1, :cond_1

    .line 32
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/share/Spacer;->a:I

    iget v1, p0, Lcom/dolphin/browser/share/Spacer;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/share/Spacer;->setMeasuredDimension(II)V

    goto :goto_0
.end method
