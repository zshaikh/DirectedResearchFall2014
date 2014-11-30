.class final Lcom/twitter/android/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bs;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/bs;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/bs;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/bs;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/bs;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v3, v3, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    iget-wide v3, v3, Lcom/twitter/android/provider/ax;->z:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)V

    return-void
.end method
