.class final Lcom/twitter/android/du;
.super Lcom/twitter/android/fa;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/twitter/android/api/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/cr;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/fa;-><init>(Landroid/widget/ListAdapter;I)V

    iput-object p1, p0, Lcom/twitter/android/du;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v1, p0, Lcom/twitter/android/du;->b:Landroid/content/Context;

    const v2, 0x7f0b0030

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/du;->c:Lcom/twitter/android/api/c;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/twitter/android/du;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/du;->c:Lcom/twitter/android/api/c;

    invoke-virtual {v0}, Lcom/twitter/android/api/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/api/c;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/du;->c:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/du;->c:Lcom/twitter/android/api/c;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/twitter/android/du;->c:Lcom/twitter/android/api/c;

    invoke-virtual {p0}, Lcom/twitter/android/du;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
