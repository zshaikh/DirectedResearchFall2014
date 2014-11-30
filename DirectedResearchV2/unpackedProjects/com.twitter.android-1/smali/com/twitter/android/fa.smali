.class public abstract Lcom/twitter/android/fa;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected final a:Landroid/widget/ListAdapter;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method protected constructor <init>(Landroid/widget/ListAdapter;I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/fa;->b:I

    iput p2, p0, Lcom/twitter/android/fa;->c:I

    invoke-direct {p0}, Lcom/twitter/android/fa;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/fa;->d:Z

    new-instance v0, Lcom/twitter/android/cl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cl;-><init>(Lcom/twitter/android/fa;Lcom/twitter/android/fj;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/fa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/fa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/fa;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/fa;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/fa;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/fa;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/fa;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)I
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/fa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private e()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/fa;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract a()Ljava/lang/Object;
.end method

.method protected a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/fa;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/fa;->d:Z

    invoke-virtual {p0}, Lcom/twitter/android/fa;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected abstract b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected b()Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/fa;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    invoke-direct {p0}, Lcom/twitter/android/fa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/fa;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/twitter/android/fa;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/fa;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/fa;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/fa;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/fa;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/fa;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/android/fa;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/twitter/android/fa;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/fa;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget v0, p0, Lcom/twitter/android/fa;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/fa;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/fa;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->e(I)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/fa;->b:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/fa;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/fa;->a:Landroid/widget/ListAdapter;

    invoke-direct {p0, p1}, Lcom/twitter/android/fa;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
