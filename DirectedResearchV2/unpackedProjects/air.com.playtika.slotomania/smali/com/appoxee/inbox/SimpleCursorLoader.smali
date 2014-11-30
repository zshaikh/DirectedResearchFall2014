.class public abstract Lcom/appoxee/inbox/SimpleCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SimpleCursorLoader.java"


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
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 44
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 46
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 50
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/appoxee/inbox/SimpleCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public abstract loadInBackground()Landroid/database/Cursor;
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/appoxee/inbox/SimpleCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 95
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->onStopLoading()V

    .line 97
    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 102
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/appoxee/inbox/SimpleCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appoxee/inbox/SimpleCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->forceLoad()V

    .line 72
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/appoxee/inbox/SimpleCursorLoader;->cancelLoad()Z

    .line 81
    return-void
.end method
