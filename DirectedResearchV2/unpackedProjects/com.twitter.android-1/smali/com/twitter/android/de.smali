.class public abstract Lcom/twitter/android/de;
.super Landroid/support/v4/widget/CursorAdapter;


# static fields
.field protected static final a:Landroid/text/style/StyleSpan;


# instance fields
.field protected final b:Lcom/twitter/android/client/e;

.field protected final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/twitter/android/de;->a:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p3, p0, Lcom/twitter/android/de;->b:Lcom/twitter/android/client/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/de;->c:Ljava/util/ArrayList;

    return-void
.end method

.method protected static a(Ljava/util/ArrayList;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lcom/twitter/android/fq;JI)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, p1, Lcom/twitter/android/fq;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/twitter/android/de;->b(Ljava/util/ArrayList;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "user_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method protected static a(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static a(Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/twitter/android/de;->a(Landroid/widget/ImageView;Ljava/util/HashMap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0200e8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected static a(Landroid/widget/ImageView;Ljava/util/HashMap;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/de;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected static b(Landroid/content/Context;Lcom/twitter/android/fq;)Landroid/content/Intent;
    .locals 5

    iget-object v0, p1, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ListTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "list_id"

    iget-wide v3, v0, Lcom/twitter/android/provider/ActivityDataList;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list_name"

    iget-object v3, v0, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list_fullname"

    iget-object v3, v0, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "creator_id"

    iget-wide v3, v0, Lcom/twitter/android/provider/ActivityDataList;->creatorUserId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected static b(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/util/ArrayList;)[J
    .locals 6

    invoke-static {p0}, Lcom/twitter/android/de;->a(Ljava/util/ArrayList;)I

    move-result v3

    if-lez v3, :cond_1

    new-array v1, v3, [J

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v4, v0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    aput-wide v4, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static c(Landroid/database/Cursor;I)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;
.end method

.method protected final a(Landroid/content/Context;Lcom/twitter/android/fq;)Landroid/content/Intent;
    .locals 6

    iget-object v0, p2, Lcom/twitter/android/fq;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iget-object v0, p0, Lcom/twitter/android/de;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/twitter/android/de;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/twitter/android/de;->b:Lcom/twitter/android/client/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    const/4 v7, 0x2

    iget-wide v8, v1, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iget-object v10, v1, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/twitter/android/de;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-wide v7, v1, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public abstract a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
.end method
