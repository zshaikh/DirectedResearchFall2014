.class public Lcom/dolphin/player/d;
.super Landroid/widget/FrameLayout;
.source "FullscreenHolder.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dolphin/player/g;

.field private c:Lcom/dolphin/player/h;

.field private d:Lcom/dolphin/player/f;

.field private e:Landroid/view/GestureDetector$OnGestureListener;

.field private f:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "FullscreenHolder"

    sput-object v0, Lcom/dolphin/player/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/dolphin/player/e;

    invoke-direct {v0, p0}, Lcom/dolphin/player/e;-><init>(Lcom/dolphin/player/d;)V

    iput-object v0, p0, Lcom/dolphin/player/d;->e:Landroid/view/GestureDetector$OnGestureListener;

    .line 16
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/dolphin/player/d;->setBackgroundColor(I)V

    .line 17
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/dolphin/player/d;->e:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/dolphin/player/d;->f:Landroid/view/GestureDetector;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/dolphin/player/d;)Lcom/dolphin/player/h;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dolphin/player/d;->c:Lcom/dolphin/player/h;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/dolphin/player/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/player/d;)Lcom/dolphin/player/g;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dolphin/player/d;->b:Lcom/dolphin/player/g;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/player/d;)Lcom/dolphin/player/f;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dolphin/player/d;->d:Lcom/dolphin/player/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/player/f;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/player/d;->d:Lcom/dolphin/player/f;

    .line 50
    return-void
.end method

.method public a(Lcom/dolphin/player/g;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dolphin/player/d;->b:Lcom/dolphin/player/g;

    .line 30
    return-void
.end method

.method public a(Lcom/dolphin/player/h;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dolphin/player/d;->c:Lcom/dolphin/player/h;

    .line 40
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/dolphin/player/d;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 103
    sget-object v0, Lcom/dolphin/player/d;->a:Ljava/lang/String;

    const-string v1, "onTouchUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/dolphin/player/d;->b:Lcom/dolphin/player/g;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/dolphin/player/d;->b:Lcom/dolphin/player/g;

    invoke-interface {v0, p1}, Lcom/dolphin/player/g;->a(Landroid/view/MotionEvent;)Z

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    :cond_1
    return v2
.end method
