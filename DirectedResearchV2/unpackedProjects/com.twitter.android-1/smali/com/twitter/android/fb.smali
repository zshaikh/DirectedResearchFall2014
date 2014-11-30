.class final Lcom/twitter/android/fb;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[Lcom/twitter/android/eu;

.field private final b:I


# direct methods
.method constructor <init>([Lcom/twitter/android/eu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/fb;-><init>([Lcom/twitter/android/eu;I)V

    return-void
.end method

.method constructor <init>([Lcom/twitter/android/eu;I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/fb;->a:[Lcom/twitter/android/eu;

    iput p2, p0, Lcom/twitter/android/fb;->b:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/fb;->a:[Lcom/twitter/android/eu;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/fb;->a:[Lcom/twitter/android/eu;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/eu;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/ge;

    invoke-direct {v0, v1}, Lcom/twitter/android/ge;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/fb;->a:[Lcom/twitter/android/eu;

    aget-object v2, v2, p1

    iget-object v3, v0, Lcom/twitter/android/ge;->a:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/twitter/android/eu;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v2, Lcom/twitter/android/eu;->b:I

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/twitter/android/ge;->c:Landroid/widget/ImageView;

    iget v2, v2, Lcom/twitter/android/eu;->b:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lcom/twitter/android/ge;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/twitter/android/fb;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    :goto_2
    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ge;

    move-object v1, p2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/twitter/android/ge;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/fb;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    goto :goto_2
.end method
