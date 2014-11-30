.class public final Lcom/twitter/android/dk;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Landroid/net/Uri;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/twitter/android/dk;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/twitter/android/dk;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/dk;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/dk;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/dk;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/dk;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/dk;->a:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/twitter/android/dk;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/twitter/android/dk;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/twitter/android/dk;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/twitter/android/dk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dk;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/dk;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/dk;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/dk;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/dk;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected final onReset()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/twitter/android/dk;->cancelLoad()Z

    iget-object v0, p0, Lcom/twitter/android/dk;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/dk;->a:Landroid/database/Cursor;

    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/dk;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dk;->a:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/twitter/android/dk;->a(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/dk;->forceLoad()V

    goto :goto_0
.end method

.method protected final onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/twitter/android/dk;->cancelLoad()Z

    return-void
.end method
