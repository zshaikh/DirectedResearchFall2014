.class public Lcom/dolphin/browser/titlebar/AddonIconScroller;
.super Landroid/widget/HorizontalScrollView;
.source "AddonIconScroller.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x4b

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/titlebar/AddonIconScroller;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 27
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/AddonIconScroller;->getMeasuredWidth()I

    move-result v0

    sget v1, Lcom/dolphin/browser/titlebar/AddonIconScroller;->a:I

    if-le v0, v1, :cond_0

    .line 28
    sget v0, Lcom/dolphin/browser/titlebar/AddonIconScroller;->a:I

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/AddonIconScroller;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/titlebar/AddonIconScroller;->setMeasuredDimension(II)V

    .line 30
    :cond_0
    return-void
.end method
