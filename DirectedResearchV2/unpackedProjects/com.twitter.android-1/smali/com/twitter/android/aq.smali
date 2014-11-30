.class final Lcom/twitter/android/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/twitter/android/provider/ax;

.field private synthetic c:Lcom/twitter/android/client/e;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:J

.field private synthetic f:Landroid/content/Context;

.field private synthetic g:Lcom/twitter/android/bw;


# direct methods
.method constructor <init>(Lcom/twitter/android/bw;ZLcom/twitter/android/provider/ax;Lcom/twitter/android/client/e;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/aq;->g:Lcom/twitter/android/bw;

    iput-boolean p2, p0, Lcom/twitter/android/aq;->a:Z

    iput-object p3, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iput-object p4, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    iput-object p5, p0, Lcom/twitter/android/aq;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/twitter/android/aq;->e:J

    iput-object p8, p0, Lcom/twitter/android/aq;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/twitter/android/aq;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/aq;->g:Lcom/twitter/android/bw;

    iget-object v0, v0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iget-wide v3, v3, Lcom/twitter/android/provider/ax;->D:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/aq;->g:Lcom/twitter/android/bw;

    iget-object v0, v0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iget-wide v3, v3, Lcom/twitter/android/provider/ax;->z:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/aq;->g:Lcom/twitter/android/bw;

    iget-object v0, v0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iget-wide v3, v3, Lcom/twitter/android/provider/ax;->o:J

    iget-object v5, p0, Lcom/twitter/android/aq;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/aq;->e:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->q:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/aq;->f:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twitter/android/aq;->g:Lcom/twitter/android/bw;

    iget-object v2, v2, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    const/high16 v3, 0x7f0b0000

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iget-object v6, v6, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/android/provider/ax;

    iget-object v6, v6, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/twitter/android/TweetListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.quote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/aq;->g:Lcom/twitter/android/bw;

    iget-object v1, v1, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/aq;->e:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0
.end method
