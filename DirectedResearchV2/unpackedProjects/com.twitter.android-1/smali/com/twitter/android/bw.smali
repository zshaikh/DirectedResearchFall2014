.class final Lcom/twitter/android/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v4, v0, Lcom/twitter/android/TweetListFragment;->j:Lcom/twitter/android/client/e;

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    iget v1, v1, Lcom/twitter/android/ed;->a:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->b(I)Lcom/twitter/android/provider/ax;

    move-result-object v3

    iget-object v0, v3, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    iget-object v5, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetListFragment;->h:Lcom/twitter/android/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, v9}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    move-object v5, v9

    goto :goto_1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reply_to_tweet"

    new-array v2, v6, [Lcom/twitter/android/provider/ax;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->r:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v2}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v4, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "user_id"

    iget-wide v3, v3, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_2
    iget-boolean v0, v3, Lcom/twitter/android/provider/ax;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    iget-wide v1, v3, Lcom/twitter/android/provider/ax;->o:J

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/twitter/android/client/e;->c(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->u:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    iget-wide v1, v3, Lcom/twitter/android/provider/ax;->o:J

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/twitter/android/provider/ax;->a(J)Z

    move-result v2

    new-instance v0, Lcom/twitter/android/aq;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/aq;-><init>(Lcom/twitter/android/bw;ZLcom/twitter/android/provider/ax;Lcom/twitter/android/client/e;Ljava/lang/String;JLandroid/content/Context;)V

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/twitter/android/client/e;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iput-object v3, v0, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, v6}, Lcom/twitter/android/TweetListFragment;->h(I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v3}, Lcom/twitter/android/provider/ax;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-object v2, v3, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->v:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    iput-object v3, v0, Lcom/twitter/android/TweetListFragment;->g:Lcom/twitter/android/provider/ax;

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/TweetListFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->h(I)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x7f0700a8
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
