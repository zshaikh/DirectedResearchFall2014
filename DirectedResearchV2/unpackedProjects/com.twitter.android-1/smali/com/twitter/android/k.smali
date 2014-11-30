.class public final Lcom/twitter/android/k;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Lcom/twitter/android/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/k;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lcom/twitter/android/api/PromotedContent;
    .locals 3

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iget-object v2, p0, Lcom/twitter/android/k;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/k;->b:Lcom/twitter/android/dd;

    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ar;

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/android/ar;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, p3}, Lcom/twitter/android/k;->a(Landroid/database/Cursor;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/twitter/android/api/PromotedContent;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/twitter/android/ar;->b:Landroid/widget/TextView;

    const v3, 0x7f0200a0

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    iget-object v0, v0, Lcom/twitter/android/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/k;->b:Lcom/twitter/android/dd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/k;->b:Lcom/twitter/android/dd;

    iget-wide v1, v1, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/twitter/android/dd;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/twitter/android/ar;->b:Landroid/widget/TextView;

    const v3, 0x7f0200a1

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/twitter/android/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/twitter/android/ar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/ar;

    invoke-direct {v1, v0}, Lcom/twitter/android/ar;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
