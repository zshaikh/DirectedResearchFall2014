.class public final Lcom/twitter/android/b;
.super Lcom/twitter/android/de;


# instance fields
.field private final d:Lcom/twitter/android/widget/c;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;Lcom/twitter/android/widget/c;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3}, Lcom/twitter/android/de;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V

    iput-object p4, p0, Lcom/twitter/android/b;->d:Lcom/twitter/android/widget/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/twitter/android/provider/ax;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/twitter/android/provider/ax;

    invoke-direct {v1}, Lcom/twitter/android/provider/ax;-><init>()V

    invoke-static {p0}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iput-wide v2, v1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iput-wide v2, v1, Lcom/twitter/android/provider/ax;->s:J

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->createdAt:J

    iput-wide v2, v1, Lcom/twitter/android/provider/ax;->h:J

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->entities:[B

    iput-object v2, v1, Lcom/twitter/android/provider/ax;->x:[B

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->replyStatusId:J

    iput-wide v2, v1, Lcom/twitter/android/provider/ax;->j:J

    iget-boolean v0, v0, Lcom/twitter/android/provider/ActivityDataStatus;->hasPoi:Z

    iput-boolean v0, v1, Lcom/twitter/android/provider/ax;->u:Z

    :cond_1
    return-object v1
.end method

.method private static a(Landroid/widget/ImageView;I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :pswitch_1
    const v0, 0x7f020094

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020097

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02009d

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f02009a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 6

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v1, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/twitter/android/b;->a(Landroid/content/Context;Lcom/twitter/android/fq;JI)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v1, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/twitter/android/b;->a(Landroid/content/Context;Lcom/twitter/android/fq;JI)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    invoke-static {p1, v0}, Lcom/twitter/android/b;->b(Landroid/content/Context;Lcom/twitter/android/fq;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/da;

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->a()Lcom/twitter/android/provider/ax;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-wide v2, v0, Lcom/twitter/android/provider/ax;->s:J

    iget-object v0, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/android/util/w;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/da;

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/w;->d:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v3, v0, Lcom/twitter/android/fq;->i:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/twitter/android/b;->a(Landroid/widget/ImageView;Ljava/util/HashMap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/da;

    iget-object v1, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    iget v2, v2, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-static {p3, v10}, Lcom/twitter/android/b;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3, v11}, Lcom/twitter/android/b;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/twitter/android/provider/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ax;)V

    :goto_0
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/b;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v4, v0, Lcom/twitter/android/fq;->f:Landroid/widget/ImageView;

    invoke-static {v4, v1}, Lcom/twitter/android/b;->a(Landroid/widget/ImageView;I)V

    invoke-static {p3, v10}, Lcom/twitter/android/b;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v4}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;)I

    move-result v7

    if-ne v7, v10, :cond_2

    packed-switch v1, :pswitch_data_1

    :cond_0
    :goto_1
    :pswitch_2
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {p3, v11}, Lcom/twitter/android/b;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;)I

    move-result v5

    if-nez v5, :cond_5

    :goto_4
    iget-object v1, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_1

    const v5, 0x7f0b0146

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, v0, Lcom/twitter/android/fq;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/twitter/android/fq;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/b;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_3
    const v6, 0x7f0b0147

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_4
    const v6, 0x7f0b014a

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_5
    const v6, 0x7f0b014d

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_2
    if-ne v7, v11, :cond_3

    packed-switch v1, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_1

    :pswitch_7
    const v6, 0x7f0b0148

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v9

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_8
    const v6, 0x7f0b014b

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v9

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_9
    const v6, 0x7f0b014e

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v9

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    if-le v7, v11, :cond_0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    packed-switch v1, :pswitch_data_3

    :pswitch_a
    goto/16 :goto_1

    :pswitch_b
    const v7, 0x7f0b0149

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v8, v9

    aput-object v6, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_c
    const v7, 0x7f0b014c

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v8, v9

    aput-object v6, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_d
    const v7, 0x7f0b014f

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v8, v9

    aput-object v6, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_4
    iget-object v6, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    iget v6, v6, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v6, Lcom/twitter/android/b;->a:Landroid/text/style/StyleSpan;

    const/16 v7, 0x22

    invoke-static {v6, v1, v7}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataStatus;

    move-object v2, v1

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v3, v0, Lcom/twitter/android/fq;->f:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lcom/twitter/android/b;->a(Landroid/widget/ImageView;I)V

    invoke-static {p3, v10}, Lcom/twitter/android/b;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_7

    move-object v3, v2

    :goto_5
    invoke-static {p3, v6}, Lcom/twitter/android/b;->c(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;)I

    move-result v4

    if-nez v4, :cond_8

    move-object v1, v2

    :goto_6
    iget-object v4, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    if-nez v4, :cond_9

    :cond_6
    iget-object v1, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, v0, Lcom/twitter/android/fq;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/twitter/android/fq;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    move-object v3, v1

    goto :goto_5

    :cond_8
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataList;

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    iget v4, v4, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    sget-object v4, Lcom/twitter/android/b;->a:Landroid/text/style/StyleSpan;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0150

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v9

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    aput-object v1, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x22

    invoke-static {v4, v1, v3}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/da;

    iget-object v1, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/b;->b:Lcom/twitter/android/client/e;

    iget v2, v2, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-static {p3, v10}, Lcom/twitter/android/b;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3, v6}, Lcom/twitter/android/b;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/twitter/android/provider/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ax;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f030050

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/da;

    invoke-direct {v1, v0}, Lcom/twitter/android/da;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/b;->d:Lcom/twitter/android/widget/c;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :pswitch_1
    const v1, 0x7f030005

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/fq;

    invoke-direct {v1, v0}, Lcom/twitter/android/fq;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
