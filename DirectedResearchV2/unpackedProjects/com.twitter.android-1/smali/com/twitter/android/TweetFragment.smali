.class public Lcom/twitter/android/TweetFragment;
.super Lcom/twitter/android/TweetListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/widget/o;


# static fields
.field private static final r:Landroid/support/v4/util/LruCache;


# instance fields
.field private A:I

.field private B:I

.field a:Lcom/twitter/android/client/Session;

.field b:Lcom/twitter/android/provider/ax;

.field c:Lcom/twitter/android/ae;

.field d:Ljava/lang/String;

.field e:Lcom/twitter/android/widget/TweetDetailView;

.field f:Lcom/twitter/android/api/v;

.field private s:Lcom/twitter/android/dm;

.field private t:Lcom/twitter/android/dm;

.field private u:Lcom/twitter/android/ce;

.field private v:Landroid/content/Intent;

.field private w:Z

.field private x:Z

.field private y:Landroid/view/View;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/twitter/android/TweetFragment;->r:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "en_gest"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private d(I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b4

    new-instance v3, Lcom/twitter/android/fh;

    invoke-direct {v3, p0, v0}, Lcom/twitter/android/fh;-><init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    :cond_0
    new-instance v1, Lcom/twitter/android/provider/ax;

    invoke-direct {v1, p2}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    iget-wide v2, v1, Lcom/twitter/android/provider/ax;->o:J

    iget-wide v4, v0, Lcom/twitter/android/provider/ax;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, v1, Lcom/twitter/android/provider/ax;->j:J

    iget-wide v4, v0, Lcom/twitter/android/provider/ax;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lcom/twitter/android/provider/ax;->h:J

    iget-wide v4, v0, Lcom/twitter/android/provider/ax;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->t:Lcom/twitter/android/dm;

    invoke-virtual {v2, v1}, Lcom/twitter/android/dm;->add(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->w:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->n:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    invoke-virtual {v0}, Lcom/twitter/android/ce;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->g_()V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/ce;->b(I)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/TweetFragment;->z:I

    iget v3, p0, Lcom/twitter/android/TweetFragment;->B:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->w:Z

    :cond_6
    return-void

    :cond_7
    iget-wide v2, v1, Lcom/twitter/android/provider/ax;->h:J

    iget-wide v4, v0, Lcom/twitter/android/provider/ax;->h:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->s:Lcom/twitter/android/dm;

    invoke-virtual {v2, v1}, Lcom/twitter/android/dm;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    invoke-virtual {v0, p3}, Lcom/twitter/android/ce;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fl;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v3, v3, Lcom/twitter/android/provider/ax;->o:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    iget v3, v0, Lcom/twitter/android/fl;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_ids"

    iget-object v0, v0, Lcom/twitter/android/fl;->c:[J

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    invoke-static {p4, p5, v1, v2}, Lcom/twitter/android/provider/aa;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/api/TweetEntities$Url;)V
    .locals 6

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/twitter/android/TweetFragment;->d(I)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->t:Lcom/twitter/android/service/ScribeEvent;

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-static {v0, p1, v1, v2}, Lcom/twitter/android/BaseActivity;->a(Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Url;J)V

    return-void
.end method

.method final a(Lcom/twitter/android/provider/ax;Lcom/twitter/android/client/Session;)V
    .locals 11

    iput-object p2, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    iput-object p1, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v7, p0, Lcom/twitter/android/TweetFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetDetailView;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->a(I)V

    iget-object v1, v0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/twitter/android/widget/TweetDetailView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/twitter/android/widget/TweetDetailView;->f:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/twitter/android/TweetFragment;->d(I)V

    :cond_0
    invoke-virtual {v6}, Lcom/twitter/android/client/e;->h()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/twitter/android/provider/ax;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/ax;->d:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v3}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TweetFragment;->v:Landroid/content/Intent;

    iget-object v1, v0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/view/ViewGroup;

    invoke-static {p2, p1, v0, p0}, Lcom/twitter/android/widget/d;->a(Lcom/twitter/android/client/Session;Lcom/twitter/android/provider/ax;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/dm;

    const v4, 0x7f030032

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/dm;-><init>(Lcom/twitter/android/TweetFragment;Landroid/content/Context;Lcom/twitter/android/widget/c;IZ)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->s:Lcom/twitter/android/dm;

    new-instance v0, Lcom/twitter/android/dm;

    const v4, 0x7f030033

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/dm;-><init>(Lcom/twitter/android/TweetFragment;Landroid/content/Context;Lcom/twitter/android/widget/c;IZ)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->t:Lcom/twitter/android/dm;

    new-instance v0, Lcom/twitter/android/ae;

    invoke-direct {v0}, Lcom/twitter/android/ae;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/ae;

    new-instance v0, Lcom/twitter/android/ce;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->s:Lcom/twitter/android/dm;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/twitter/android/ch;

    invoke-direct {v4, p0}, Lcom/twitter/android/ch;-><init>(Lcom/twitter/android/TweetFragment;)V

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->t:Lcom/twitter/android/dm;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/ae;

    aput-object v4, v1, v3

    invoke-direct {v0, v1}, Lcom/twitter/android/ce;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twitter/android/ce;->a:Z

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->y:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->w:Z

    iget-wide v0, p1, Lcom/twitter/android/provider/ax;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v0, Lcom/twitter/android/TweetFragment;->r:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v7}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->x:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    cmp-long v0, v9, v0

    if-gez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/android/api/v;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/ae;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/android/api/v;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/ae;->a(Landroid/content/Context;Lcom/twitter/android/api/v;)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->g_()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->x:Z

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->o:J

    iget-wide v4, p1, Lcom/twitter/android/provider/ax;->j:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/twitter/android/TweetFragment;->r:Landroid/support/v4/util/LruCache;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_2

    iget-wide v0, p1, Lcom/twitter/android/provider/ax;->o:J

    invoke-virtual {v6, v0, v1}, Lcom/twitter/android/client/e;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x23

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->d(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->d(I)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imp"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a_(J)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imp"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final b(I)Lcom/twitter/android/provider/ax;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ax;

    return-object v0
.end method

.method public final c(J)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "view_people"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-object v2, v1, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    if-eqz v2, :cond_0

    const-string v2, "place"

    iget-object v3, v1, Lcom/twitter/android/provider/ax;->C:Lcom/twitter/android/api/e;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-boolean v2, v1, Lcom/twitter/android/provider/ax;->u:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/twitter/android/provider/ax;->v:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v3, v1, Lcom/twitter/android/provider/ax;->w:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    const-string v1, "loc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->f_()V

    return-void
.end method

.method public final f_()V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->n:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/ce;

    invoke-virtual {v0}, Lcom/twitter/android/ce;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method final g_()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/twitter/android/TweetFragment;->B:I

    iget v2, p0, Lcom/twitter/android/TweetFragment;->A:I

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v3}, Lcom/twitter/android/widget/TweetDetailView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->t:Lcom/twitter/android/dm;

    invoke-virtual {v3}, Lcom/twitter/android/dm;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    mul-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    :cond_1
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/ae;

    invoke-virtual {v3}, Lcom/twitter/android/ae;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    mul-int/2addr v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->y:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "reply_to_tweet"

    new-array v2, v2, [Lcom/twitter/android/provider/ax;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->r:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-boolean v0, v3, Lcom/twitter/android/provider/ax;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v4, v4, Lcom/twitter/android/provider/ax;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/twitter/android/client/e;->c(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, v3, Lcom/twitter/android/provider/ax;->l:Z

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, v1, Lcom/twitter/android/widget/TweetDetailView;->e:Landroid/widget/ImageButton;

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->u:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v4, v4, Lcom/twitter/android/provider/ax;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, v3, Lcom/twitter/android/provider/ax;->l:Z

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, v1, Lcom/twitter/android/widget/TweetDetailView;->e:Landroid/widget/ImageButton;

    const v2, 0x7f02007a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    iget-wide v8, v4, Lcom/twitter/android/provider/ax;->q:J

    cmp-long v0, v8, v5

    if-nez v0, :cond_1

    iget-boolean v0, v4, Lcom/twitter/android/provider/ax;->r:Z

    if-eqz v0, :cond_1

    :goto_2
    new-instance v0, Lcom/twitter/android/fi;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/fi;-><init>(Lcom/twitter/android/TweetFragment;ZLcom/twitter/android/client/e;Lcom/twitter/android/provider/ax;JLandroid/support/v4/app/FragmentActivity;)V

    invoke-static {v7, v2, v0}, Lcom/twitter/android/client/e;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/twitter/android/TweetFragment;->h(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->v:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->v:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->d(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->a_(J)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->d(I)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->a_(J)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v0, v0, Lcom/twitter/android/provider/ax;->s:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->c(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0700a8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/di;

    invoke-direct {v0, p0}, Lcom/twitter/android/di;-><init>(Lcom/twitter/android/TweetFragment;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->k:Lcom/twitter/android/client/f;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    if-eqz p1, :cond_0

    const-string v0, "as"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/v;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/android/api/v;

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TweetFragment;->B:I

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TweetFragment;->z:I

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetFragment;->A:I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/az;->n:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iget-wide v5, v3, Lcom/twitter/android/provider/ax;->o:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ownerId"

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v5}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f030010

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/TweetFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "as"

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/android/api/v;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "f"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method
