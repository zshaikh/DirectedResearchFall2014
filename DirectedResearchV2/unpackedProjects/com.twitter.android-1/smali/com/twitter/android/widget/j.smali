.class final Lcom/twitter/android/widget/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/twitter/android/api/TweetEntities$Media;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/twitter/android/widget/TweetDetailView;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TweetDetailView;Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Media;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/widget/j;->d:Lcom/twitter/android/widget/TweetDetailView;

    iput-object p2, p0, Lcom/twitter/android/widget/j;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/widget/j;->b:Lcom/twitter/android/api/TweetEntities$Media;

    iput-object p4, p0, Lcom/twitter/android/widget/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/widget/j;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/widget/j;->a:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/ImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/twitter/android/widget/j;->b:Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v3, v3, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/twitter/android/widget/j;->d:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v3, v3, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/android/provider/ax;

    iget-object v3, v3, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_url"

    iget-object v3, p0, Lcom/twitter/android/widget/j;->b:Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v3, v3, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/widget/j;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
