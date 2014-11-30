.class final Lcom/twitter/android/cz;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private synthetic a:Lcom/twitter/android/DraftsFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/DraftsFragment;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/cz;->a:Lcom/twitter/android/DraftsFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dc;

    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/twitter/android/dc;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, v0, Lcom/twitter/android/dc;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/cz;->a:Lcom/twitter/android/DraftsFragment;

    iget-object v2, v2, Lcom/twitter/android/DraftsFragment;->j:Lcom/twitter/android/client/e;

    iget v2, v2, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/twitter/android/dc;->b:Landroid/widget/TextView;

    const v1, 0x7f0b012b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/twitter/android/dc;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/twitter/android/dc;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    new-instance v2, Lcom/twitter/android/dc;

    iget-object v1, p0, Lcom/twitter/android/cz;->a:Lcom/twitter/android/DraftsFragment;

    invoke-direct {v2, v1}, Lcom/twitter/android/dc;-><init>(Lcom/twitter/android/DraftsFragment;)V

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/twitter/android/dc;->a:Landroid/widget/ImageView;

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/twitter/android/dc;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
