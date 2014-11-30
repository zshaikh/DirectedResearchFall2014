.class Ldolphin/webkit/lh;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/lg;


# direct methods
.method constructor <init>(Ldolphin/webkit/lg;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->a(Ldolphin/webkit/lg;)Ldolphin/webkit/lk;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/lk;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->a(Ldolphin/webkit/lg;)Ldolphin/webkit/lk;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/lk;->a()V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->c(Ldolphin/webkit/lg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-static {v1}, Ldolphin/webkit/lg;->b(Ldolphin/webkit/lg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->c(Ldolphin/webkit/lg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/lh;->a:Ldolphin/webkit/lg;

    invoke-static {v1}, Ldolphin/webkit/lg;->b(Ldolphin/webkit/lg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Ldolphin/webkit/lg;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
