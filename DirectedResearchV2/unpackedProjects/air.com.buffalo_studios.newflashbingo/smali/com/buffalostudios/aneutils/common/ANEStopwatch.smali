.class public Lcom/buffalostudios/aneutils/common/ANEStopwatch;
.super Ljava/lang/Object;
.source "ANEStopwatch.java"


# instance fields
.field private _elapsedTime:I

.field private _isRunning:Z

.field private _startTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->reset()V

    .line 13
    return-void
.end method

.method private getTimer()I
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private intervalTime()I
    .locals 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->getTimer()I

    move-result v0

    iget v1, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_startTime:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public elapsedMilliseconds()I
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_elapsedTime:I

    invoke-direct {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->intervalTime()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_startTime:I

    .line 44
    iput v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_elapsedTime:I

    .line 45
    iput-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    .line 46
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->reset()V

    .line 55
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->start()V

    .line 56
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->getTimer()I

    move-result v0

    iput v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_startTime:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->elapsedMilliseconds()I

    move-result v0

    iput v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_elapsedTime:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buffalostudios/aneutils/common/ANEStopwatch;->_isRunning:Z

    goto :goto_0
.end method
