.class public Lcom/dolphin/browser/sync/an;
.super Lcom/dolphin/browser/sync/af;
.source "SyncProgress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/dolphin/browser/sync/af;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/an;->f:Z

    .line 33
    iget-wide v0, p0, Lcom/dolphin/browser/sync/an;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/dolphin/browser/sync/an;->d:J

    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/an;->c()V

    .line 35
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42480000

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/an;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 20
    :goto_0
    iget-boolean v3, p0, Lcom/dolphin/browser/sync/an;->f:Z

    if-nez v3, :cond_3

    .line 28
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->a:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->b:J

    iget-wide v5, p0, Lcom/dolphin/browser/sync/an;->a:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    :cond_1
    move v0, v2

    .line 14
    goto :goto_0

    .line 16
    :cond_2
    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->b:J

    long-to-float v0, v3

    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->a:J

    long-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    goto :goto_0

    .line 22
    :cond_3
    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->d:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->e:J

    iget-wide v5, p0, Lcom/dolphin/browser/sync/an;->d:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    :cond_4
    move v1, v2

    .line 23
    goto :goto_1

    .line 25
    :cond_5
    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->e:J

    long-to-float v1, v3

    iget-wide v3, p0, Lcom/dolphin/browser/sync/an;->d:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    goto :goto_1
.end method

.method public f()V
    .locals 4

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/dolphin/browser/sync/an;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/sync/an;->e:J

    .line 39
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/an;->c()V

    .line 40
    return-void
.end method
