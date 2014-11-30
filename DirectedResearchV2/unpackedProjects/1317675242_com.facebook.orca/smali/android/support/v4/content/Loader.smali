.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 118
    iput p1, p0, Landroid/support/v4/content/Loader;->a:I

    .line 119
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 134
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 352
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 354
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 355
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 356
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 357
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 328
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 180
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->f:Z

    .line 181
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->e:Z

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->f()V

    .line 183
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->h()V

    .line 203
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 228
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->j()V

    .line 229
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->l()V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    .line 277
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 278
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->e:Z

    .line 279
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->g:Z

    .line 280
    return-void
.end method

.method protected l()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->g:Z

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->g:Z

    .line 299
    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->g()V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->g:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 335
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 336
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget v1, p0, Landroid/support/v4/content/Loader;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
