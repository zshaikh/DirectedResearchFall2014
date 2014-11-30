.class public final Lcom/twitter/android/bk;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/twitter/android/api/c;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/android/client/e;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/e;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/bk;->c:Lcom/twitter/android/client/e;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bk;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bk;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f070080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f070090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/twitter/android/util/q;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/c;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    invoke-virtual {p0}, Lcom/twitter/android/bk;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    iget-wide v2, v2, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/bk;->d:Landroid/widget/ImageView;

    const v0, 0x7f070080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/bk;->e:Landroid/widget/TextView;

    const v0, 0x7f0700c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/bk;->f:Landroid/widget/TextView;

    const v0, 0x7f07009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/bk;->c:Lcom/twitter/android/client/e;

    const/4 v2, 0x2

    iget-wide v3, v0, Lcom/twitter/android/api/c;->a:J

    iget-object v5, v0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/bk;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/twitter/android/bk;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/bk;->f:Landroid/widget/TextView;

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    :goto_1
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/bk;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_1
    invoke-direct {p0, v3}, Lcom/twitter/android/bk;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/bk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f070091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/bk;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/bk;->g:Landroid/view/ViewGroup;

    const v1, 0x7f0b0024

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/bk;->a(Landroid/view/View;I)V

    const v0, 0x7f070092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/bk;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/bk;->h:Landroid/view/ViewGroup;

    const v1, 0x7f0b002b

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/bk;->a(Landroid/view/View;I)V

    const v0, 0x7f070093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/bk;->i:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/bk;->i:Landroid/view/ViewGroup;

    const v1, 0x7f0b002c

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/bk;->a(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/twitter/android/bk;->g:Landroid/view/ViewGroup;

    iget v2, v0, Lcom/twitter/android/api/c;->n:I

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/bk;->b(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/twitter/android/bk;->h:Landroid/view/ViewGroup;

    iget v2, v0, Lcom/twitter/android/api/c;->l:I

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/bk;->b(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/twitter/android/bk;->i:Landroid/view/ViewGroup;

    iget v0, v0, Lcom/twitter/android/api/c;->k:I

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/bk;->b(Landroid/view/View;I)V

    move-object v1, p2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/bk;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/bk;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/twitter/android/bk;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/bk;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/twitter/android/bk;->i:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/bk;->b(Landroid/view/View;I)V

    move-object v1, p2

    goto/16 :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    iget-wide v3, v3, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    iget-wide v3, v3, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/bk;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/bk;->a:Lcom/twitter/android/api/c;

    iget-wide v3, v3, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070091
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
