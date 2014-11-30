.class public Lcom/twitter/android/DiscoverFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/twitter/android/dd;
.implements Lcom/twitter/android/util/j;
.implements Lcom/twitter/android/widget/c;
.implements Lcom/twitter/android/widget/l;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Ljava/util/HashSet;

.field c:Lcom/twitter/android/g;

.field d:Z

.field private e:Landroid/os/Handler;

.field private f:Lcom/twitter/android/af;

.field private g:Lcom/twitter/android/cs;

.field private final h:Ljava/util/HashSet;

.field private r:Z

.field private s:Lcom/twitter/android/ce;

.field private t:Z

.field private u:Landroid/location/LocationManager;

.field private v:Lcom/twitter/android/ai;

.field private w:Ljava/util/HashSet;

.field private x:Lcom/twitter/android/FriendshipCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->h:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/DiscoverFragment;)Lcom/twitter/android/FriendshipCache;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    return-object v0
.end method

.method private b(I)V
    .locals 12

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/android/DiscoverFragment;->r:Z

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->l()Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/e;->a(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/DiscoverFragment;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->u:Landroid/location/LocationManager;

    invoke-static {v1}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-static {v1}, Lcom/twitter/android/platform/e;->b(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    const-wide/16 v1, 0x0

    cmpl-double v1, v7, v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmpl-double v1, v9, v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xc8

    invoke-virtual/range {v0 .. v11}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;JJIDDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xc8

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;JJIDDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DiscoverFragment;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/ea;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/ea;-><init>(Lcom/twitter/android/DiscoverFragment;Landroid/support/v4/app/FragmentActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b000f

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0102

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00b2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/provider/ax;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Z

    iget v0, p0, Lcom/twitter/android/DiscoverFragment;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v4, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    invoke-virtual {v0}, Lcom/twitter/android/g;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/dh;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-boolean v1, p0, Lcom/twitter/android/DiscoverFragment;->r:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/dh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/twitter/android/DiscoverFragment;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    invoke-virtual {v0}, Lcom/twitter/android/ce;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iput-boolean v2, p0, Lcom/twitter/android/DiscoverFragment;->d:Z

    :cond_2
    invoke-virtual {p0, v3}, Lcom/twitter/android/DiscoverFragment;->c(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/k;

    invoke-virtual {v0, p2}, Lcom/twitter/android/k;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/k;

    invoke-virtual {v0}, Lcom/twitter/android/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->l()Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0, p2}, Lcom/twitter/android/cr;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0}, Lcom/twitter/android/cr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/e;->a(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/twitter/android/api/PromotedContent;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->h:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ce;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    invoke-virtual {v2, v1}, Lcom/twitter/android/ce;->b(I)I

    move-result v2

    sub-int/2addr v0, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    invoke-virtual {v1}, Lcom/twitter/android/g;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/twitter/android/g;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/dh;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/twitter/android/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    invoke-virtual {v1}, Lcom/twitter/android/af;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/twitter/android/af;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-ne v3, v6, :cond_2

    invoke-virtual {v1}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/k;

    invoke-virtual {v1, v0}, Lcom/twitter/android/k;->a(Landroid/database/Cursor;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    invoke-virtual {v1, v7, v3, v4, v5}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    const-string v0, "type"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lcom/twitter/android/af;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v1}, Lcom/twitter/android/cs;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    check-cast p2, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p2}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    iget-object v3, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v8, v9}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    const-string v2, "imp"

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/DiscoverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Lcom/twitter/android/cs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "friendship_cache"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/DiscoverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_3
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/twitter/android/DiscoverFragment;->h(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/DiscoverFragment;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    invoke-virtual {v0}, Lcom/twitter/android/g;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->a()V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->notifyDataSetChanged()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->n:Z

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .locals 3

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/FriendshipCache;->c(J)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/twitter/android/client/e;->a(JZLjava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/FriendshipCache;->b(J)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected final a(Z)V
    .locals 13

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    iput-boolean v2, p0, Lcom/twitter/android/DiscoverFragment;->r:Z

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p0, v10}, Lcom/twitter/android/DiscoverFragment;->f(I)V

    invoke-virtual {v3, v2, v11, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    invoke-virtual {v3, v1, v11, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->c()V

    invoke-virtual {v3, v12, v11, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->a:Landroid/content/SharedPreferences;

    const-string v6, "last_refresh"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->b(Landroid/content/Context;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v10}, Lcom/twitter/android/DiscoverFragment;->f(I)V

    invoke-direct {p0, v10}, Lcom/twitter/android/DiscoverFragment;->b(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/k;

    invoke-virtual {v0}, Lcom/twitter/android/k;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v3, v1, v11, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0}, Lcom/twitter/android/cr;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v3, v12, v11, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    invoke-virtual {v0}, Lcom/twitter/android/g;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v10}, Lcom/twitter/android/DiscoverFragment;->f(I)V

    invoke-virtual {v3, v2, v11, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/twitter/android/dh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v10}, Lcom/twitter/android/DiscoverFragment;->f(I)V

    invoke-direct {p0, v10}, Lcom/twitter/android/DiscoverFragment;->b(I)V

    goto :goto_2
.end method

.method final e_()V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->u:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->t:Z

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/ai;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    if-nez v0, :cond_0

    new-instance v8, Lcom/twitter/android/g;

    new-instance v0, Lcom/twitter/android/dh;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/dh;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;Lcom/twitter/android/widget/c;Ljava/lang/String;II)V

    invoke-direct {v8, v1, v0}, Lcom/twitter/android/g;-><init>(Landroid/content/Context;Lcom/twitter/android/dh;)V

    iput-object v8, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    new-instance v0, Lcom/twitter/android/k;

    invoke-direct {v0, v1}, Lcom/twitter/android/k;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/twitter/android/gb;

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {v2, v3}, Lcom/twitter/android/gb;-><init>(Lcom/twitter/android/client/e;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/k;->a(Lcom/twitter/android/dd;)V

    new-instance v2, Lcom/twitter/android/af;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/af;-><init>(Landroid/content/Context;Lcom/twitter/android/k;)V

    iput-object v2, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    new-instance v0, Lcom/twitter/android/cr;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    const/4 v4, 0x0

    const v5, 0x7f02003e

    iget-object v7, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/cr;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/cr;->a(Lcom/twitter/android/dd;)V

    new-instance v2, Lcom/twitter/android/cs;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/cs;-><init>(Landroid/content/Context;Lcom/twitter/android/cr;)V

    iput-object v2, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    new-instance v0, Lcom/twitter/android/ce;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/twitter/android/fb;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/twitter/android/eu;

    const/4 v6, 0x0

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b0110

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/twitter/android/SULActivity;

    invoke-direct {v10, v1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b00fe

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/twitter/android/fb;-><init>([Lcom/twitter/android/eu;I)V

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Lcom/twitter/android/ce;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/twitter/android/ce;->a:Z

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->b:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->s:Lcom/twitter/android/ce;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "discover_prefs"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->a:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/twitter/android/ei;

    invoke-direct {v0, p0}, Lcom/twitter/android/ei;-><init>(Lcom/twitter/android/DiscoverFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->k:Lcom/twitter/android/client/f;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "friendship"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "friendship"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "friendship_cache"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    const-string v0, "friendship_cache"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v1, v0}, Lcom/twitter/android/FriendshipCache;->a(Lcom/twitter/android/FriendshipCache;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->u:Landroid/location/LocationManager;

    iget-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->u:Landroid/location/LocationManager;

    invoke-static {v0, p0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/DiscoverFragment;->t:Z

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/ai;

    invoke-direct {v0, p0}, Lcom/twitter/android/ai;-><init>(Lcom/twitter/android/DiscoverFragment;)V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/ai;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->v:Lcom/twitter/android/ai;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/DiscoverFragment;->a(ILcom/twitter/android/util/j;)V

    return-void

    :cond_2
    new-instance v0, Lcom/twitter/android/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/twitter/android/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 13

    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/twitter/android/provider/au;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/dh;->a:[Ljava/lang/String;

    const-string v4, "query is null AND unread!=2"

    const-string v6, "_id ASC "

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/l;->a:[Ljava/lang/String;

    const-string v4, "type=? AND latitude IS NULL AND longitude IS NULL"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "query_id DESC, time ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/twitter/android/provider/r;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v1}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v10, "friendship IS NULL OR friendship NOT IN (1,3,9,10,11) AND user_id!=?"

    new-array v11, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v7

    :goto_1
    new-instance v6, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/twitter/android/provider/p;->b:[Ljava/lang/String;

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_0
    move-object v11, v5

    move-object v10, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/DiscoverFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/DiscoverFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    invoke-virtual {v0}, Lcom/twitter/android/g;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dh;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->f:Lcom/twitter/android/af;

    invoke-virtual {v0}, Lcom/twitter/android/af;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/k;

    invoke-virtual {v0, v1}, Lcom/twitter/android/k;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->g:Lcom/twitter/android/cs;

    invoke-virtual {v0}, Lcom/twitter/android/cs;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cr;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->e_()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiscoverFragment;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->k()Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->X:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->x:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/q;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/DiscoverFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/e;->b([J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->w:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    invoke-virtual {p0}, Lcom/twitter/android/DiscoverFragment;->e_()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/twitter/android/DiscoverFragment;->p:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030035

    iget-object v3, p0, Lcom/twitter/android/DiscoverFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method
