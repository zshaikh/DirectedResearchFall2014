.class Lcom/dolphin/browser/h/d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LongPressPopListener.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/h/a;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/h/a;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dolphin/browser/h/d;->a:Lcom/dolphin/browser/h/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/h/a;Lcom/dolphin/browser/h/b;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/dolphin/browser/h/d;-><init>(Lcom/dolphin/browser/h/a;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcom/dolphin/browser/h/d;->a:Lcom/dolphin/browser/h/a;

    iget-boolean v2, v2, Lcom/dolphin/browser/h/a;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/h/d;->a:Lcom/dolphin/browser/h/a;

    iget v3, v3, Lcom/dolphin/browser/h/a;->f:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/h/d;->a:Lcom/dolphin/browser/h/a;

    iget v3, v3, Lcom/dolphin/browser/h/a;->f:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 227
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/h/d;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/h/d;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/h/d;->a:Lcom/dolphin/browser/h/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/h/a;->e()V

    .line 231
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
