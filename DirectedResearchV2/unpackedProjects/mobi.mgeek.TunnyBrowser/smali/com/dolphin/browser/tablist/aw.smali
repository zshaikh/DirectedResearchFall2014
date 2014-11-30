.class public Lcom/dolphin/browser/tablist/aw;
.super Ljava/lang/Object;
.source "MotionDetector.java"


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Landroid/view/MotionEvent;

.field private c:F

.field private d:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/dolphin/browser/tablist/aw;->c:F

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/tablist/ax;
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->b:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->a:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->a:Lcom/dolphin/browser/tablist/ax;

    .line 72
    :goto_0
    return-object v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/dolphin/browser/tablist/aw;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 56
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/dolphin/browser/tablist/aw;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/dolphin/browser/tablist/aw;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 60
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 62
    iget v2, p0, Lcom/dolphin/browser/tablist/aw;->c:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/dolphin/browser/tablist/aw;->c:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 63
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->a:Lcom/dolphin/browser/tablist/ax;

    goto :goto_0

    .line 65
    :cond_2
    float-to-double v2, v0

    .line 67
    const-wide/high16 v4, 0x3fe0000000000000L

    mul-double/2addr v2, v4

    .line 68
    float-to-double v0, v1

    .line 69
    cmpl-double v0, v2, v0

    if-lez v0, :cond_3

    .line 70
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->c:Lcom/dolphin/browser/tablist/ax;

    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->b:Lcom/dolphin/browser/tablist/ax;

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/aw;->a:Landroid/view/MotionEvent;

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    .line 90
    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/aw;->b()V

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/aw;->b:Landroid/view/MotionEvent;

    .line 97
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/aw;->d:Landroid/view/VelocityTracker;

    .line 98
    return-void
.end method
