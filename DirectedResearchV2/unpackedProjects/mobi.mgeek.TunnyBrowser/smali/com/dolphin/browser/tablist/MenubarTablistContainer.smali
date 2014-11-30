.class public final Lcom/dolphin/browser/tablist/MenubarTablistContainer;
.super Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;
.source "MenubarTablistContainer.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    const-string v0, "Fps Of Tablist Start Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->c(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T()I

    move-result v0

    .line 60
    :cond_0
    add-int v3, p3, v0

    add-int v5, p5, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-super/range {v0 .. v5}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->onLayout(ZIIII)V

    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/MenubarTablistContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 39
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T()I

    move-result v0

    .line 44
    :cond_0
    iget v2, p0, Lcom/dolphin/browser/tablist/MenubarTablistContainer;->a:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->onMeasure(II)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/dolphin/browser/tablist/ViewPortAnimProviderImpl;->onMeasure(II)V

    goto :goto_0
.end method
