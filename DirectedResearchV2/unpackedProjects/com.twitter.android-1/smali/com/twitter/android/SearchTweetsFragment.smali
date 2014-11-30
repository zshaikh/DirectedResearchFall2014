.class public Lcom/twitter/android/SearchTweetsFragment;
.super Lcom/twitter/android/TweetListFragment;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Landroid/widget/ImageView;

.field e:Ljava/lang/String;

.field f:Lcom/twitter/android/dh;

.field private r:Lcom/twitter/android/ce;

.field private s:Ljava/lang/String;

.field private t:[Landroid/widget/BaseAdapter;

.field private u:Z

.field private v:Landroid/location/Location;

.field private w:Lcom/twitter/android/api/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/location/Location;Lcom/twitter/android/api/e;)V
    .locals 6

    const/16 v5, 0x2c

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7f0c000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/twitter/android/util/g;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/client/e;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-static {v0, v2}, Lcom/twitter/android/util/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/twitter/android/api/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "&path=color:0x00000000%7Cfillcolor:0xAA000033"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/twitter/android/api/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/api/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string v3, "%7C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->p:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)V
    .locals 2

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->d(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->c(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/dh;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?z=18&q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    iget-object v1, v1, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    iget-object v2, v2, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    iget-object v1, v1, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tw"

    new-instance v3, Lcom/twitter/android/provider/ax;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/dh;->a(Landroid/view/View;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->d(I)V

    return-void
.end method

.method public final b(J)I
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->b(J)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsFragment;->t:[Landroid/widget/BaseAdapter;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/ce;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final b(I)Lcom/twitter/android/provider/ax;
    .locals 2

    new-instance v1, Lcom/twitter/android/provider/ax;

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->a()V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->a()V

    return-void
.end method

.method final d(I)V
    .locals 17

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsFragment;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/android/SearchTweetsFragment;->u:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    if-eqz v2, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "5mi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/SearchTweetsFragment;->s:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fetch type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v13, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsFragment;->f(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->j:Lcom/twitter/android/client/e;

    packed-switch p1, :pswitch_data_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fetch type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/4 v13, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/twitter/android/SearchTweetsFragment;->a:I

    goto :goto_2

    :pswitch_3
    const-wide/16 v5, 0x0

    :goto_3
    const/16 v7, 0x64

    packed-switch p1, :pswitch_data_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fetch type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchTweetsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_3

    :cond_4
    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    goto :goto_3

    :pswitch_5
    const-wide/16 v5, 0x0

    goto :goto_3

    :pswitch_6
    const-wide/16 v8, 0x0

    :goto_4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/SearchTweetsFragment;->c:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/SearchTweetsFragment;->b:I

    move/from16 v16, v0

    move-object v4, v3

    invoke-virtual/range {v2 .. v16}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/SearchTweetsFragment;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_7
    const-wide/16 v8, 0x0

    goto :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/SearchTweetsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_4

    :cond_6
    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_7
    const-wide/16 v8, 0x0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final f()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->f()V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public final g()Lcom/twitter/android/widget/r;
    .locals 6

    iget-object v3, p0, Lcom/twitter/android/SearchTweetsFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->t:[Landroid/widget/BaseAdapter;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->b(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int v1, v0, v4

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->i:Z

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-ge v2, v1, :cond_3

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/twitter/android/SearchTweetsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    sub-int v4, v0, v4

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/16 v4, 0x1f

    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    sub-int v1, v0, v2

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/widget/r;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_2
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    return-object v2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v13, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string v0, "query"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Z

    if-eqz v0, :cond_3

    const-string v0, "location"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0, p0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->l()V

    :cond_0
    :goto_0
    if-nez v9, :cond_1

    const-string v9, ""

    :cond_1
    iput-object v9, p0, Lcom/twitter/android/SearchTweetsFragment;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    if-nez v0, :cond_2

    new-instance v0, Lcom/twitter/android/eq;

    iget-object v5, p0, Lcom/twitter/android/SearchTweetsFragment;->j:Lcom/twitter/android/client/e;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/eq;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/c;Lcom/twitter/android/client/e;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/eq;->a(Lcom/twitter/android/dd;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    new-instance v4, Lcom/twitter/android/dh;

    iget-object v7, p0, Lcom/twitter/android/SearchTweetsFragment;->j:Lcom/twitter/android/client/e;

    move-object v5, v1

    move v6, v3

    move-object v8, p0

    move v10, v2

    move v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/twitter/android/dh;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;Lcom/twitter/android/widget/c;Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    const-string v0, "view_people"

    invoke-virtual {v12, v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v13, [Lcom/twitter/android/eu;

    new-instance v4, Lcom/twitter/android/eu;

    const v5, 0x7f0b0169

    invoke-virtual {p0, v5}, Lcom/twitter/android/SearchTweetsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/twitter/android/SearchUsersActivity;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-virtual {v6, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v6, "view_tweets"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v4, v5, v3, v1}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v4, v0, v3

    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/BaseAdapter;

    new-instance v4, Lcom/twitter/android/fb;

    invoke-direct {v4, v0}, Lcom/twitter/android/fb;-><init>([Lcom/twitter/android/eu;)V

    aput-object v4, v1, v3

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    aput-object v0, v1, v13

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->t:[Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/twitter/android/ce;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->t:[Landroid/widget/BaseAdapter;

    invoke-direct {v0, v1}, Lcom/twitter/android/ce;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->r:Lcom/twitter/android/ce;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3
    const-string v0, "data"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v4, "place"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "place"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/e;

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/e;

    const-string v4, "loc"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    iget-object v5, v0, Lcom/twitter/android/api/e;->d:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "place:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/twitter/android/api/e;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    if-eqz v4, :cond_0

    :cond_5
    iput-object v4, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->l()V

    invoke-direct {p0, v4, v0}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/location/Location;Lcom/twitter/android/api/e;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_7

    const-string v4, "latitude"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "longitude"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    new-instance v4, Landroid/location/Location;

    const-string v8, "gps"

    invoke-direct {v4, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    const-string v6, "location"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->c:Ljava/lang/String;

    move-object v0, v4

    :goto_3
    move-object v4, v0

    move-object v0, v5

    goto :goto_2

    :cond_7
    const-string v0, "loc"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v4, v0

    move-object v0, v5

    goto :goto_2

    :cond_8
    new-array v0, v3, [Lcom/twitter/android/eu;

    goto/16 :goto_1

    :cond_9
    move-object v0, v5

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "state_search_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/dq;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/dq;-><init>(Lcom/twitter/android/SearchTweetsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/SearchTweetsFragment;->b:I

    const-string v1, "nearby"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsFragment;->u:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/SearchTweetsFragment;->a(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v2, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v0, Lcom/twitter/android/provider/az;->o:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/SearchTweetsFragment;->o:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    const-string v8, "tag DESC, updated_at DESC"

    move-object v7, v6

    invoke-direct/range {v2 .. v8}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/au;->a:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/twitter/android/SearchTweetsFragment;->o:J

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/dh;->a:[Ljava/lang/String;

    const-string v4, "query=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/SearchTweetsFragment;->s:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->i()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/SearchTweetsFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/twitter/android/SearchTweetsFragment;->v:Landroid/location/Location;

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsFragment;->i()V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/location/Location;Lcom/twitter/android/api/e;)V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(DDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v5, v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onPause()V

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
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsFragment;->d(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsFragment;->f()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_search_id"

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
