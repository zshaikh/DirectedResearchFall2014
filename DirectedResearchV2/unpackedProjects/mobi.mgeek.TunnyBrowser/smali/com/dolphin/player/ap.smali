.class Lcom/dolphin/player/ap;
.super Ljava/lang/Object;
.source "VideoPlayerEx.java"

# interfaces
.implements Lcom/dolphin/player/l;


# instance fields
.field final synthetic a:Lcom/dolphin/player/aj;


# direct methods
.method constructor <init>(Lcom/dolphin/player/aj;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dolphin/player/ap;->a:Lcom/dolphin/player/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/player/j;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/player/ap;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dolphin/player/ap;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/player/at;->b(Lcom/dolphin/player/j;)V

    .line 201
    :cond_0
    return-void
.end method
