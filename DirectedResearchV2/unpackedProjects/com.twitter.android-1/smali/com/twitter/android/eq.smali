.class public final Lcom/twitter/android/eq;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Lcom/twitter/android/client/e;

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/twitter/android/widget/c;

.field private final e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/twitter/android/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/twitter/android/widget/c;Lcom/twitter/android/client/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/eq;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/eq;->c:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/twitter/android/eq;->e:Z

    iput-object p4, p0, Lcom/twitter/android/eq;->d:Lcom/twitter/android/widget/c;

    iput-object p5, p0, Lcom/twitter/android/eq;->b:Lcom/twitter/android/client/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/eq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/da;

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/twitter/android/eq;->g:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/twitter/android/eq;->g:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/eq;->g:I

    invoke-virtual {p0}, Lcom/twitter/android/eq;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/eq;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/twitter/android/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eq;->h:Lcom/twitter/android/dd;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/eq;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/eq;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/twitter/android/eq;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/eq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/eq;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/16 v0, 0x14

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cn;

    iget-object v3, p0, Lcom/twitter/android/eq;->a:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/twitter/android/cn;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/cn;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/twitter/android/cn;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/cn;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/da;

    iget-object v1, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/eq;->b:Lcom/twitter/android/client/e;

    iget v2, v2, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(F)V

    new-instance v1, Lcom/twitter/android/provider/ax;

    invoke-direct {v1, p3}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ax;)V

    iget-object v0, p0, Lcom/twitter/android/eq;->h:Lcom/twitter/android/dd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/eq;->h:Lcom/twitter/android/dd;

    invoke-interface {v0, p1, v1}, Lcom/twitter/android/dd;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/eq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/eq;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/eq;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/eq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/eq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 3

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/eq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/eq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/eq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/eq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/eq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/eq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v2, 0x14

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    const v3, 0x7f070048

    const v1, 0x7f03004f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/eq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/twitter/android/eq;->mContext:Landroid/content/Context;

    if-nez p2, :cond_3

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0050

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/eq;->f:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/eq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/twitter/android/eq;->mContext:Landroid/content/Context;

    if-nez p2, :cond_2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004f

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/eq;->f:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {v0, v6, v7}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p2

    goto :goto_2

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/eq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/eq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f03004c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/cn;

    invoke-direct {v2, p0}, Lcom/twitter/android/cn;-><init>(Lcom/twitter/android/eq;)V

    const v0, 0x7f0700b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/twitter/android/cn;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0700af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twitter/android/cn;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f030050

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/da;

    invoke-direct {v1, v0}, Lcom/twitter/android/da;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/eq;->d:Lcom/twitter/android/widget/c;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/c;)V

    iget-object v2, v1, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-boolean v3, p0, Lcom/twitter/android/eq;->e:Z

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/eq;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
