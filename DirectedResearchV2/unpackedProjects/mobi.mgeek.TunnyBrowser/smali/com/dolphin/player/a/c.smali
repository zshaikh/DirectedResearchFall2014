.class Lcom/dolphin/player/a/c;
.super Ljava/util/TimerTask;
.source "Calculagraph.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/player/a/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/player/a/c;->a:Lcom/dolphin/player/a/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/player/a/c;->a:Lcom/dolphin/player/a/b;

    invoke-static {v0}, Lcom/dolphin/player/a/b;->a(Lcom/dolphin/player/a/b;)Lcom/dolphin/player/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/player/a/c;->a:Lcom/dolphin/player/a/b;

    invoke-static {v0}, Lcom/dolphin/player/a/b;->a(Lcom/dolphin/player/a/b;)Lcom/dolphin/player/a/d;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/dolphin/player/a/d;->a(J)V

    .line 75
    :cond_0
    return-void
.end method
