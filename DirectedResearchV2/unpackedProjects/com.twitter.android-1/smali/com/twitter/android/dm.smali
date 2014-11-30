.class final Lcom/twitter/android/dm;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/widget/c;

.field private final c:I

.field private final d:Z

.field private synthetic e:Lcom/twitter/android/TweetFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/content/Context;Lcom/twitter/android/widget/c;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/dm;->e:Lcom/twitter/android/TweetFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/twitter/android/dm;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/dm;->b:Lcom/twitter/android/widget/c;

    iput p4, p0, Lcom/twitter/android/dm;->c:I

    iput-boolean p5, p0, Lcom/twitter/android/dm;->d:Z

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twitter/android/dm;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->o:J

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/dm;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dm;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/dm;->c:I

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/twitter/android/i;

    invoke-direct {v1, p2}, Lcom/twitter/android/i;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/twitter/android/i;->a:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/dm;->b:Lcom/twitter/android/widget/c;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/c;)V

    move-object v2, v1

    move-object v1, p2

    :goto_0
    iget-object v3, v2, Lcom/twitter/android/i;->a:Lcom/twitter/android/widget/TweetView;

    iget-object v4, p0, Lcom/twitter/android/dm;->e:Lcom/twitter/android/TweetFragment;

    iget-object v4, v4, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget v4, v4, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v3, v4}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v3, v2, Lcom/twitter/android/i;->a:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v3, v0}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ax;)V

    iget-boolean v3, p0, Lcom/twitter/android/dm;->d:Z

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dm;->a:Landroid/content/Context;

    const v3, 0x7f0b0172

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/i;->a(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/dm;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/i;

    move-object v2, v1

    move-object v1, p2

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/twitter/android/dm;->d:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/dm;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/twitter/android/dm;->a:Landroid/content/Context;

    const v4, 0x7f0b00e4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/twitter/android/provider/ax;->f:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/i;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/twitter/android/i;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
