.class Ldolphin/webkit/dd;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Ldolphin/webkit/dc;


# direct methods
.method constructor <init>(Ldolphin/webkit/dc;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 98
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 100
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0, p1}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 105
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;I)I

    .line 107
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->d(Ldolphin/webkit/dc;)V

    .line 108
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    iget-object v1, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    iget-object v1, v1, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 116
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    .line 119
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ldolphin/webkit/de;

    invoke-direct {v2, p0, v0}, Ldolphin/webkit/de;-><init>(Ldolphin/webkit/dd;Lcom/dolphin/player/aj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    :cond_0
    sput-object v3, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    .line 130
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0, v3}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 131
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Ldolphin/webkit/dd;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->c(Ldolphin/webkit/dc;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 134
    :cond_1
    return-void
.end method
