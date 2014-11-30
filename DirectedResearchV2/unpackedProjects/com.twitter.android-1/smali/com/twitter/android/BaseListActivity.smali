.class public Lcom/twitter/android/BaseListActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/twitter/android/util/j;
.implements Lcom/twitter/android/widget/m;
.implements Lcom/twitter/android/widget/p;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lcom/twitter/android/client/e;

.field protected b:Lcom/twitter/android/client/f;

.field protected c:Landroid/support/v4/widget/CursorAdapter;

.field protected d:Lcom/twitter/android/widget/Navbar;

.field private e:Z

.field private f:Z

.field private g:Lcom/twitter/android/fe;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/app/Activity;

.field private l:I

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/fe;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/fe;->a(Landroid/content/Context;)Lcom/twitter/android/fe;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/fe;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/fe;

    invoke-virtual {v0, p1}, Lcom/twitter/android/fe;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b00ce

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;IZZ)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    iput-boolean v5, p0, Lcom/twitter/android/BaseListActivity;->j:Z

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->o:Landroid/view/View;

    const v0, 0x7f07003c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->p:Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/twitter/android/BaseListActivity;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-boolean v4, p0, Lcom/twitter/android/BaseListActivity;->f:Z

    if-eqz p1, :cond_3

    const-string v2, "scroll_pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/BaseListActivity;->l:I

    const-string v2, "scroll_off"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/BaseListActivity;->m:I

    const-string v2, "pending_reqs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    :goto_2
    invoke-virtual {v1, v5, p0}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-nez v1, :cond_6

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/m;)V

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/BaseListActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v7, v1}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_2
    :goto_3
    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->d:Lcom/twitter/android/widget/Navbar;

    goto/16 :goto_0

    :cond_3
    iput v4, p0, Lcom/twitter/android/BaseListActivity;->l:I

    iput v4, p0, Lcom/twitter/android/BaseListActivity;->m:I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    const-string v3, "com.twitter.android.pick_multiple"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x7f07004a
        0x7f070069
    .end array-data
.end method

.method public a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/BaseListActivity;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    goto :goto_0
.end method

.method public final a_(Z)V
    .locals 0

    return-void
.end method

.method public final b(J)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseListActivity;->c(I)I

    return-void
.end method

.method public b(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;->d()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->onSearchRequested()Z

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070022 -> :sswitch_0
        0x7f07004a -> :sswitch_2
        0x7f070069 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b_()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseListActivity;->c(I)I

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/dy;

    invoke-direct {v1, p1}, Lcom/twitter/android/dy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final d(Ljava/lang/String;)Lcom/twitter/android/dy;
    .locals 4

    iget-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

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

.method public final g()Lcom/twitter/android/widget/r;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/twitter/android/widget/r;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call the multiple parameter versions of this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/fe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/fe;

    invoke-virtual {v0}, Lcom/twitter/android/fe;->a()V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;->d()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0700d7
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->b:Lcom/twitter/android/client/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->b:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0700d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->b:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->b:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_6

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dy;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->a:Lcom/twitter/android/client/e;

    iget-object v3, v0, Lcom/twitter/android/dy;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/twitter/android/client/e;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_2

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->f:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/twitter/android/BaseListActivity;->e:Z

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->a()V

    invoke-direct {p0, v4}, Lcom/twitter/android/BaseListActivity;->c(I)I

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/twitter/android/BaseListActivity;->b(Z)V

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/twitter/android/dy;->b:I

    packed-switch v1, :pswitch_data_1

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v5}, Lcom/twitter/android/BaseListActivity;->b(Z)V

    goto :goto_3

    :pswitch_4
    iget-boolean v1, p0, Lcom/twitter/android/BaseListActivity;->f:Z

    if-eqz v1, :cond_5

    iput-boolean v5, p0, Lcom/twitter/android/BaseListActivity;->e:Z

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->b()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/twitter/android/BaseListActivity;->c(I)I

    goto :goto_3

    :pswitch_5
    iget-boolean v1, p0, Lcom/twitter/android/BaseListActivity;->f:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, v5}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/BaseListActivity;->l:I

    iget v2, p0, Lcom/twitter/android/BaseListActivity;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "pending_reqs"

    iget-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    iput v2, p0, Lcom/twitter/android/BaseListActivity;->l:I

    iput v0, p0, Lcom/twitter/android/BaseListActivity;->m:I

    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/twitter/android/BaseListActivity;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_off"

    iget v1, p0, Lcom/twitter/android/BaseListActivity;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    :cond_2
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/twitter/android/BaseListActivity;->h:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method
