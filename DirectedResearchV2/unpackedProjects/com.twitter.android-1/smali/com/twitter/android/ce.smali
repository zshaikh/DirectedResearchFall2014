.class public final Lcom/twitter/android/ce;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Z

.field private final b:[Landroid/widget/BaseAdapter;

.field private final c:[I

.field private final d:I


# direct methods
.method private constructor <init>([I[Landroid/widget/BaseAdapter;I)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ce;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ce;->c:[I

    iput-object p2, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    const v0, 0x7f030038

    iput v0, p0, Lcom/twitter/android/ce;->d:I

    new-instance v1, Lcom/twitter/android/gt;

    invoke-direct {v1, p0}, Lcom/twitter/android/gt;-><init>(Lcom/twitter/android/ce;)V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {v3, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/widget/BaseAdapter;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f030038

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/ce;-><init>([I[Landroid/widget/BaseAdapter;I)V

    return-void
.end method

.method private c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ce;->c:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ce;->c:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v0}, Lcom/twitter/android/ce;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-ge p1, v1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0
.end method

.method public final areAllItemsEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/twitter/android/ce;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v0

    :goto_1
    if-nez v2, :cond_1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public final b(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v0, v5

    invoke-direct {p0, v2}, Lcom/twitter/android/ce;->c(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v6, v5

    move v3, v0

    move v4, v0

    move v1, p1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v4}, Lcom/twitter/android/ce;->c(I)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v7, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    sub-int v0, v1, v0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final getItemId(I)J
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v7, v6

    move v4, v0

    move v5, v0

    move v1, p1

    :goto_0
    if-ge v4, v7, :cond_3

    aget-object v8, v6, v4

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v5}, Lcom/twitter/android/ce;->c(I)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_0

    move-wide v0, v2

    :goto_1
    return-wide v0

    :cond_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v8, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    sub-int v0, v1, v0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final getItemViewType(I)I
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v7, v6

    move v3, v2

    move v4, v2

    move v5, v0

    move v1, p1

    :goto_0
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v4}, Lcom/twitter/android/ce;->c(I)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v8, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_1

    :cond_2
    sub-int v0, v1, v0

    :goto_2
    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-super {p0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v7, v6

    move v2, v3

    move v4, v3

    move v1, p1

    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v8, v6, v2

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-direct {p0, v4}, Lcom/twitter/android/ce;->c(I)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_3

    if-nez p2, :cond_0

    iget v0, p0, Lcom/twitter/android/ce;->d:I

    invoke-virtual {v5, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ce;->c:[I

    array-length v1, v0

    rem-int v1, v4, v1

    aget v1, v0, v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    if-ge v1, v0, :cond_5

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v8, v0, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_4
    if-ge v1, v0, :cond_5

    invoke-virtual {v8, v1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_5
    sub-int v0, v1, v0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 9

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/twitter/android/ce;->b:[Landroid/widget/BaseAdapter;

    array-length v6, v5

    move v3, v2

    move v4, v2

    move v1, p1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v4}, Lcom/twitter/android/ce;->c(I)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {v7, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    sub-int v0, v1, v0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-super {p0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ce;->a:Z

    return-void
.end method
