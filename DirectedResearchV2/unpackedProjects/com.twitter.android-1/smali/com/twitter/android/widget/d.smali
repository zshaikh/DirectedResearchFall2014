.class public final Lcom/twitter/android/widget/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/widget/o;)V
    .locals 10

    const/16 v9, 0x21

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-nez p4, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/twitter/android/util/i;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v6, v3, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Lcom/twitter/android/widget/a;

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7, p4}, Lcom/twitter/android/widget/a;-><init>(ILjava/lang/String;Lcom/twitter/android/widget/o;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v6, v3, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_0
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/twitter/android/util/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Url;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Url;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    new-instance v3, Lcom/twitter/android/widget/f;

    invoke-direct {v3, v1, p4, v2}, Lcom/twitter/android/widget/f;-><init>(ILcom/twitter/android/widget/o;Lcom/twitter/android/api/TweetEntities$Url;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v2, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int v6, v2, v3

    iget v2, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v2, v3

    if-ltz v6, :cond_4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-gt v2, v7, :cond_4

    iget-object v7, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v7, v2, v7

    sub-int/2addr v2, v7

    add-int/2addr v3, v7

    :cond_5
    new-instance v7, Lcom/twitter/android/widget/f;

    invoke-direct {v7, v1, p4, v0}, Lcom/twitter/android/widget/f;-><init>(ILcom/twitter/android/widget/o;Lcom/twitter/android/api/TweetEntities$Url;)V

    invoke-virtual {v4, v7, v6, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Lcom/twitter/android/client/Session;Lcom/twitter/android/provider/ax;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 12

    const v4, 0x7f02008b

    const/16 v11, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v3

    :goto_0
    if-ge v5, v6, :cond_a

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->q:J

    invoke-virtual {p0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :pswitch_1
    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-wide v7, p1, Lcom/twitter/android/provider/ax;->D:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->m:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    const v1, 0x7f020087

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :pswitch_2
    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->l:Z

    if-eqz v1, :cond_5

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    :cond_5
    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    :pswitch_3
    if-nez v1, :cond_6

    iget-boolean v1, p1, Lcom/twitter/android/provider/ax;->m:Z

    if-nez v1, :cond_7

    :cond_6
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_5

    :pswitch_4
    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0700a9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
