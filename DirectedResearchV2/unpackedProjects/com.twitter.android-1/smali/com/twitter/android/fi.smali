.class final Lcom/twitter/android/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/twitter/android/client/e;

.field private synthetic c:Lcom/twitter/android/provider/ax;

.field private synthetic d:J

.field private synthetic e:Landroid/support/v4/app/FragmentActivity;

.field private synthetic f:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;ZLcom/twitter/android/client/e;Lcom/twitter/android/provider/ax;JLandroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    iput-boolean p2, p0, Lcom/twitter/android/fi;->a:Z

    iput-object p3, p0, Lcom/twitter/android/fi;->b:Lcom/twitter/android/client/e;

    iput-object p4, p0, Lcom/twitter/android/fi;->c:Lcom/twitter/android/provider/ax;

    iput-wide p5, p0, Lcom/twitter/android/fi;->d:J

    iput-object p7, p0, Lcom/twitter/android/fi;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/fi;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/fi;->c:Lcom/twitter/android/provider/ax;

    iget-wide v2, v2, Lcom/twitter/android/provider/ax;->z:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/fi;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    iget-object v2, p0, Lcom/twitter/android/fi;->c:Lcom/twitter/android/provider/ax;

    iget-wide v2, v2, Lcom/twitter/android/provider/ax;->o:J

    iget-object v4, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    iget-object v4, v4, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/fi;->d:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->q:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/fi;->e:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/twitter/android/PostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    const/high16 v4, 0x7f0b0000

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/twitter/android/fi;->c:Lcom/twitter/android/provider/ax;

    iget-object v7, v7, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/twitter/android/fi;->c:Lcom/twitter/android/provider/ax;

    iget-object v7, v7, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/twitter/android/TweetFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/twitter/android/fi;->f:Lcom/twitter/android/TweetFragment;

    iget-object v3, v3, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.twitter.android.post.quote"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/fi;->d:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1
.end method
