.class final Lcom/dolphin/player/as;
.super Ljava/util/TimerTask;
.source "VideoPlayerEx.java"


# instance fields
.field private a:Lcom/dolphin/player/ar;


# direct methods
.method public constructor <init>(Lcom/dolphin/player/ar;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/dolphin/player/as;->a:Lcom/dolphin/player/ar;

    .line 249
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/player/as;->a:Lcom/dolphin/player/ar;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dolphin/player/as;->a:Lcom/dolphin/player/ar;

    invoke-interface {v0}, Lcom/dolphin/player/ar;->a()V

    .line 256
    :cond_0
    return-void
.end method
