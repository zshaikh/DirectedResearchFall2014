.class public Lcom/dolphin/browser/gesture/ui/BorderImageView;
.super Landroid/widget/ImageView;
.source "BorderImageView.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Lcom/dolphin/browser/gesture/ui/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/dolphin/browser/gesture/ui/b;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/ui/b;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b:Lcom/dolphin/browser/gesture/ui/b;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b:Lcom/dolphin/browser/gesture/ui/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ui/b;->a(Z)V

    .line 46
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b:Lcom/dolphin/browser/gesture/ui/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ui/b;->b(Z)V

    .line 51
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b:Lcom/dolphin/browser/gesture/ui/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ui/b;->c(Z)V

    .line 56
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b:Lcom/dolphin/browser/gesture/ui/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ui/b;->d(Z)V

    .line 61
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->b:Lcom/dolphin/browser/gesture/ui/b;

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/BorderImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/dolphin/browser/gesture/ui/b;->a(Landroid/graphics/Canvas;II)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 41
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/dolphin/browser/gesture/ui/BorderImageView;->a:I

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 34
    return-void
.end method
