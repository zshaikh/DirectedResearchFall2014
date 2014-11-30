.class Lcom/dolphin/player/ax;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/player/aw;


# direct methods
.method constructor <init>(Lcom/dolphin/player/aw;J)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/dolphin/player/ax;->b:Lcom/dolphin/player/aw;

    iput-wide p2, p0, Lcom/dolphin/player/ax;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1058
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1059
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/dolphin/player/ax;->a:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1060
    iget-object v2, p0, Lcom/dolphin/player/ax;->b:Lcom/dolphin/player/aw;

    iget-object v2, v2, Lcom/dolphin/player/aw;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->E(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    return-void
.end method
