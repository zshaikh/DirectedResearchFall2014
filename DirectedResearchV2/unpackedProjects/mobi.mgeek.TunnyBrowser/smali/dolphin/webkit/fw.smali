.class Ldolphin/webkit/fw;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PopupZoomer.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/fv;


# direct methods
.method constructor <init>(Ldolphin/webkit/fv;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 204
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-static {v0}, Ldolphin/webkit/fv;->b(Ldolphin/webkit/fv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 208
    iget-object v2, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-static {v2, v0, v1}, Ldolphin/webkit/fv;->a(Ldolphin/webkit/fv;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-virtual {v0, v3}, Ldolphin/webkit/fv;->b(Z)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-static {v0}, Ldolphin/webkit/fv;->c(Ldolphin/webkit/fv;)Ldolphin/webkit/fx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Ldolphin/webkit/fv;->b(Ldolphin/webkit/fv;FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 212
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 213
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 214
    if-eqz p2, :cond_3

    .line 215
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-static {v0}, Ldolphin/webkit/fv;->c(Ldolphin/webkit/fv;)Ldolphin/webkit/fx;

    move-result-object v0

    iget-object v2, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-interface {v0, v2, v1}, Ldolphin/webkit/fx;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 219
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-virtual {v0, v3}, Ldolphin/webkit/fv;->b(Z)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-static {v0}, Ldolphin/webkit/fv;->c(Ldolphin/webkit/fv;)Ldolphin/webkit/fx;

    move-result-object v0

    iget-object v2, p0, Ldolphin/webkit/fw;->a:Ldolphin/webkit/fv;

    invoke-interface {v0, v2, v1}, Ldolphin/webkit/fx;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/fw;->a(Landroid/view/MotionEvent;Z)Z

    .line 201
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/fw;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method
