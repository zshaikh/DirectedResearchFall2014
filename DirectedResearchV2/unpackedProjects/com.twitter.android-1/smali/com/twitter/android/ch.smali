.class final Lcom/twitter/android/ch;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->o:J

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    iget-object v2, v0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    iget-object v1, v0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v3, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    iget-object v3, v3, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    iget-object v5, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/provider/ax;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/android/provider/ax;Lcom/twitter/android/client/e;JLcom/twitter/android/widget/o;Lcom/twitter/android/api/TweetEntities;)V

    return-object v0
.end method
