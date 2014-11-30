.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final m:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field n:Landroid/net/Uri;

.field o:[Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:[Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Landroid/database/Cursor;


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    .line 78
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    .line 80
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->a(Ljava/lang/Object;)V

    .line 84
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->m:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->n:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->o:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->p:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->q:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->r:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->a(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->g()V

    .line 131
    :cond_2
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->o()Z

    .line 140
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->l()V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->j()V

    .line 156
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->s:Landroid/database/Cursor;

    .line 160
    return-void
.end method

.method public bridge synthetic q()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->s()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public s()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->n:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->o:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->p:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->q:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->r:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 54
    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->m:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/content/CursorLoader;->a(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 56
    :cond_0
    return-object v0
.end method
