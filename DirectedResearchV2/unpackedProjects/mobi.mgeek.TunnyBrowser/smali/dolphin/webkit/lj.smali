.class Ldolphin/webkit/lj;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/lg;


# direct methods
.method constructor <init>(Ldolphin/webkit/lg;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Ldolphin/webkit/lj;->a:Ldolphin/webkit/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Ldolphin/webkit/lj;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->c(Ldolphin/webkit/lg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/lj;->a:Ldolphin/webkit/lg;

    invoke-static {v1}, Ldolphin/webkit/lg;->b(Ldolphin/webkit/lg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Ldolphin/webkit/lj;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->c(Ldolphin/webkit/lg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/lj;->a:Ldolphin/webkit/lg;

    invoke-static {v1}, Ldolphin/webkit/lg;->b(Ldolphin/webkit/lg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Ldolphin/webkit/lg;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    iget-object v0, p0, Ldolphin/webkit/lj;->a:Ldolphin/webkit/lg;

    invoke-static {v0}, Ldolphin/webkit/lg;->d(Ldolphin/webkit/lg;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->zoomOut()Z

    .line 111
    return-void
.end method
