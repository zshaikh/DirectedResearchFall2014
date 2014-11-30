.class Lcom/b/a/au;
.super Ljava/lang/Object;
.source "Stats.java"


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/b/a/h;

.field final c:Landroid/os/Handler;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:I

.field k:I


# direct methods
.method constructor <init>(Lcom/b/a/h;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/b/a/au;->b:Lcom/b/a/h;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Picasso-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/b/a/au;->a:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/b/a/au;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/b/a/av;

    iget-object v1, p0, Lcom/b/a/au;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/b/a/av;-><init>(Landroid/os/Looper;Lcom/b/a/au;)V

    iput-object v0, p0, Lcom/b/a/au;->c:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private static a(IJ)J
    .locals 2

    .prologue
    .line 108
    int-to-long v0, p0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 103
    invoke-static {p1}, Lcom/b/a/bd;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/b/a/au;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/b/a/au;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/au;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lcom/b/a/au;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/au;->j:I

    .line 84
    iget-wide v0, p0, Lcom/b/a/au;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/b/a/au;->f:J

    .line 85
    iget v0, p0, Lcom/b/a/au;->j:I

    iget-wide v1, p0, Lcom/b/a/au;->f:J

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/au;->h:J

    .line 86
    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/b/a/au;->a(Landroid/graphics/Bitmap;I)V

    .line 56
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/b/a/au;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method

.method b(J)V
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/b/a/au;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/au;->k:I

    .line 90
    iget-wide v0, p0, Lcom/b/a/au;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/b/a/au;->g:J

    .line 91
    iget v0, p0, Lcom/b/a/au;->j:I

    iget-wide v1, p0, Lcom/b/a/au;->g:J

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/au;->i:J

    .line 92
    return-void
.end method

.method b(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/b/a/au;->a(Landroid/graphics/Bitmap;I)V

    .line 60
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/b/a/au;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 72
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/b/a/au;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/au;->d:J

    .line 76
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/b/a/au;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/au;->e:J

    .line 80
    return-void
.end method

.method declared-synchronized f()Lcom/b/a/ax;
    .locals 20

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/b/a/ax;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/au;->b:Lcom/b/a/h;

    invoke-interface {v2}, Lcom/b/a/h;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/au;->b:Lcom/b/a/h;

    invoke-interface {v3}, Lcom/b/a/h;->a()I

    move-result v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/b/a/au;->d:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/b/a/au;->e:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/b/a/au;->f:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/b/a/au;->g:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/b/a/au;->h:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/b/a/au;->i:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/au;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/b/a/au;->k:I

    move/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {v1 .. v19}, Lcom/b/a/ax;-><init>(IIJJJJJJIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
