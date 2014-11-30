.class public final Lcom/twitter/android/provider/as;
.super Landroid/database/DataSetObservable;


# instance fields
.field private final a:Landroid/database/DataSetObserver;

.field private final b:Landroid/database/Cursor;

.field private c:Z

.field private d:I

.field private synthetic e:Lcom/twitter/android/provider/an;


# direct methods
.method public constructor <init>(Lcom/twitter/android/provider/an;Landroid/database/Cursor;)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/provider/as;->e:Lcom/twitter/android/provider/an;

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    new-instance v0, Lcom/twitter/android/provider/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/provider/y;-><init>(Lcom/twitter/android/provider/as;Lcom/twitter/android/provider/ba;)V

    iput-object v0, p0, Lcom/twitter/android/provider/as;->a:Landroid/database/DataSetObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/provider/as;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/provider/as;->d:I

    iput-object p2, p0, Lcom/twitter/android/provider/as;->b:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/DataSetObserver;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    iget v0, p0, Lcom/twitter/android/provider/as;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/provider/as;->d:I

    iget v0, p0, Lcom/twitter/android/provider/as;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/as;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/provider/as;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/android/provider/as;->c:Z

    return-void
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    iget v0, p0, Lcom/twitter/android/provider/as;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twitter/android/provider/as;->d:I

    iget v0, p0, Lcom/twitter/android/provider/as;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/as;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/provider/as;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public final notifyChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/provider/as;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic registerObserver(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/DataSetObserver;

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/as;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final bridge synthetic unregisterObserver(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/DataSetObserver;

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/as;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
