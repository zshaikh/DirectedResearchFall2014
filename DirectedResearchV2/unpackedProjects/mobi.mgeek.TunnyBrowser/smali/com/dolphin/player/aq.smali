.class Lcom/dolphin/player/aq;
.super Ljava/lang/Object;
.source "VideoPlayerEx.java"

# interfaces
.implements Lcom/dolphin/player/p;


# instance fields
.field final synthetic a:Lcom/dolphin/player/aj;


# direct methods
.method constructor <init>(Lcom/dolphin/player/aj;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/player/aq;->a:Lcom/dolphin/player/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/player/j;II)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dolphin/player/aq;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dolphin/player/aq;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/player/at;->a(Lcom/dolphin/player/j;II)V

    .line 211
    :cond_0
    return-void
.end method
