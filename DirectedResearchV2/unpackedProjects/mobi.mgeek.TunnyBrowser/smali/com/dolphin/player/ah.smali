.class Lcom/dolphin/player/ah;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/dolphin/player/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/player/ag;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 149
    const-string v0, "Dolphin Player"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0, p1}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 156
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v1}, Lcom/dolphin/player/ag;->b(Lcom/dolphin/player/ag;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(Landroid/view/SurfaceHolder;)V

    .line 158
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->b(Z)V

    .line 160
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->k()V

    .line 162
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    const-string v0, "Dolphin Player"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    iget-object v1, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v1}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/player/aj;->h()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/dolphin/player/ag;->a:I

    .line 172
    const-string v0, "Dolphin Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveseektime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    iget v2, v2, Lcom/dolphin/player/ag;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/player/aj;->a(Landroid/view/SurfaceHolder;)V

    .line 174
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->c(Lcom/dolphin/player/ag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->e()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ah;->a:Lcom/dolphin/player/ag;

    invoke-static {v0, v3}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 180
    return-void
.end method
