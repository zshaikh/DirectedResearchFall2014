.class public Lcom/dolphin/browser/vg/ui/VoiceViewTest;
.super Lcom/dolphin/browser/vg/ui/PannelViewBase;
.source "VoiceViewTest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/vg/ui/PannelViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/dolphin/browser/vg/ui/PannelViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 33
    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    return-void
.end method
