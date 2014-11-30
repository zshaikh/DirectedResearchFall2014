.class public Lcom/dolphin/browser/gesture/d;
.super Ljava/lang/Object;
.source "GestureAnimationIcon.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/gesture/R$drawable;->icon_gesture_drawing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/d;->a:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/gesture/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/d;->b:I

    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/gesture/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/gesture/d;->c:I

    .line 21
    return-void
.end method

.method private a(II)V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/gesture/d;->a:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, p1, -0x15

    add-int/lit8 v2, p2, -0x3

    iget v3, p0, Lcom/dolphin/browser/gesture/d;->b:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x15

    iget v4, p0, Lcom/dolphin/browser/gesture/d;->c:I

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 28
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/d;->a(II)V

    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/gesture/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/gesture/d;->a:Landroid/graphics/drawable/Drawable;

    .line 25
    return-void
.end method
