.class final Lcom/twitter/android/av;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private synthetic a:Lcom/twitter/android/SULFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/SULFragment;Landroid/content/Context;I)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/av;->a:Lcom/twitter/android/SULFragment;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    const/4 v5, 0x0

    move-object v0, p3

    check-cast v0, Lcom/twitter/android/ah;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/go;

    invoke-virtual {v0}, Lcom/twitter/android/ah;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/x;

    iget-object v2, v1, Lcom/twitter/android/go;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/twitter/android/api/x;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/twitter/android/api/x;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/go;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/twitter/android/go;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    iget-object v2, v0, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    iget-object v2, v1, Lcom/twitter/android/go;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ge v4, v7, :cond_1

    iget-object v3, v0, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/c;

    iget-object v8, p0, Lcom/twitter/android/av;->a:Lcom/twitter/android/SULFragment;

    iget-object v8, v8, Lcom/twitter/android/SULFragment;->j:Lcom/twitter/android/client/e;

    const/4 v9, 0x1

    iget-wide v10, v3, Lcom/twitter/android/api/c;->a:J

    iget-object v3, v3, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v3}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    const v3, 0x7f0200e7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/av;->a:Lcom/twitter/android/SULFragment;

    invoke-virtual {v2}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ListTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/av;->a:Lcom/twitter/android/SULFragment;

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Lcom/twitter/android/SULFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "slug"

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    const-string v2, "members"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onboarding"

    iget-object v2, p0, Lcom/twitter/android/av;->a:Lcom/twitter/android/SULFragment;

    invoke-static {v2}, Lcom/twitter/android/SULFragment;->a(Lcom/twitter/android/SULFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/go;

    iget-object v2, p0, Lcom/twitter/android/av;->a:Lcom/twitter/android/SULFragment;

    invoke-direct {v1, v2, v0}, Lcom/twitter/android/go;-><init>(Lcom/twitter/android/SULFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/twitter/android/ah;

    invoke-direct {v0, p1}, Lcom/twitter/android/ah;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/twitter/android/ah;->a()V

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
