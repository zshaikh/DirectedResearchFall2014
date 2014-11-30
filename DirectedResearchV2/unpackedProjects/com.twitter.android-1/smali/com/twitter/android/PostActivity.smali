.class public Lcom/twitter/android/PostActivity;
.super Lcom/twitter/android/BaseActivity;

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/cg;
.implements Lcom/twitter/android/dx;
.implements Lcom/twitter/android/util/j;


# instance fields
.field private A:Lcom/twitter/android/cj;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/location/LocationManager;

.field private D:Lcom/twitter/android/h;

.field private E:Lcom/twitter/android/gn;

.field private F:Landroid/content/SharedPreferences;

.field private G:Ljava/lang/String;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/twitter/android/ev;

.field private J:Lcom/twitter/android/cx;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/TextView;

.field private final M:Lcom/twitter/android/bp;

.field d:Z

.field e:J

.field f:J

.field g:Landroid/view/View;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/ProgressBar;

.field j:Lcom/twitter/android/widget/ShadowTextView;

.field k:Landroid/widget/MultiAutoCompleteTextView;

.field l:Lcom/twitter/android/e;

.field m:Lcom/twitter/android/client/Session;

.field private n:Ljava/util/HashMap;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->n:Ljava/util/HashMap;

    new-instance v0, Lcom/twitter/android/bp;

    invoke-direct {v0, p0}, Lcom/twitter/android/bp;-><init>(Lcom/twitter/android/PostActivity;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->M:Lcom/twitter/android/bp;

    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/twitter/android/cx;
    .locals 2

    new-instance v0, Lcom/twitter/android/cx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/twitter/android/cx;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/e;->a(Lcom/twitter/android/n;)V

    const/4 v1, 0x3

    iput v1, v0, Lcom/twitter/android/cx;->f:I

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->K:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/PostActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/PostActivity;I)V
    .locals 1

    const v0, 0x7f0b010f

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->w:Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/PostActivity;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/PostActivity;I)I
    .locals 1

    iget v0, p0, Lcom/twitter/android/PostActivity;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/PostActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/PostActivity;I)I
    .locals 0

    iput p1, p0, Lcom/twitter/android/PostActivity;->x:I

    return p1
.end method

