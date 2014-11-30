.class Ldolphin/webkit/i;
.super Landroid/os/Handler;
.source "BackForwardAnimationController.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/g;


# direct methods
.method constructor <init>(Ldolphin/webkit/g;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Ldolphin/webkit/i;->a:Ldolphin/webkit/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/i;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->f(Ldolphin/webkit/g;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Ldolphin/webkit/i;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->f(Ldolphin/webkit/g;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/i;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->f(Ldolphin/webkit/g;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Ldolphin/webkit/i;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->f(Ldolphin/webkit/g;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
