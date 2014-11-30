.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field volatile i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field j:J

.field k:J

.field l:Landroid/os/Handler;


# virtual methods
.method a(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->c(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_0

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->k:J

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->p()V

    .line 210
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 272
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 276
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 278
    :cond_1
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->j:J

    invoke-static {v0, v1, p3}, Landroid/support/v4/util/TimeUtils;->a(JLjava/io/PrintWriter;)V

    .line 281
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->k:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/util/TimeUtils;->a(JJLjava/io/PrintWriter;)V

    .line 284
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 286
    :cond_2
    return-void
.end method

.method b(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_0

    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->a(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->k:J

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 224
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/content/Loader;->h()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->o()Z

    .line 114
    new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->p()V

    .line 117
    return-void
.end method

.method public o()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v2, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    .line 145
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->l:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move v0, v2

    .line 167
    :goto_0
    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v2, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    .line 154
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->l:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move v0, v2

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 163
    :cond_3
    iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 167
    goto :goto_0
.end method

.method p()V
    .locals 6

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->i:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    .line 181
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->l:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 185
    iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->k:J

    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->j:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 190
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->b:Z

    .line 191
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->l:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->k:J

    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->j:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->h:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public abstract q()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected r()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
