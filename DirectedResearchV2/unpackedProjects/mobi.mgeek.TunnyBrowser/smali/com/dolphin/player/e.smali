.class Lcom/dolphin/player/e;
.super Ljava/lang/Object;
.source "FullscreenHolder.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic a:Lcom/dolphin/player/d;


# direct methods
.method constructor <init>(Lcom/dolphin/player/d;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/dolphin/player/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-static {v0}, Lcom/dolphin/player/d;->c(Lcom/dolphin/player/d;)Lcom/dolphin/player/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-static {v0}, Lcom/dolphin/player/d;->c(Lcom/dolphin/player/d;)Lcom/dolphin/player/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/player/f;->a(Landroid/view/MotionEvent;)Z

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/dolphin/player/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/dolphin/player/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-static {v0}, Lcom/dolphin/player/d;->b(Lcom/dolphin/player/d;)Lcom/dolphin/player/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-static {v0}, Lcom/dolphin/player/d;->b(Lcom/dolphin/player/d;)Lcom/dolphin/player/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/player/g;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 73
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/dolphin/player/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/dolphin/player/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-static {v0}, Lcom/dolphin/player/d;->a(Lcom/dolphin/player/d;)Lcom/dolphin/player/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dolphin/player/e;->a:Lcom/dolphin/player/d;

    invoke-static {v0}, Lcom/dolphin/player/d;->a(Lcom/dolphin/player/d;)Lcom/dolphin/player/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/player/h;->a(Landroid/view/MotionEvent;)Z

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
