.class final Lcom/twitter/android/fh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v4/app/FragmentActivity;

.field private synthetic b:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fh;->b:Lcom/twitter/android/TweetFragment;

    iput-object p2, p0, Lcom/twitter/android/fh;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/fh;->b:Lcom/twitter/android/TweetFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/fh;->b:Lcom/twitter/android/TweetFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v2, v2, Lcom/twitter/android/provider/ax;->z:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
