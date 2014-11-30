.class final Lcom/twitter/android/ct;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/twitter/android/api/c;

.field private c:Landroid/widget/Button;

.field private synthetic d:Lcom/twitter/android/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ProfileFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ct;->d:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/ct;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/c;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ct;->b:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ct;->b:Lcom/twitter/android/api/c;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/twitter/android/ct;->b:Lcom/twitter/android/api/c;

    invoke-virtual {p0}, Lcom/twitter/android/ct;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ct;->b:Lcom/twitter/android/api/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ct;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0700ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/ct;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/ct;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/twitter/android/ct;->d:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ct;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/twitter/android/ct;->a:Landroid/content/Context;

    const v2, 0x7f0b0053

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/ct;->b:Lcom/twitter/android/api/c;

    iget-object v4, v4, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
