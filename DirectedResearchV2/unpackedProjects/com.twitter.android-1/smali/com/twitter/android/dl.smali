.class public Lcom/twitter/android/dl;
.super Landroid/support/v4/widget/CursorAdapter;

# interfaces
.implements Lcom/twitter/android/widget/l;


# instance fields
.field private final a:Z

.field private final b:Lcom/twitter/android/client/e;

.field private final c:I

.field private final d:Lcom/twitter/android/widget/l;

.field private final e:Lcom/twitter/android/FriendshipCache;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Landroid/view/View$OnClickListener;

.field private m:Lcom/twitter/android/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p3, p0, Lcom/twitter/android/dl;->b:Lcom/twitter/android/client/e;

    iput-boolean p4, p0, Lcom/twitter/android/dl;->a:Z

    iput p5, p0, Lcom/twitter/android/dl;->c:I

    iput-object p6, p0, Lcom/twitter/android/dl;->d:Lcom/twitter/android/widget/l;

    iput-object p7, p0, Lcom/twitter/android/dl;->e:Lcom/twitter/android/FriendshipCache;

    iput p8, p0, Lcom/twitter/android/dl;->f:I

    iput p9, p0, Lcom/twitter/android/dl;->g:I

    if-lez p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/dl;->k:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dl;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Lcom/twitter/android/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dl;->m:Lcom/twitter/android/dd;

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dl;->d:Lcom/twitter/android/widget/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/android/widget/l;->a(Lcom/twitter/android/widget/UserView;J)V

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/dl;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/dl;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->b()I

    move-result v0

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dl;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcom/twitter/android/widget/UserView;

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/twitter/android/widget/UserView;->a(J)V

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/twitter/android/dl;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v6, v7, v4, v5, v1}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->b(Z)V

    const/4 v1, 0x7

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->c(Z)V

    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Lcom/twitter/android/api/PromotedContent;)V

    iget-object v6, p0, Lcom/twitter/android/dl;->e:Lcom/twitter/android/FriendshipCache;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v4, v5}, Lcom/twitter/android/FriendshipCache;->a(J)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v4, v5}, Lcom/twitter/android/FriendshipCache;->e(J)Z

    move-result v2

    :cond_0
    :goto_3
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/dl;->m:Lcom/twitter/android/dd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/dl;->m:Lcom/twitter/android/dd;

    invoke-interface {v0, p1, v1}, Lcom/twitter/android/dd;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    const/16 v4, 0x8

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_3
.end method

.method public getCount()I
    .locals 2

    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3

    const-wide/16 v1, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030019

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f070037

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/twitter/android/dl;->g:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/twitter/android/dl;->g:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f070057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/dl;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/dl;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dl;->i:Landroid/widget/Button;

    iget-object v2, p0, Lcom/twitter/android/dl;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f070056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dl;->j:Landroid/widget/TextView;

    :cond_1
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/twitter/android/dl;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/twitter/android/dl;->f:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/dl;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/dl;->h:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iget-boolean v1, p0, Lcom/twitter/android/dl;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Z)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/twitter/android/dl;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/twitter/android/dl;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/widget/UserView;->a(ILcom/twitter/android/widget/l;)V

    const v1, 0x7f02003e

    iget v2, p0, Lcom/twitter/android/dl;->c:I

    if-ne v1, v2, :cond_0

    const v1, 0x7f02003f

    iget v2, p0, Lcom/twitter/android/dl;->k:I

    iget v4, p0, Lcom/twitter/android/dl;->k:I

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/widget/UserView;->a(IIIII)V

    goto :goto_0
.end method
