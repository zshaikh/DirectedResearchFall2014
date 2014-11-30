.class Ldolphin/webkit/db;
.super Ljava/lang/Object;
.source "HTML5FakeVideoPlayer.java"

# interfaces
.implements Lcom/dolphin/player/bp;


# instance fields
.field final synthetic a:Ldolphin/webkit/cx;


# direct methods
.method constructor <init>(Ldolphin/webkit/cx;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Ldolphin/webkit/db;->a:Ldolphin/webkit/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Ldolphin/webkit/j;->a()Ldolphin/webkit/j;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/j;->d()V

    .line 157
    invoke-static {}, Ldolphin/webkit/cx;->e()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Ldolphin/webkit/cx;->e()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Ldolphin/webkit/db;->a:Ldolphin/webkit/cx;

    invoke-static {v2}, Ldolphin/webkit/cx;->c(Ldolphin/webkit/cx;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method
