.class public final Lcom/twitter/android/dh;
.super Landroid/support/v4/widget/CursorAdapter;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/util/SparseArray;

.field private c:Landroid/util/SparseArray;

.field private d:Landroid/util/SparseArray;

.field private e:Ljava/lang/String;

.field private f:Landroid/util/SparseArray;

.field private g:Lcom/twitter/android/client/e;

.field private final h:Ljava/util/ArrayList;

.field private final i:Lcom/twitter/android/widget/c;

.field private final j:Lcom/twitter/android/t;

.field private final k:I

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "identifier"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/dh;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/e;Lcom/twitter/android/widget/c;Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    new-instance v0, Lcom/twitter/android/t;

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/t;-><init>(Lcom/twitter/android/dh;Lcom/twitter/android/bf;)V

    iput-object v0, p0, Lcom/twitter/android/dh;->j:Lcom/twitter/android/t;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/dh;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/dh;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/dh;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/dh;->f:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    iput-object p4, p0, Lcom/twitter/android/dh;->i:Lcom/twitter/android/widget/c;

    iput-object p5, p0, Lcom/twitter/android/dh;->e:Ljava/lang/String;

    iput p7, p0, Lcom/twitter/android/dh;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/dh;->l:I

    iput p6, p0, Lcom/twitter/android/dh;->m:I

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gs;

    iget-object v1, p0, Lcom/twitter/android/dh;->d:Landroid/util/SparseArray;

    iget v0, v0, Lcom/twitter/android/gs;->f:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/twitter/android/dh;->m:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    const-class v4, Lcom/twitter/android/TweetActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ad:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ai:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gs;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v0, v2}, Lcom/twitter/android/gs;->a(Lcom/twitter/android/client/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/twitter/android/dh;->b(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gs;

    iget v1, v0, Lcom/twitter/android/gs;->k:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    :pswitch_3
    iget-object v1, p0, Lcom/twitter/android/dh;->c:Landroid/util/SparseArray;

    iget v2, v0, Lcom/twitter/android/gs;->f:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "query"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "name"

    iget-object v0, v0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget v1, p0, Lcom/twitter/android/dh;->m:I

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ab:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v2, v0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ag:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v2, v0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_1

    :pswitch_7
    iget v1, p0, Lcom/twitter/android/dh;->m:I

    packed-switch v1, :pswitch_data_3

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->aa:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v2, v0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->af:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v2, v0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gs;

    iget-object v1, p0, Lcom/twitter/android/dh;->b:Landroid/util/SparseArray;

    iget v2, v0, Lcom/twitter/android/gs;->f:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v0, v0, Lcom/twitter/android/gs;->k:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/twitter/android/dh;->m:I

    packed-switch v0, :pswitch_data_4

    :cond_1
    :goto_2
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/BaseActivity;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ac:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_2

    :pswitch_c
    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ah:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_2

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/twitter/android/dh;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    iget-wide v0, v0, Lcom/twitter/android/cc;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/dh;->mContext:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "user_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f070098
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method final a(Ljava/util/HashMap;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gs;

    iget-object v2, v0, Lcom/twitter/android/gs;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    invoke-virtual {v0, v2}, Lcom/twitter/android/gs;->b(Lcom/twitter/android/client/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v0, p0, Lcom/twitter/android/dh;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    iget-object v5, p0, Lcom/twitter/android/dh;->g:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$Data;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$Data;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/dh;->f:Landroid/util/SparseArray;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v2, v0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gc;

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/twitter/android/dh;->b:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iget-object v3, v3, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/twitter/android/gc;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/twitter/android/gc;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/twitter/android/dh;->m:I

    packed-switch v2, :pswitch_data_1

    iget-object v2, v0, Lcom/twitter/android/gc;->i:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/twitter/android/gc;->c:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iget-object v3, v3, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->displayUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->media:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->media:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/TwitterStory$Media;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v2, v0, Lcom/twitter/android/gc;->h:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/gc;->g:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object v2, p0, Lcom/twitter/android/dh;->c:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->query:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput v4, v0, Lcom/twitter/android/gc;->f:I

    :cond_3
    iget v1, p0, Lcom/twitter/android/dh;->l:I

    iput v1, v0, Lcom/twitter/android/gc;->l:I

    invoke-virtual {v0, v5}, Lcom/twitter/android/gc;->b(Lcom/twitter/android/client/e;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, v0, Lcom/twitter/android/gc;->j:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b016e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/twitter/android/gc;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/twitter/android/gc;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gs;

    iget-object v1, v0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory$Media;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/gs;->h:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/twitter/android/dh;->c:Landroid/util/SparseArray;

    iget-object v3, v2, Lcom/twitter/android/api/TwitterStory$Data;->query:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v6, v2, Lcom/twitter/android/api/TwitterStory$Data;->statusId:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/twitter/android/dh;->d:Landroid/util/SparseArray;

    iget-wide v2, v2, Lcom/twitter/android/api/TwitterStory$Data;->statusId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    iput v4, v0, Lcom/twitter/android/gs;->f:I

    iget v1, p0, Lcom/twitter/android/dh;->k:I

    iput v1, v0, Lcom/twitter/android/gs;->l:I

    invoke-virtual {v0, v5}, Lcom/twitter/android/gs;->b(Lcom/twitter/android/client/e;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gq;

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->status:Lcom/twitter/android/api/TwitterStory$Status;

    new-instance v2, Lcom/twitter/android/provider/ax;

    invoke-direct {v2}, Lcom/twitter/android/provider/ax;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, v0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/da;

    iget-object v6, v6, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget v7, v1, Lcom/twitter/android/api/TwitterStory$Status;->retweetCount:I

    iget v5, v5, Lcom/twitter/android/client/e;->b:F

    invoke-virtual {v6, v5}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->username:Ljava/lang/String;

    iput-object v5, v2, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-object v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/twitter/android/provider/ax;->g:Ljava/lang/String;

    iget-object v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->content:Ljava/lang/String;

    iput-object v5, v2, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    iget-object v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->userProfileImageUrl:Ljava/lang/String;

    iput-object v5, v2, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    iget-wide v8, v1, Lcom/twitter/android/api/TwitterStory$Status;->tweetId:J

    iput-wide v8, v2, Lcom/twitter/android/provider/ax;->s:J

    iget-wide v8, v1, Lcom/twitter/android/api/TwitterStory$Status;->userId:J

    iput-wide v8, v2, Lcom/twitter/android/provider/ax;->n:J

    iget-object v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->entities:Lcom/twitter/android/api/TweetEntities;

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->entities:Lcom/twitter/android/api/TweetEntities;

    invoke-virtual {v5}, Lcom/twitter/android/api/TweetEntities;->a()[B

    move-result-object v5

    iput-object v5, v2, Lcom/twitter/android/provider/ax;->x:[B

    :cond_8
    invoke-virtual {v6, v2}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ax;)V

    iget-object v2, p0, Lcom/twitter/android/dh;->d:Landroid/util/SparseArray;

    iget-wide v5, v1, Lcom/twitter/android/api/TwitterStory$Status;->tweetId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput v4, v0, Lcom/twitter/android/gq;->f:I

    const/16 v1, 0x64

    if-ge v7, v1, :cond_9

    iget-object v1, v0, Lcom/twitter/android/gq;->b:Landroid/widget/TextView;

    const v2, 0x7f0b0163

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, v0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/da;

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    goto/16 :goto_1

    :cond_9
    iget-object v1, v0, Lcom/twitter/android/gq;->b:Landroid/widget/TextView;

    const v2, 0x7f0b0164

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/au;

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory$Media;

    const-string v6, "photo"

    iget-object v7, v1, Lcom/twitter/android/api/TwitterStory$Media;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory$Data;->status:Lcom/twitter/android/api/TwitterStory$Status;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/au;->h:Ljava/lang/String;

    iget-object v1, v0, Lcom/twitter/android/au;->a:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/twitter/android/api/TwitterStory$Status;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/twitter/android/au;->b:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/twitter/android/api/TwitterStory$Status;->content:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Status;->userProfileImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/au;->d:Ljava/lang/String;

    iget-wide v6, v2, Lcom/twitter/android/api/TwitterStory$Status;->userId:J

    iput-wide v6, v0, Lcom/twitter/android/au;->e:J

    iget v1, v2, Lcom/twitter/android/api/TwitterStory$Status;->retweetCount:I

    const/16 v6, 0x64

    if-ge v1, v6, :cond_b

    iget-object v1, v0, Lcom/twitter/android/au;->c:Landroid/widget/TextView;

    const v6, 0x7f0b0163

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v2, Lcom/twitter/android/api/TwitterStory$Status;->retweetCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v1, p0, Lcom/twitter/android/dh;->d:Landroid/util/SparseArray;

    iget-wide v2, v2, Lcom/twitter/android/api/TwitterStory$Status;->tweetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput v4, v0, Lcom/twitter/android/au;->f:I

    :cond_a
    invoke-virtual {v0, v5}, Lcom/twitter/android/au;->a(Lcom/twitter/android/client/e;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/au;->b(Lcom/twitter/android/client/e;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, v0, Lcom/twitter/android/au;->c:Landroid/widget/TextView;

    const v6, 0x7f0b0164

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v2, Lcom/twitter/android/api/TwitterStory$Status;->retweetCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cc;

    iget-object v1, v2, Lcom/twitter/android/api/TwitterStory$Data;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory$User;

    const v2, 0x7f070058

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/twitter/android/cc;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b016f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-wide v3, v1, Lcom/twitter/android/api/TwitterStory$User;->userId:J

    iput-wide v3, v0, Lcom/twitter/android/cc;->c:J

    iget-object v3, v1, Lcom/twitter/android/api/TwitterStory$User;->profileImageUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/twitter/android/cc;->h:Ljava/lang/String;

    iget-object v3, v0, Lcom/twitter/android/cc;->a:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/twitter/android/api/TwitterStory$User;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/twitter/android/cc;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/twitter/android/api/TwitterStory$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, v1, Lcom/twitter/android/api/TwitterStory$User;->verified:Z

    if-eqz v3, :cond_c

    const v1, 0x7f02012d

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    invoke-virtual {v0, v5}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/client/e;)V

    goto/16 :goto_1

    :cond_c
    iget-boolean v1, v1, Lcom/twitter/android/api/TwitterStory$User;->isProtected:Z

    if-eqz v1, :cond_d

    const v1, 0x7f0200d0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_e
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/dh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/twitter/android/dh;->m:I

    packed-switch v0, :pswitch_data_1

    const v0, 0x7f030042

    invoke-virtual {v1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/twitter/android/gc;

    invoke-direct {v1, v0}, Lcom/twitter/android/gc;-><init>(Landroid/view/View;)V

    iget v2, p0, Lcom/twitter/android/dh;->m:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    iget-object v2, v1, Lcom/twitter/android/gs;->j:Landroid/view/View;

    iget-object v4, p0, Lcom/twitter/android/dh;->j:Lcom/twitter/android/t;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/twitter/android/gs;->j:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    iput v3, v1, Lcom/twitter/android/gs;->k:I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f030041

    invoke-virtual {v1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f030043

    invoke-virtual {v1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/gs;

    invoke-direct {v1, v0}, Lcom/twitter/android/gs;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/gs;->j:Landroid/view/View;

    iget-object v4, p0, Lcom/twitter/android/dh;->j:Lcom/twitter/android/t;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/twitter/android/gs;->j:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    const v0, 0x7f030044

    invoke-virtual {v1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/twitter/android/gq;

    invoke-direct {v1, v2}, Lcom/twitter/android/gq;-><init>(Landroid/view/View;)V

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/gq;

    iget-object v0, v0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/da;

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v4, p0, Lcom/twitter/android/dh;->i:Lcom/twitter/android/widget/c;

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/c;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_2

    :pswitch_4
    const v2, 0x7f030045

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/au;

    invoke-direct {v1, v0}, Lcom/twitter/android/au;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    const v2, 0x7f030046

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cc;

    invoke-direct {v1, v0}, Lcom/twitter/android/cc;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/dh;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
