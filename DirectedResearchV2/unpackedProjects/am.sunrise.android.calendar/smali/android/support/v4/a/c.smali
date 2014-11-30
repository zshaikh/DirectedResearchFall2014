.class public Landroid/support/v4/a/c;
.super Landroid/support/v4/a/a;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">.android/support/v4/a/e;"
        }
    .end annotation
.end field

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Landroid/support/v4/a/e;

    invoke-direct {v0, p0}, Landroid/support/v4/a/e;-><init>(Landroid/support/v4/a/d;)V

    iput-object v0, p0, Landroid/support/v4/a/c;->a:Landroid/support/v4/a/e;

    .line 101
    iput-object p2, p0, Landroid/support/v4/a/c;->g:Landroid/net/Uri;

    .line 102
    iput-object p3, p0, Landroid/support/v4/a/c;->h:[Ljava/lang/String;

    .line 103
    iput-object p4, p0, Landroid/support/v4/a/c;->i:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Landroid/support/v4/a/c;->j:[Ljava/lang/String;

    .line 105
    iput-object p6, p0, Landroid/support/v4/a/c;->k:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v4/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/a/c;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/a/c;->h:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/a/c;->i:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/a/c;->j:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/a/c;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 54
    iget-object v1, p0, Landroid/support/v4/a/c;->a:Landroid/support/v4/a/e;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/support/v4/a/c;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    .line 70
    iput-object p1, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/a/c;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    .line 76
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/a/c;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_0
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v4/a/c;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/a/c;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/a;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 197
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/support/v4/a/c;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Landroid/support/v4/a/c;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/a/c;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 206
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/a/c;->onStopLoading()V

    .line 148
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    .line 152
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/database/Cursor;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/c;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/c;->l:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/a/c;->forceLoad()V

    .line 123
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v4/a/c;->d()Z

    .line 132
    return-void
.end method
