.class public final Lcom/twitter/android/ba;
.super Lcom/twitter/android/de;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3}, Lcom/twitter/android/de;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V

    return-void
.end method

.method private a(Landroid/content/res/Resources;Landroid/widget/TextView;ILjava/util/ArrayList;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p4}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-ne v0, v6, :cond_1

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :pswitch_1
    const v2, 0x7f0b0152

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v2, 0x7f0b0155

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v2, 0x7f0b0158

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_2

    packed-switch p3, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    :pswitch_5
    const v2, 0x7f0b0153

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const v2, 0x7f0b0156

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_7
    const v2, 0x7f0b0159

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    if-le v0, v4, :cond_0

    add-int/lit8 v0, p5, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    packed-switch p3, :pswitch_data_2

    :pswitch_8
    goto/16 :goto_0

    :pswitch_9
    const v3, 0x7f0b0154

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    const v3, 0x7f0b0157

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    const v3, 0x7f0b015a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v0, v0, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/twitter/android/ba;->b:Lcom/twitter/android/client/e;

    iget v1, v1, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v1, Lcom/twitter/android/ba;->a:Landroid/text/style/StyleSpan;

    const/16 v2, 0x22

    invoke-static {v1, v0, v2}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0200e7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V
    .locals 5

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->b:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    iget-wide v2, p2, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-object v4, p2, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-wide v0, p2, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v1, v0, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/ba;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    const/16 v3, 0x8

    invoke-static {p1, v0, v1, v2, v3}, Lcom/twitter/android/ba;->a(Landroid/content/Context;Lcom/twitter/android/fq;JI)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/ba;->a(Landroid/content/Context;Lcom/twitter/android/fq;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    invoke-static {p1, v0}, Lcom/twitter/android/ba;->b(Landroid/content/Context;Lcom/twitter/android/fq;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 4

    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/android/util/w;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ba;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    iget-object v2, v0, Lcom/twitter/android/fq;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/w;->d:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/twitter/android/ba;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fq;

    check-cast v0, Lcom/twitter/android/o;

    iget-object v2, v0, Lcom/twitter/android/o;->i:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2, p2}, Lcom/twitter/android/ba;->a(Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    :cond_3
    iget-object v2, v0, Lcom/twitter/android/o;->b:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/twitter/android/o;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/twitter/android/o;->c:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/ba;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/android/o;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/twitter/android/ba;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, v6, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v6, Lcom/twitter/android/o;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V

    iget-object v2, v6, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ba;->a(Landroid/content/res/Resources;Landroid/widget/TextView;ILjava/util/ArrayList;I)V

    iget-object v0, v6, Lcom/twitter/android/o;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lcom/twitter/android/ba;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v6, Lcom/twitter/android/o;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ba;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/o;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lcom/twitter/android/ba;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lcom/twitter/android/ba;->c(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_2
    invoke-static {v4}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    iget-object v4, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/twitter/android/o;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v2}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    if-nez v4, :cond_4

    :cond_1
    iget-object v1, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v1, v0, Lcom/twitter/android/o;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/twitter/android/o;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    move-object v2, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataList;

    goto :goto_3

    :cond_4
    iget-object v4, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/twitter/android/ba;->b:Lcom/twitter/android/client/e;

    iget v5, v5, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    sget-object v5, Lcom/twitter/android/ba;->a:Landroid/text/style/StyleSpan;

    const v6, 0x7f0b015b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    aput-object v1, v7, v2

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v5, v1, v2}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/o;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lcom/twitter/android/ba;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p3, v2}, Lcom/twitter/android/ba;->c(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lcom/twitter/android/ba;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v1}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x0

    move-object v2, v1

    :goto_5
    invoke-static {v3}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    move-object v3, v1

    :goto_6
    iget-object v1, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/twitter/android/o;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V

    if-eqz v2, :cond_5

    iget-object v1, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    iget-object v1, v3, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_5
    iget-object v1, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, v0, Lcom/twitter/android/o;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v4, v2, v3}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/twitter/android/o;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    move-object v2, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataList;

    move-object v3, v1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    invoke-static {v5}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const v6, 0x7f0b015c

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v2

    const/4 v1, 0x2

    iget-object v2, v3, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    aput-object v2, v7, v1

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_8
    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    const v6, 0x7f0b015d

    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v2

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v7, v2

    const/4 v1, 0x3

    iget-object v2, v3, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    aput-object v2, v7, v1

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    const/4 v7, 0x2

    if-le v6, v7, :cond_9

    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0b015e

    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v8, v1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v8, v2

    const/4 v1, 0x2

    aput-object v6, v8, v1

    const/4 v1, 0x3

    iget-object v2, v3, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    aput-object v2, v8, v1

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_c
    iget-object v2, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/ba;->b:Lcom/twitter/android/client/e;

    iget v3, v3, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v0, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    sget-object v3, Lcom/twitter/android/ba;->a:Landroid/text/style/StyleSpan;

    const/16 v5, 0x22

    invoke-static {v3, v1, v5}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/android/o;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/twitter/android/ba;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    iget-object v2, v6, Lcom/twitter/android/o;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V

    iget-object v2, v6, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/ba;->a(Landroid/content/res/Resources;Landroid/widget/TextView;ILjava/util/ArrayList;I)V

    iget-object v0, v6, Lcom/twitter/android/o;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lcom/twitter/android/ba;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/ba;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_e

    const/4 v0, 0x0

    :goto_a
    iget-object v2, v6, Lcom/twitter/android/o;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-nez v0, :cond_f

    iget-object v0, v6, Lcom/twitter/android/o;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/twitter/android/o;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    goto :goto_a

    :cond_f
    iget-object v2, v6, Lcom/twitter/android/o;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v6, Lcom/twitter/android/o;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v6, Lcom/twitter/android/o;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v3, v6, Lcom/twitter/android/o;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/twitter/android/ba;->b:Lcom/twitter/android/client/e;

    const/4 v5, 0x2

    iget-wide v7, v2, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-object v9, v2, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/twitter/android/ba;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v3, v6, Lcom/twitter/android/o;->d:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v6, Lcom/twitter/android/o;->e:Landroid/widget/TextView;

    iget-wide v3, v0, Lcom/twitter/android/provider/ActivityDataStatus;->createdAt:J

    invoke-static {v1, v3, v4}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f030004

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/o;

    invoke-direct {v1, v0}, Lcom/twitter/android/o;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/ba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f030002

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/o;

    invoke-direct {v1, v0}, Lcom/twitter/android/o;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/ba;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
