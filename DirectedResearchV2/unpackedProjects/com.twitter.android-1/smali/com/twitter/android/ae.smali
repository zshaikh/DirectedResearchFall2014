.class final Lcom/twitter/android/ae;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/twitter/android/api/v;)V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p2, Lcom/twitter/android/api/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p2, Lcom/twitter/android/api/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/fl;

    const v2, 0x7f0b0038

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/twitter/android/api/v;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/twitter/android/api/v;->d:[J

    const/16 v5, 0xc

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/fl;-><init>(Ljava/lang/String;Ljava/lang/String;[JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p2, Lcom/twitter/android/api/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "0"

    iget-object v1, p2, Lcom/twitter/android/api/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/fl;

    const v2, 0x7f0b0029

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/twitter/android/api/v;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/twitter/android/api/v;->c:[J

    const/16 v5, 0xb

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/fl;-><init>(Ljava/lang/String;Ljava/lang/String;[JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/ae;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fl;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/fs;

    invoke-direct {v0, v1}, Lcom/twitter/android/fs;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fl;

    iget-object v3, v2, Lcom/twitter/android/fs;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/twitter/android/fl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/twitter/android/fs;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/android/fl;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    iget-object v2, p0, Lcom/twitter/android/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fs;

    move-object v2, v0

    move-object v1, p2

    goto :goto_0
.end method
