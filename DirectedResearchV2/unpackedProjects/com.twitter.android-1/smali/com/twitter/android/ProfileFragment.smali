.class public Lcom/twitter/android/ProfileFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/dd;
.implements Lcom/twitter/android/widget/l;


# instance fields
.field private A:Lcom/twitter/android/ce;

.field private B:Lcom/twitter/android/ct;

.field private C:Lcom/twitter/android/gl;

.field private D:Lcom/twitter/android/du;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/net/Uri;

.field private L:Z

.field private M:I

.field a:Landroid/content/SharedPreferences;

.field b:J

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/twitter/android/api/c;

.field g:Lcom/twitter/android/bd;

.field private final h:Ljava/util/HashSet;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/HashSet;

.field private t:Lcom/twitter/android/FriendshipCache;

.field private u:Z

.field private v:Lcom/twitter/android/widget/CardRowView;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/twitter/android/widget/ShadowTextView;

.field private y:Landroid/widget/ImageButton;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->c:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->h:Ljava/util/HashSet;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->w:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 6

    const v3, 0x7f0b00d1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->L:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b00d3

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/ct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ct;->a(Lcom/twitter/android/api/c;)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/twitter/android/ProfileFragment;->c:I

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    const v3, 0x7f0b00d2

    invoke-virtual {p0, v1, v3}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    :goto_2
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->G:Landroid/widget/TextView;

    const v4, 0x7f0b0116

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/twitter/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-boolean v1, v1, Lcom/twitter/android/api/c;->h:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/ct;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ct;->a(Lcom/twitter/android/api/c;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, v3}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->G:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 12

    const/16 v9, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-object v0, v3, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    iget-wide v4, v3, Lcom/twitter/android/api/c;->a:J

    iput-wide v4, p0, Lcom/twitter/android/ProfileFragment;->b:J

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->L:Z

    const v0, 0x7f0b0008

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/net/Uri;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/widget/CardRowView;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->I:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const v0, 0x7f0700c1

    invoke-virtual {v4, v0}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070091

    const v7, 0x7f0b0024

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/twitter/android/api/c;->n:I

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/twitter/android/ProfileFragment;->a(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    const v6, 0x7f070092

    const v7, 0x7f0b002b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/twitter/android/api/c;->l:I

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/twitter/android/ProfileFragment;->a(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    const v6, 0x7f070093

    const v7, 0x7f0b002c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v3, Lcom/twitter/android/api/c;->k:I

    invoke-direct {p0, v0, v6, v5, v7}, Lcom/twitter/android/ProfileFragment;->a(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f070058

    invoke-virtual {v4, v0}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v4, v3, Lcom/twitter/android/api/c;->i:Z

    if-eqz v4, :cond_6

    const v4, 0x7f02012d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, v3, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v5, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {v4, v5, v6, v0}, Lcom/twitter/android/client/e;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, v3, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->L:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileFragment;->b(I)V

    :cond_0
    :goto_3
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileFragment;->c(Z)V

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->C:Lcom/twitter/android/gl;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/ProfileFragment;->l()V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->C:Lcom/twitter/android/gl;

    :cond_1
    invoke-virtual {v0, v2}, Lcom/twitter/android/gl;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lcom/twitter/android/gl;->clear()V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/UsersActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/eu;

    const v9, 0x7f0b002b

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/gl;->add(Ljava/lang/Object;)V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/UsersActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/eu;

    const v9, 0x7f0b002c

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/gl;->add(Ljava/lang/Object;)V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/eu;

    const v9, 0x7f0b0029

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/gl;->add(Ljava/lang/Object;)V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/ListsActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "profile"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/eu;

    const v9, 0x7f0b0025

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/gl;->add(Ljava/lang/Object;)V

    iget-boolean v7, p0, Lcom/twitter/android/ProfileFragment;->L:Z

    if-eqz v7, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/UsersActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Lcom/twitter/android/eu;

    const v7, 0x7f0b0028

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2, v4}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/gl;->add(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/twitter/android/gl;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0, v3}, Lcom/twitter/android/bd;->a(Lcom/twitter/android/api/c;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    invoke-virtual {v0, v3}, Lcom/twitter/android/du;->a(Lcom/twitter/android/api/c;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->A:Lcom/twitter/android/ce;

    if-nez v0, :cond_3

    new-instance v0, Lcom/twitter/android/ce;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/ct;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->C:Lcom/twitter/android/gl;

    aput-object v1, v3, v10

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    aput-object v1, v3, v11

    invoke-direct {v0, v3}, Lcom/twitter/android/ce;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->A:Lcom/twitter/android/ce;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->A:Lcom/twitter/android/ce;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    invoke-virtual {p0, v11}, Lcom/twitter/android/ProfileFragment;->c(I)V

    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->H:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-boolean v4, v3, Lcom/twitter/android/api/c;->h:Z

    if-eqz v4, :cond_7

    const v4, 0x7f0200d0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "friendship"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "friendship"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileFragment;->b(I)V

    const-string v4, "friendship"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/twitter/android/api/c;->q:J

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_a

    iget v0, v3, Lcom/twitter/android/api/c;->t:I

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->b(I)V

    goto/16 :goto_3

    :cond_a
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/twitter/android/client/e;->b(J)Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    goto/16 :goto_3
.end method

.method private c(Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    :cond_2
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->M:I

    goto :goto_0
.end method

.method private l()V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/ct;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/ct;-><init>(Lcom/twitter/android/ProfileFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/ct;

    new-instance v0, Lcom/twitter/android/bd;

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/bd;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    new-instance v0, Lcom/twitter/android/gl;

    invoke-direct {v0, v1}, Lcom/twitter/android/gl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->C:Lcom/twitter/android/gl;

    new-instance v0, Lcom/twitter/android/cr;

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    const v5, 0x7f02003e

    iget-object v7, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    move v4, v2

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/cr;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;ZILcom/twitter/android/widget/l;Lcom/twitter/android/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/cr;->a(Lcom/twitter/android/dd;)V

    new-instance v2, Lcom/twitter/android/du;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/du;-><init>(Landroid/content/Context;Lcom/twitter/android/cr;)V

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    const v6, 0x7f0b00b5

    const v5, 0x7f0b00b4

    const v4, 0x108009b

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/twitter/android/dn;

    invoke-direct {v1, p0}, Lcom/twitter/android/dn;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0060

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/twitter/android/do;

    invoke-direct {v1, p0}, Lcom/twitter/android/do;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0059

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/twitter/android/dp;

    invoke-direct {v1, p0}, Lcom/twitter/android/dp;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00f1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Lcom/twitter/android/dr;

    invoke-direct {v1, p0}, Lcom/twitter/android/dr;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00df

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b005b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->c:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/twitter/android/ProfileFragment;->c:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const v3, 0x7f0b000e

    invoke-virtual {p0, v3}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const v3, 0x7f0b00e0

    invoke-virtual {p0, v3}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    const v3, 0x7f0b0057

    invoke-virtual {p0, v3}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const v3, 0x7f0b00df

    invoke-virtual {p0, v3}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/cu;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/twitter/android/cu;-><init>(Lcom/twitter/android/ProfileFragment;ZLandroid/content/Context;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const v3, 0x7f0b0058

    invoke-virtual {p0, v3}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 9

    const/4 v8, 0x3

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->b(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0}, Lcom/twitter/android/bd;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0, p2}, Lcom/twitter/android/eq;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0}, Lcom/twitter/android/bd;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    move-wide v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0, v1}, Lcom/twitter/android/bd;->a(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    invoke-virtual {v0}, Lcom/twitter/android/du;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0, p2}, Lcom/twitter/android/cr;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    invoke-virtual {v0}, Lcom/twitter/android/du;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0}, Lcom/twitter/android/cr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->a:Landroid/content/SharedPreferences;

    const-string v6, "last_refresh"

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->b:J

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(ZIIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/twitter/android/ProfileFragment;->u:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    check-cast p2, Lcom/twitter/android/api/PromotedContent;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->h:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->A:Lcom/twitter/android/ce;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->A:Lcom/twitter/android/ce;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ce;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/eu;

    iget-object v0, v0, Lcom/twitter/android/eu;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    check-cast p2, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p2}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v3, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    const-string v2, "imp"

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/api/c;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-object v0, v0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-object v0, v0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-object v0, v0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-object v0, v0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-object p1, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->b(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget-wide v0, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0}, Lcom/twitter/android/bd;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    invoke-virtual {v0}, Lcom/twitter/android/du;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .locals 4

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->A:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/FriendshipCache;->c(J)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/e;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/twitter/android/client/e;->a(JZLjava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/FriendshipCache;->b(J)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method final a(ZI)V
    .locals 7

    const v5, 0x7f02003f

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->x:Lcom/twitter/android/widget/ShadowTextView;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/ShadowTextView;->setText(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    packed-switch p2, :pswitch_data_0

    :goto_0
    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v6, v2, v6}, Lcom/twitter/android/widget/ShadowTextView;->setPadding(IIII)V

    :cond_0
    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {v0, v6}, Lcom/twitter/android/widget/ShadowTextView;->setChecked(Z)V

    const v3, 0x7f0200cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v4, v4}, Lcom/twitter/android/widget/ShadowTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setChecked(Z)V

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/twitter/android/widget/ShadowTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/twitter/android/widget/ShadowTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final h()Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/ProfileFragment;->l()V

    :cond_0
    new-instance v0, Lcom/twitter/android/aw;

    invoke-direct {v0, p0}, Lcom/twitter/android/aw;-><init>(Lcom/twitter/android/ProfileFragment;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->k:Lcom/twitter/android/client/f;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileFragment;->b(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->L:Z

    iput-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileFragment;->c(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseListFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "list_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(IJJ)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->I:Landroid/widget/TextView;

    const-string v1, "bio"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    const-string v1, "web"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

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

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    invoke-virtual {v0}, Lcom/twitter/android/du;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_url"

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-wide v0, p0, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/twitter/android/provider/ap;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ownerId"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/twitter/android/ProfileFragment;->h(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->c:I

    invoke-static {v0, v4}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->c:I

    const v0, 0x7f0b00d2

    invoke-virtual {p0, v4, v0}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->b:J

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/twitter/android/client/e;->a(JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->x:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/twitter/android/client/e;->a(JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileFragment;->b(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->h(I)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iget-object v0, v0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/PostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07004d -> :sswitch_0
        0x7f070091 -> :sswitch_3
        0x7f070092 -> :sswitch_4
        0x7f070093 -> :sswitch_5
        0x7f0700ba -> :sswitch_7
        0x7f0700be -> :sswitch_6
        0x7f0700c3 -> :sswitch_1
        0x7f0700c4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "profile_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->a:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "imp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ProfileFragment;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "state_dialog_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Ljava/lang/String;

    const-string v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    :goto_0
    const-string v0, "state_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/c;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iput-boolean v2, p0, Lcom/twitter/android/ProfileFragment;->u:Z

    :goto_1
    invoke-virtual {p0, v4, p0}, Lcom/twitter/android/ProfileFragment;->a(ILcom/twitter/android/util/j;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ProfileFragment;->a(ILcom/twitter/android/util/j;)V

    return-void

    :cond_0
    new-instance v0, Lcom/twitter/android/FriendshipCache;

    invoke-direct {v0, v3}, Lcom/twitter/android/FriendshipCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/twitter/android/FriendshipCache;

    invoke-direct {v1, v3}, Lcom/twitter/android/FriendshipCache;-><init>(I)V

    iput-object v1, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/c;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    iput-boolean v4, p0, Lcom/twitter/android/ProfileFragment;->u:Z

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->w:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 12

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/twitter/android/provider/ap;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/gp;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/twitter/android/provider/ag;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v0, "limit"

    const-string v1, "3"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/ax;->c:[Ljava/lang/String;

    const-string v6, "updated_at DESC, _id ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/twitter/android/provider/r;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ownerId"

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v1}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v9, "friendship IS NULL OR friendship NOT IN (1,3,9,10,11) AND user_id!=?"

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    :goto_1
    new-instance v5, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/twitter/android/provider/p;->b:[Ljava/lang/String;

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_0

    :cond_0
    move-object v10, v4

    move-object v9, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ProfileFragment;->b(ILcom/twitter/android/util/j;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ProfileFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ProfileFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0}, Lcom/twitter/android/bd;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0, v1}, Lcom/twitter/android/eq;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Lcom/twitter/android/du;

    invoke-virtual {v0}, Lcom/twitter/android/du;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cr;

    invoke-virtual {v0, v1}, Lcom/twitter/android/cr;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->k()Z

    move-result v2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->k()Z

    move-result v2

    if-nez v2, :cond_0

    iput v1, p0, Lcom/twitter/android/ProfileFragment;->c:I

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->i()V

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->f(I)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_dialog_text"

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "state_friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->t:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_1

    const-string v0, "state_user"

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/q;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/e;->b([J)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->z:Lcom/twitter/android/service/ScribeEvent;

    array-length v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/widget/CardRowView;

    const v2, 0x7f07004d

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->w:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->w:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/widget/ShadowTextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->x:Lcom/twitter/android/widget/ShadowTextView;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->x:Lcom/twitter/android/widget/ShadowTextView;

    invoke-virtual {v2, p0}, Lcom/twitter/android/widget/ShadowTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->y:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->y:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070080

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->F:Landroid/widget/TextView;

    const v2, 0x7f0700c5

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->G:Landroid/widget/TextView;

    const v2, 0x7f0700c6

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->H:Landroid/widget/TextView;

    const v2, 0x7f0700bd

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->I:Landroid/widget/TextView;

    const v2, 0x7f0700be

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/twitter/android/ProfileFragment;->E:Landroid/widget/RelativeLayout;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ProfileFragment;->z:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method
