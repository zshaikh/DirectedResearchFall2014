.class final Lcom/twitter/android/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    iget-wide v1, v1, Lcom/twitter/android/provider/ax;->F:J

    iget-object v3, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v3, v3, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    iget-object v3, v3, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    iget-object v3, v3, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->f(JLjava/lang/String;)V

    return-void
.end method
