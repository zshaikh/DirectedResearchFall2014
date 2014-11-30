.class Lcom/dolphin/player/ak;
.super Ljava/lang/Object;
.source "VideoPlayerEx.java"

# interfaces
.implements Lcom/dolphin/player/ar;


# instance fields
.field final synthetic a:Lcom/dolphin/player/aj;


# direct methods
.method constructor <init>(Lcom/dolphin/player/aj;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dolphin/player/ak;->a:Lcom/dolphin/player/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/player/ak;->a:Lcom/dolphin/player/aj;

    iget-object v1, p0, Lcom/dolphin/player/ak;->a:Lcom/dolphin/player/aj;

    invoke-virtual {v1}, Lcom/dolphin/player/aj;->h()I

    move-result v1

    iput v1, v0, Lcom/dolphin/player/aj;->b:I

    .line 143
    iget-object v0, p0, Lcom/dolphin/player/ak;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/player/ak;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/player/at;->p()V

    .line 146
    :cond_0
    return-void
.end method
