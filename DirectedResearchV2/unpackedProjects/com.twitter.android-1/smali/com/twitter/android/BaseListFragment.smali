.class public Lcom/twitter/android/BaseListFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/twitter/android/util/j;
.implements Lcom/twitter/android/widget/p;


# instance fields
.field private a:Z

.field private b:Lcom/twitter/android/fe;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field protected i:Z

.field protected j:Lcom/twitter/android/client/e;

.field protected k:Lcom/twitter/android/client/f;

.field protected l:Landroid/support/v4/widget/CursorAdapter;

.field protected m:I

.field protected n:Z

.field protected o:J

.field protected p:Landroid/widget/ListView;

.field protected q:I

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/ProgressBar;

.field private u:Lcom/twitter/android/fx;

.field private v:Ljava/util/ArrayList;

.field private w:Lcom/twitter/android/gd;

.field private final x:Landroid/widget/AdapterView$OnItemClickListener;

.field private final y:Landroid/os/Handler;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/twitter/android/gj;

    invoke-direct {v0, p0}, Lcom/twitter/android/gj;-><init>(Lcom/twitter/android/BaseListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->x:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->y:Landroid/os/Handler;

    new-instance v0, Lcom/twitter/android/gi;

    invoke-direct {v0, p0}, Lcom/twitter/android/gi;-><init>(Lcom/twitter/android/BaseListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "data"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private b(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f07007c

    const/4 v6, 0x0

    invoke-virtual {p1, p2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x1020004

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f07003b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/BaseListFragment;->s:Landroid/view/View;

    const v0, 0x7f07003c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/twitter/android/BaseListFragment;->r:Landroid/view/View;

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->e:I

    if-lez v0, :cond_0

    const v0, 0x7f070054

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v4, p0, Lcom/twitter/android/BaseListFragment;->e:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/twitter/android/BaseListFragment;->f:I

    if-lez v0, :cond_1

    const v0, 0x7f070055

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->x:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->d:I

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/RefreshableListView;->a(Lcom/twitter/android/widget/p;)V

    :cond_3
    iget v1, p0, Lcom/twitter/android/BaseListFragment;->c:I

    if-lez v1, :cond_4

    const v1, 0x7f030036

    invoke-virtual {p1, v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v5, p0, Lcom/twitter/android/BaseListFragment;->c:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHint(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, p0, Lcom/twitter/android/BaseListFragment;->c:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    :cond_4
    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    return-object v2
.end method

.method protected final a(ILcom/twitter/android/util/j;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/twitter/android/BaseListFragment;->o:J

    return-void
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method final a(Lcom/twitter/android/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/fx;

    return-void
.end method

.method public a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->n:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->n:Z

    goto :goto_0
.end method

.method protected a(Lcom/twitter/android/widget/r;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/twitter/android/widget/r;Z)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/dy;

    invoke-direct {v1, p1, p2}, Lcom/twitter/android/dy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected a_()V
    .locals 0

    return-void
.end method

.method public final a_(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->a_()V

    :cond_0
    return-void
.end method

.method public b(J)I
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->e()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->i:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->g(I)I

    return-void
.end method

.method protected final b(ILcom/twitter/android/util/j;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/dy;

    invoke-direct {v1, p1}, Lcom/twitter/android/dy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b_()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->g(I)I

    return-void
.end method

.method protected final c(Ljava/lang/String;)Lcom/twitter/android/dy;
    .locals 4

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dy;

    iget-object v0, v0, Lcom/twitter/android/dy;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dy;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/twitter/android/BaseListFragment;->b(Z)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->b()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->g(I)I

    iput-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->i:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected c_()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->g:I

    iget v2, p0, Lcom/twitter/android/BaseListFragment;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected d_()V
    .locals 0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->c()V

    return-void
.end method

.method protected e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected final e(I)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dy;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/gd;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->y:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/gd;-><init>(Lcom/twitter/android/BaseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method protected f(I)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->a()V

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseListFragment;->g(I)I

    iput-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->i:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/twitter/android/BaseListFragment;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final g(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->b:Lcom/twitter/android/fe;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/fe;->a(Landroid/content/Context;)Lcom/twitter/android/fe;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->b:Lcom/twitter/android/fe;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->b:Lcom/twitter/android/fe;

    invoke-virtual {v0, p1}, Lcom/twitter/android/fe;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/twitter/android/widget/r;
    .locals 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iget-boolean v4, p0, Lcom/twitter/android/BaseListFragment;->i:Z

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-ge v1, v0, :cond_1

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    new-instance v4, Lcom/twitter/android/widget/r;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    invoke-direct {v4, v0, v5, v6, v1}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    return-object v4

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final h(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method protected h()Z
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    sub-int v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final k()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    if-eqz p1, :cond_1

    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->g:I

    const-string v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->h:I

    const-string v0, "pending_reqs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/BaseListFragment;->o:J

    const-string v1, "chmode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "chmode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->q:I

    :cond_0
    const-string v1, "search_hint"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->c:I

    const-string v1, "bg_color"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->d:I

    const-string v1, "empty_title"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->e:I

    const-string v1, "empty_desc"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->f:I

    :goto_1
    return-void

    :cond_1
    iput v4, p0, Lcom/twitter/android/BaseListFragment;->g:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->h:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/BaseListFragment;->o:J

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->q:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->c:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->d:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->e:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->f:I

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->c:I

    if-lez v0, :cond_0

    const v0, 0x7f03000e

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/twitter/android/BaseListFragment;->e:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->f:I

    if-lez v0, :cond_2

    :cond_1
    const v0, 0x7f03000d

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f03000c

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->b:Lcom/twitter/android/fe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->b:Lcom/twitter/android/fe;

    invoke-virtual {v0}, Lcom/twitter/android/fe;->a()V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->w:Lcom/twitter/android/gd;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->k:Lcom/twitter/android/client/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_1
    iput v2, p0, Lcom/twitter/android/BaseListFragment;->g:I

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->h:I

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->g()Lcom/twitter/android/widget/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/widget/r;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->k:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dy;

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->j:Lcom/twitter/android/client/e;

    iget-object v3, v0, Lcom/twitter/android/dy;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/e;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->f(I)V

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {p0, v2}, Lcom/twitter/android/BaseListFragment;->c(I)V

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->c_()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_off"

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/fx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/fx;

    invoke-interface {v0}, Lcom/twitter/android/fx;->b()V

    :cond_2
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/twitter/android/BaseListFragment;->m:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->n:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
