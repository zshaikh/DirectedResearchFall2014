.class public Lcom/mgeek/android/ui/aj;
.super Ljava/lang/Object;
.source "MotionDetector.java"


# static fields
.field private static final a:I

.field private static b:Landroid/view/MotionEvent;

.field private static c:Landroid/view/MotionEvent;


# instance fields
.field private d:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/aj;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/mgeek/android/ui/ak;
    .locals 6

    .prologue
    .line 52
    sget-object v0, Lcom/mgeek/android/ui/aj;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgeek/android/ui/aj;->b:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    sget-object v0, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    .line 75
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v0, Lcom/mgeek/android/ui/aj;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 56
    sget-object v1, Lcom/mgeek/android/ui/aj;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 57
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 59
    sget-object v1, Lcom/mgeek/android/ui/aj;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 60
    sget-object v2, Lcom/mgeek/android/ui/aj;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 61
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 63
    sget v2, Lcom/mgeek/android/ui/aj;->a:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    sget v2, Lcom/mgeek/android/ui/aj;->a:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 64
    sget-object v0, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    goto :goto_0

    .line 67
    :cond_2
    float-to-double v2, v0

    .line 69
    const-wide/high16 v4, 0x3ff8000000000000L

    mul-double/2addr v2, v4

    .line 70
    float-to-double v0, v1

    .line 71
    cmpl-double v0, v2, v0

    if-lez v0, :cond_3

    .line 72
    sget-object v0, Lcom/mgeek/android/ui/ak;->c:Lcom/mgeek/android/ui/ak;

    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Lcom/mgeek/android/ui/ak;->b:Lcom/mgeek/android/ui/ak;

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    sput-object v0, Lcom/mgeek/android/ui/aj;->b:Landroid/view/MotionEvent;

    .line 45
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 49
    return-void
.end method

.method public b()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/mgeek/android/ui/aj;->c()V

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    sput-object v0, Lcom/mgeek/android/ui/aj;->c:Landroid/view/MotionEvent;

    .line 100
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    .line 101
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/aj;->d:Landroid/view/VelocityTracker;

    .line 93
    :cond_0
    return-void
.end method
