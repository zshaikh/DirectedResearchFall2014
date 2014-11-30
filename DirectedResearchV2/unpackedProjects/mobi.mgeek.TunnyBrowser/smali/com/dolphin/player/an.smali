.class Lcom/dolphin/player/an;
.super Ljava/lang/Object;
.source "VideoPlayerEx.java"

# interfaces
.implements Lcom/dolphin/player/m;


# instance fields
.field final synthetic a:Lcom/dolphin/player/aj;


# direct methods
.method constructor <init>(Lcom/dolphin/player/aj;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dolphin/player/an;->a:Lcom/dolphin/player/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/player/j;II)Z
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/dolphin/player/aj;->g:Lcom/dolphin/player/j;

    invoke-interface {v0}, Lcom/dolphin/player/j;->h()V

    .line 174
    const/4 v0, -0x1

    sput v0, Lcom/dolphin/player/aj;->h:I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/an;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/dolphin/player/an;->a:Lcom/dolphin/player/aj;

    invoke-static {v0}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/aj;)Lcom/dolphin/player/at;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/player/at;->b(Lcom/dolphin/player/j;II)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
