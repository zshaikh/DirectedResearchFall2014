.class Lcom/dolphin/player/ay;
.super Landroid/os/Handler;
.source "VideoPlayerView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1072
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1148
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1080
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->u(Lcom/dolphin/player/VideoPlayerView;)V

    goto :goto_0

    .line 1097
    :pswitch_2
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->F(Lcom/dolphin/player/VideoPlayerView;)I

    .line 1098
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->m(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->t(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v2

    div-int/2addr v1, v2

    .line 1100
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1101
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1102
    add-int/2addr v1, v2

    .line 1104
    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    .line 1105
    const/16 v0, 0x5f

    .line 1111
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->G(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->G(Lcom/dolphin/player/VideoPlayerView;)I

    move-result v0

    .line 1114
    :cond_2
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1, v0}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;I)I

    .line 1116
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/player/x;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/player/x;->a(I)V

    .line 1118
    const/16 v1, 0x3e8

    .line 1119
    const/16 v2, 0x4e

    if-le v0, v2, :cond_5

    .line 1120
    add-int/lit8 v0, v0, -0x4c

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    .line 1122
    :goto_2
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1107
    :cond_3
    if-lt v1, v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 1130
    :pswitch_3
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->y(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/br;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->z(Lcom/dolphin/player/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1131
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v4}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;

    move-result-object v4

    iget-object v4, v4, Lcom/dolphin/player/bq;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v3}, Lcom/dolphin/player/VideoPlayerView;->z(Lcom/dolphin/player/VideoPlayerView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    iget-object v2, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->y(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/br;

    move-result-object v2

    const-string v3, "shell_player"

    const-string v4, "play_error_page_load_failed"

    invoke-interface {v2, v3, v4, v1}, Lcom/dolphin/player/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_4
    iget-object v1, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1, v0}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 1135
    iget-object v0, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->p(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/x;->b()V

    .line 1136
    iget-object v0, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->h(Lcom/dolphin/player/VideoPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1142
    :pswitch_4
    iget-object v0, p0, Lcom/dolphin/player/ay;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->c()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 1072
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
