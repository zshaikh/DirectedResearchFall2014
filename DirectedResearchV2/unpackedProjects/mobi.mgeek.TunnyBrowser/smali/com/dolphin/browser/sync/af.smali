.class public Lcom/dolphin/browser/sync/af;
.super Lcom/dolphin/browser/sync/b;
.source "PullProgress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/dolphin/browser/sync/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/af;->c:Z

    .line 23
    iget-wide v0, p0, Lcom/dolphin/browser/sync/af;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/dolphin/browser/sync/af;->a:J

    .line 24
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/af;->c()V

    .line 25
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    const/high16 v0, 0x42c80000

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/dolphin/browser/sync/af;->c:Z

    if-nez v1, :cond_1

    .line 11
    const/4 v0, 0x0

    .line 18
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    iget-wide v1, p0, Lcom/dolphin/browser/sync/af;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/dolphin/browser/sync/af;->b:J

    iget-wide v3, p0, Lcom/dolphin/browser/sync/af;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 15
    iget-wide v1, p0, Lcom/dolphin/browser/sync/af;->b:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/dolphin/browser/sync/af;->a:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/dolphin/browser/sync/af;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/sync/af;->b:J

    .line 29
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/af;->c()V

    .line 30
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