.method private c(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private h()V
    .locals 11

    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->q:Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v0}, Lcom/twitter/android/e;->a()Landroid/location/Location;

    move-result-object v7

    iget-wide v0, p0, Lcom/twitter/android/PostActivity;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->e:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/client/e;->c(Lcom/twitter/android/client/Session;J)V

    :cond_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->f:J

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->G:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->g()Lcom/twitter/android/api/TweetEntities;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;JDDLjava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    iget-wide v3, p0, Lcom/twitter/android/PostActivity;->f:J

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->G:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->g()Lcom/twitter/android/api/TweetEntities;

    move-result-object v10

    move-wide v7, v5

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;JDDLjava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "home"

    invoke-super {p0, v0}, Lcom/twitter/android/BaseActivity;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private i()Z
    .locals 4

    iget-wide v0, p0, Lcom/twitter/android/PostActivity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->w:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    if-lez v0, :cond_2

    iget v3, p0, Lcom/twitter/android/PostActivity;->x:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v3, v2}, Lcom/twitter/android/client/e;->a(Z)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/e;->a(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->a()V

    goto :goto_0
.end method

.method final a(Lcom/twitter/android/cx;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->n:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/twitter/android/cx;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/twitter/android/bz;

    invoke-direct {v0, p0}, Lcom/twitter/android/bz;-><init>(Lcom/twitter/android/PostActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/android/cx;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/bz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/ev;

    invoke-virtual {v0}, Lcom/twitter/android/ev;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    iput-object p1, v0, Lcom/twitter/android/e;->a:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    return-void
.end method

.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/twitter/android/PostActivity;->u:Z

    return-void

    :cond_0
    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method final a([Landroid/os/Parcelable;)V
    .locals 13

    const/16 v12, 0x20

    const/16 v11, 0x40

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    aget-object v0, p1, v2

    check-cast v0, Lcom/twitter/android/provider/ax;

    iget-object v7, v0, Lcom/twitter/android/provider/ax;->p:Ljava/lang/String;

    iget-object v8, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v8, v0}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/provider/ax;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v2, v9, :cond_0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v9, v0, Lcom/twitter/android/provider/ax;->o:J

    iput-wide v9, p0, Lcom/twitter/android/PostActivity;->f:J

    iget-object v7, v0, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    if-eqz v7, :cond_0

    iget-object v0, v0, Lcom/twitter/android/provider/ax;->E:Lcom/twitter/android/api/PromotedContent;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->G:Ljava/lang/String;

    :cond_0
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Mention;

    iget-wide v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    cmp-long v8, v5, v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/Session;)V

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/c;

    move-result-object v4

    iget-object v4, v4, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/e;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->L:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/android/PostActivity;->w:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->M:Lcom/twitter/android/bp;

    invoke-virtual {v0, v2}, Lcom/twitter/android/bp;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/twitter/android/bp;->removeMessages(I)V

    :cond_0
    invoke-virtual {v0, v2, p1}, Lcom/twitter/android/bp;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/bp;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->C:Landroid/location/LocationManager;

    invoke-static {v0, p0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->t:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/h;-><init>(Lcom/twitter/android/PostActivity;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/h;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->M:Lcom/twitter/android/bp;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/h;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/bp;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->b(I)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->h()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f07004a -> :sswitch_1
        0x7f070069 -> :sswitch_0
    .end sparse-switch
.end method

.method final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    return-void

    :cond_0
    const v1, -0x10001

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->C:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->t:Z

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->M:Lcom/twitter/android/bp;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->D:Lcom/twitter/android/h;

    invoke-virtual {v0, v1}, Lcom/twitter/android/bp;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    invoke-virtual {v0, v1}, Lcom/twitter/android/e;->b(Lcom/twitter/android/n;)V

    iget v0, p0, Lcom/twitter/android/PostActivity;->o:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->e()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Landroid/widget/ImageButton;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->s:Landroid/widget/ImageButton;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final e()V
    .locals 3

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->j()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->H:Landroid/widget/TextView;

    rsub-int v2, v0, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/ShadowTextView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8c

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Lcom/twitter/android/api/TweetEntities;
    .locals 5

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/twitter/android/api/TweetEntities;

    invoke-direct {v0}, Lcom/twitter/android/api/TweetEntities;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    iget-object v3, v1, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v1, v1, Lcom/twitter/android/cx;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    iget-object v1, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x20

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/e;->a(Landroid/net/Uri;)Lcom/twitter/android/n;

    move-result-object v1

    if-eqz v1, :cond_4

    const v0, 0x7f0b00a8

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    const-string v0, "username"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v2

    new-array v3, v3, [C

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/text/Editable;->getChars(II[CI)V

    aget-char v3, v3, v6

    if-eq v3, v7, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/twitter/android/PostActivity;->o:I

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_5
    iput v3, p0, Lcom/twitter/android/PostActivity;->o:I

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->s:Landroid/widget/ImageButton;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/cx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/cx;)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p0, Lcom/twitter/android/PostActivity;->o:I

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/android/PostActivity;->o:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->r:Landroid/widget/ImageButton;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v0, Lcom/twitter/android/s;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "camera-t.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/cx;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/s;-><init>(Lcom/twitter/android/PostActivity;Ljava/io/File;Lcom/twitter/android/cx;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :pswitch_3
    if-ne p2, v3, :cond_0

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->A:Lcom/twitter/android/cj;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cj;->a(Landroid/accounts/Account;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public final onClickHandler(Landroid/view/View;)V
    .locals 9

    const/4 v3, 0x4

    const v8, 0x7f0b00aa

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;)I

    move-result v0

    if-le v0, v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v8}, Lcom/twitter/android/PostActivity;->c(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->C:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->u:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v0}, Lcom/twitter/android/e;->b()Lcom/twitter/android/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/e;->b(Lcom/twitter/android/n;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->d:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->b()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/twitter/android/PostActivity;->o:I

    if-ne v0, v5, :cond_5

    invoke-virtual {p0, v7}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_0

    :cond_5
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v8}, Lcom/twitter/android/PostActivity;->c(I)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/twitter/android/PostActivity;->o:I

    if-ne v0, v6, :cond_7

    invoke-virtual {p0, v7}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "camera-t.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v8}, Lcom/twitter/android/PostActivity;->c(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "owner_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "session_owner_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.pick_multiple"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07006a
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v0, 0x7f03002f

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/twitter/android/cj;

    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/twitter/android/cj;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/dx;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->A:Lcom/twitter/android/cj;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->F:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->F:Landroid/content/SharedPreferences;

    const-string v1, "url_hints"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->y:I

    iget v0, p0, Lcom/twitter/android/PostActivity;->y:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->v:Z

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v0, "account_name"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9, v0}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    move-object v8, v0

    :goto_2
    iput-object v8, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/widget/Navbar;

    const v0, 0x7f070064

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f07004a

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ShadowTextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/ShadowTextView;

    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->B:Landroid/widget/ImageButton;

    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->r:Landroid/widget/ImageButton;

    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->s:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->H:Landroid/widget/TextView;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->C:Landroid/location/LocationManager;

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/ev;

    sget-object v2, Lcom/twitter/android/provider/ak;->h:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ownerId"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, p0, v0, v9}, Lcom/twitter/android/ev;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/twitter/android/client/e;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/ev;

    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->g:Landroid/view/View;

    const v0, 0x7f070072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f070073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/twitter/android/p;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {}, Lcom/twitter/android/v;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->I:Lcom/twitter/android/ev;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/twitter/android/bo;

    invoke-direct {v1, p0}, Lcom/twitter/android/bo;-><init>(Lcom/twitter/android/PostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->b(Z)V

    invoke-virtual {v9}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->j()Lcom/twitter/android/api/o;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/twitter/android/api/o;->a:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->d:Z

    if-eqz p1, :cond_c

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/e;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    const-string v0, "do_post"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->q:Z

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "selection"

    const-string v1, "selection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v0}, Lcom/twitter/android/e;->c()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/n;

    invoke-virtual {v0}, Lcom/twitter/android/n;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :pswitch_0
    check-cast v0, Lcom/twitter/android/cx;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->J:Lcom/twitter/android/cx;

    const-string v2, "a"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/PostActivity;->o:I

    iget v2, p0, Lcom/twitter/android/PostActivity;->o:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    const/4 v2, 0x1

    :goto_6
    iget-object v5, v0, Lcom/twitter/android/cx;->e:Landroid/net/Uri;

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->r:Landroid/widget/ImageButton;

    const v5, 0x7f0200af

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_7
    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/cx;)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/twitter/android/PostActivity;->s:Landroid/widget/ImageButton;

    const v5, 0x7f0200bf

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_7

    :cond_7
    iget v5, v0, Lcom/twitter/android/cx;->f:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->r:Landroid/widget/ImageButton;

    const v5, 0x7f0200af

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v2, Lcom/twitter/android/s;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "camera-t.jpg"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, p0, v5, v0}, Lcom/twitter/android/s;-><init>(Lcom/twitter/android/PostActivity;Ljava/io/File;Lcom/twitter/android/cx;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/twitter/android/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_a
    move v0, v3

    :goto_8
    new-instance v1, Lcom/twitter/android/gn;

    invoke-direct {v1, p0, p0}, Lcom/twitter/android/gn;-><init>(Lcom/twitter/android/PostActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->E:Lcom/twitter/android/gn;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->G:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "draft_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/PostActivity;->e:J

    const-string v0, "android.intent.extra.UID"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/PostActivity;->f:J

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    iget v0, p0, Lcom/twitter/android/PostActivity;->z:I

    packed-switch v0, :pswitch_data_1

    :cond_b
    :goto_9
    const/4 v0, 0x1

    invoke-virtual {v9, v0, p0}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f07006d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->K:Landroid/widget/ImageView;

    const v0, 0x7f07006e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/c;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v9, v0, v1, v2}, Lcom/twitter/android/client/e;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->L:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ref_event"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->k:Lcom/twitter/android/service/ScribeEvent;

    const-string v0, "ref_event"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/twitter/android/e;

    invoke-direct {v0}, Lcom/twitter/android/e;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->F:Landroid/content/SharedPreferences;

    const-string v1, "location_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->q:Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    :goto_a
    const-string v0, "entities"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities;

    if-eqz v0, :cond_d

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/cx;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/android/cx;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/PostActivity;->o:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->s:Landroid/widget/ImageButton;

    const v3, 0x7f0200bf

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/cx;)V

    :cond_d
    move v0, v1

    goto/16 :goto_8

    :cond_e
    const-string v2, "com.twitter.android.post.status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    goto :goto_a

    :cond_f
    const-string v2, "com.twitter.android.post.reply"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    goto :goto_a

    :cond_10
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    goto :goto_a

    :cond_11
    const-string v2, "com.twitter.android.post.quote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    goto :goto_a

    :cond_12
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/PostActivity;->z:I

    goto :goto_a

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v0, "twitter"

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v0, "text"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "message"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    const-string v6, "post"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    :try_start_0
    const-string v1, "in_reply_to_status_id"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/twitter/android/PostActivity;->f:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    if-eqz v0, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_c
    const-string v1, "url"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "via"

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    const v5, 0x7f0b0055

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_d
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_16

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v4, v0}, Lcom/twitter/android/e;->a(Landroid/net/Uri;)Lcom/twitter/android/n;

    move-result-object v4

    if-nez v4, :cond_16

    invoke-direct {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/cx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/cx;)V

    :cond_16
    if-eqz v1, :cond_1b

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0, v1}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/CharSequence;)V

    const-string v0, "selection"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "selection"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    if-ltz v2, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1b

    invoke-virtual {v3, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_9

    :catch_0
    move-exception v1

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/twitter/android/PostActivity;->f:J

    goto/16 :goto_b

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_c

    :cond_18
    const-string v6, "quote"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x7f0b0000

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v11, "screen_name"

    invoke-virtual {v5, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v0, v6, v5

    invoke-virtual {p0, v1, v6}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    :cond_19
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_d

    :cond_1a
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    :cond_1b
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_9

    :pswitch_2
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v3, v0, v1}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    const-string v0, "reply_to_tweet"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-lez v1, :cond_1c

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a([Landroid/os/Parcelable;)V

    goto/16 :goto_9

    :cond_1c
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->E:Lcom/twitter/android/gn;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/gn;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1d
    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->k:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v9, v0, v1, v2}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0b00a0

    const v3, 0x108009b

    const v5, 0x1080027

    const v4, 0x7f0b00b3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/twitter/android/et;

    invoke-direct {v1, p0}, Lcom/twitter/android/et;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/twitter/android/es;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/es;-><init>(Lcom/twitter/android/PostActivity;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00dc

    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00d5

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/twitter/android/ey;

    invoke-direct {v1, p0}, Lcom/twitter/android/ey;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0117

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0118

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0119

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Lcom/twitter/android/ew;

    invoke-direct {v1, p0}, Lcom/twitter/android/ew;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0117

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b011a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b008a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v1, Lcom/twitter/android/ez;

    invoke-direct {v1, p0}, Lcom/twitter/android/ez;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0188

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->F:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url_hints"

    iget v2, p0, Lcom/twitter/android/PostActivity;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_enabled"

    iget-boolean v2, p0, Lcom/twitter/android/PostActivity;->u:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->j()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->h()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v0}, Lcom/twitter/android/e;->b()Lcom/twitter/android/ck;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/ck;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/ck;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/e;->a(Lcom/twitter/android/n;)V

    :cond_0
    iget-object v1, v0, Lcom/twitter/android/ck;->d:Landroid/location/Location;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/twitter/android/ck;->a(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41a00000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->performLongClick()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07006a
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->m:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0700d8
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onPause()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->removeDialog(I)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    const v0, 0x7f0b00a0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {p0}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const v0, 0x7f0700d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_service"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->p:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ay;

    invoke-virtual {v0, p0}, Lcom/twitter/android/ay;->a(Lcom/twitter/android/cg;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->C:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/e;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "data"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->l:Lcom/twitter/android/e;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "mode"

    iget v1, p0, Lcom/twitter/android/PostActivity;->z:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "do_post"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "text"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "selection"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "a"

    iget v1, p0, Lcom/twitter/android/PostActivity;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onStart()V

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->b()V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onStop()V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-lez p4, :cond_0

    add-int/lit8 v0, p4, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p4, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x2f

    if-le v0, v1, :cond_2

    const/16 v1, 0x3a

    if-lt v0, v1, :cond_5

    :cond_2
    if-le v0, v4, :cond_3

    const/16 v1, 0x5b

    if-lt v0, v1, :cond_5

    :cond_3
    const/16 v1, 0x60

    if-le v0, v1, :cond_4

    const/16 v1, 0x7a

    if-lt v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->b(Z)V

    goto :goto_0
.end method
