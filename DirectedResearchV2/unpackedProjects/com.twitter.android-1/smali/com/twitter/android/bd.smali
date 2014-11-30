.class final Lcom/twitter/android/bd;
.super Lcom/twitter/android/fa;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/android/client/e;

.field private final d:Lcom/twitter/android/eu;

.field private e:Lcom/twitter/android/api/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/twitter/android/eq;

    move-object v1, p1

    move v3, v2

    move-object v4, p3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/eq;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/c;Lcom/twitter/android/client/e;)V

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/fa;-><init>(Landroid/widget/ListAdapter;I)V

    iput-object p1, p0, Lcom/twitter/android/bd;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/bd;->c:Lcom/twitter/android/client/e;

    new-instance v0, Lcom/twitter/android/eu;

    const v1, 0x7f0b0054

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/bd;->d:Lcom/twitter/android/eu;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/bd;->b:Landroid/content/Context;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/twitter/android/bd;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/bd;->e:Lcom/twitter/android/api/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bd;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/bd;->e:Lcom/twitter/android/api/c;

    iget-wide v2, v2, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(I)Ljava/lang/Object;
    .locals 6

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/bd;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0, p1}, Lcom/twitter/android/eq;->getItemId(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/twitter/android/bd;->c:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/api/c;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/bd;->e:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bd;->e:Lcom/twitter/android/api/c;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    iget-object v1, p1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/eq;->a(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/twitter/android/bd;->e:Lcom/twitter/android/api/c;

    invoke-virtual {p0}, Lcom/twitter/android/bd;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bd;->d:Lcom/twitter/android/eu;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ge;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/eu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bd;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/twitter/android/fa;->b()Z

    move-result v0

    goto :goto_0
.end method
