.class public final Lcom/twitter/android/bq;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[I

.field private c:[Z

.field private final d:[Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Z[Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/bq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/bq;->b:[I

    iput-object p3, p0, Lcom/twitter/android/bq;->c:[Z

    iput-object p4, p0, Lcom/twitter/android/bq;->d:[Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bq;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bq;->d:[Landroid/content/Intent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bq;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/ge;

    invoke-direct {v0, v1}, Lcom/twitter/android/ge;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v0, Lcom/twitter/android/ge;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/bq;->b:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v0, Lcom/twitter/android/ge;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twitter/android/bq;->c:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/bq;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ge;

    move-object v1, p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
