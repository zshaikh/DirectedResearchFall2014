.class public abstract Lcom/twitter/android/provider/an;
.super Landroid/database/CursorWrapper;


# instance fields
.field protected final a:I

.field protected b:Ljava/util/List;

.field protected c:I

.field protected d:Landroid/database/Cursor;

.field private e:Lcom/twitter/android/provider/as;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const/16 v0, 0x190

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/provider/an;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/provider/an;->c:I

    new-instance v0, Lcom/twitter/android/provider/as;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/provider/as;-><init>(Lcom/twitter/android/provider/an;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/twitter/android/provider/an;->e:Lcom/twitter/android/provider/as;

    iput-object p1, p0, Lcom/twitter/android/provider/an;->d:Landroid/database/Cursor;

    iput p2, p0, Lcom/twitter/android/provider/an;->a:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/provider/an;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/provider/an;->b:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/provider/an;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/an;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/an;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/an;->c:I

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/an;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/an;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/an;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/an;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/an;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/an;->getCount()I

    move-result v1

    if-gez p1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/twitter/android/provider/an;->c:I

    :goto_0
    return v0

    :cond_0
    if-lt p1, v1, :cond_1

    iput v1, p0, Lcom/twitter/android/provider/an;->c:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/twitter/android/provider/an;->c:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/provider/an;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/an;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/an;->e:Lcom/twitter/android/provider/as;

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/as;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/provider/an;->e:Lcom/twitter/android/provider/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/as;->a(Z)V

    iget-object v1, p0, Lcom/twitter/android/provider/an;->d:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/provider/an;->a()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twitter/android/provider/as;->a(Z)V

    invoke-virtual {v0}, Lcom/twitter/android/provider/as;->notifyChanged()V

    return v1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/an;->e:Lcom/twitter/android/provider/as;

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/as;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
