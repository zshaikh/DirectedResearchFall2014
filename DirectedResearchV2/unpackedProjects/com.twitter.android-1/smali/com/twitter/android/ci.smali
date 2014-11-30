.class final Lcom/twitter/android/ci;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/client/e;

.field private c:[Lcom/twitter/android/cm;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/e;[Lcom/twitter/android/cm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/ci;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/client/e;

    iput-object p3, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    iput-object p4, p0, Lcom/twitter/android/ci;->d:Ljava/lang/String;

    return-void
.end method

.method private a(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/ci;->getCount()I

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


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ci;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/ci;->notifyDataSetChanged()V

    return-void
.end method

.method public final a([Lcom/twitter/android/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    invoke-virtual {p0}, Lcom/twitter/android/ci;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/twitter/android/ci;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    array-length v0, v0

    if-gt v0, v3, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "add_account"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/cm;->b:Lcom/twitter/android/api/c;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/ci;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/twitter/android/cm;->b:Lcom/twitter/android/api/c;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/cm;->b:Lcom/twitter/android/api/c;

    iget-wide v0, v0, Lcom/twitter/android/api/c;->a:J

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/twitter/android/ci;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/ci;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/twitter/android/ge;

    invoke-direct {v0, p2}, Lcom/twitter/android/ge;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    array-length v1, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    :cond_0
    iget-object v0, v0, Lcom/twitter/android/ge;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/ci;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ge;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/twitter/android/ge;->a:Landroid/widget/TextView;

    const v1, 0x7f0b013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    goto :goto_1

    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_2
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iget-object v3, p0, Lcom/twitter/android/ci;->c:[Lcom/twitter/android/cm;

    aget-object v3, v3, p1

    iget-object v4, v3, Lcom/twitter/android/cm;->b:Lcom/twitter/android/api/c;

    if-nez v4, :cond_6

    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    iget-object v3, v3, Lcom/twitter/android/cm;->a:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/twitter/android/widget/UserView;->b(Z)V

    invoke-virtual {v0, v9}, Lcom/twitter/android/widget/UserView;->c(Z)V

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    move-object v1, p2

    goto :goto_2

    :cond_6
    iget-object v5, v4, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-wide v6, v4, Lcom/twitter/android/api/c;->a:J

    if-eqz v5, :cond_7

    iget-object v8, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v8, v6, v7, v5}, Lcom/twitter/android/client/e;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_3
    iget-object v5, v4, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/twitter/android/api/c;->h:Z

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->b(Z)V

    iget-boolean v4, v4, Lcom/twitter/android/api/c;->i:Z

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/UserView;->c(Z)V

    iget-object v0, v3, Lcom/twitter/android/cm;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/ci;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
