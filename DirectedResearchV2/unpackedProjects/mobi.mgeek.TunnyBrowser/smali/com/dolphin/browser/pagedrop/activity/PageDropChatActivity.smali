.class public Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "PageDropChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static e:I

.field private static final p:[Ljava/lang/Integer;

.field private static s:Z

.field private static t:Z

.field private static v:Z

.field private static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/pagedrop/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Z

.field private C:Lcom/dolphin/browser/pagedrop/d;

.field private a:Landroid/widget/ListView;

.field private b:Lcom/dolphin/browser/pagedrop/a/a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/app/ProgressDialog;

.field private o:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private u:Landroid/app/AlertDialog;

.field private x:Lcom/dolphin/browser/pagedrop/activity/i;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    sput v1, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    .line 97
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->p:[Ljava/lang/Integer;

    .line 100
    sput-boolean v1, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->s:Z

    .line 101
    sput-boolean v1, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->t:Z

    .line 103
    sput-boolean v1, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->v:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    .line 82
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b:Lcom/dolphin/browser/pagedrop/a/a;

    .line 83
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d:Landroid/widget/ProgressBar;

    .line 87
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f:Landroid/view/View;

    .line 88
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    .line 90
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    .line 92
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    .line 93
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    .line 94
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    .line 95
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->o:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->u:Landroid/app/AlertDialog;

    .line 113
    iput-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->x:Lcom/dolphin/browser/pagedrop/activity/i;

    .line 699
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/pagedrop/activity/e;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->C:Lcom/dolphin/browser/pagedrop/d;

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 79
    sput-object p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(I)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 815
    .line 816
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->u:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 822
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e03e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 827
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/dolphin/browser/pagedrop/activity/f;

    invoke-direct {v2, p0, p2, p1}, Lcom/dolphin/browser/pagedrop/activity/f;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->u:Landroid/app/AlertDialog;

    .line 860
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->u:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->p()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 193
    const-string v0, "DBS Page Drop"

    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, p1, p2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 194
    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c(Z)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/pagedrop/a/c;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 795
    if-nez p1, :cond_1

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    const-string v1, "userID=? AND time=?"

    .line 800
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Lcom/dolphin/browser/pagedrop/a/c;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p1, Lcom/dolphin/browser/pagedrop/a/c;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 802
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 803
    const-string v3, "del"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v3

    const-string v4, "tabmessage_table"

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 805
    if-eqz v0, :cond_0

    .line 806
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->x:Lcom/dolphin/browser/pagedrop/activity/i;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/activity/i;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/a/c;)Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Lcom/dolphin/browser/pagedrop/a/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(I)V
    .locals 0

    .prologue
    .line 150
    sput p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    .line 151
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Z)V
    .locals 0

    .prologue
    .line 155
    sput-boolean p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->s:Z

    .line 156
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 452
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v2, p2

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 461
    if-eqz v3, :cond_1

    .line 462
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "android_id"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/pagedrop/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v0

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v1, v3}, Lcom/dolphin/browser/pagedrop/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i()V

    return-void
.end method

.method private static c(Z)V
    .locals 0

    .prologue
    .line 160
    sput-boolean p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->t:Z

    .line 161
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Z)V
    .locals 0

    .prologue
    .line 165
    sput-boolean p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->v:Z

    .line 166
    return-void
.end method

.method static synthetic d()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->p:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->t:Z

    return v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j()V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0348

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/a;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/pagedrop/activity/a;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 179
    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->o:Z

    .line 183
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j()V

    .line 184
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/a/a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b:Lcom/dolphin/browser/pagedrop/a/a;

    return-object v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    .line 199
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    return-void
.end method

.method static synthetic l(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->y:Landroid/widget/RelativeLayout;

    .line 307
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->z:Landroid/widget/TextView;

    .line 308
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->A:Landroid/widget/ImageView;

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/pagedrop/activity/d;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method

.method static synthetic m(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 385
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f6

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 387
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020210

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020204

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->y:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->y:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->z:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->A:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020207

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 394
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 395
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02020f

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 398
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08027c

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a018c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020203

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    return-void
.end method

.method static synthetic n(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 433
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 434
    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/pagedrop/activity/j;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V

    .line 435
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/activity/j;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 436
    return-void
.end method

.method static synthetic o(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/activity/i;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->x:Lcom/dolphin/browser/pagedrop/activity/i;

    return-object v0
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    sget v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(I)V

    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 442
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/activity/h;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V

    .line 443
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/h;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 444
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 447
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/activity/h;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V

    .line 448
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/h;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 449
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 775
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-static {}, Lcom/dolphin/browser/pagedrop/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->x:Lcom/dolphin/browser/pagedrop/activity/i;

    const/16 v1, 0x3ec

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/pagedrop/activity/i;->sendEmptyMessageDelayed(IJ)Z

    .line 777
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 727
    const-string v0, ""

    .line 733
    :goto_0
    return-object v0

    .line 728
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 729
    if-nez v0, :cond_1

    .line 730
    const-string v0, ""

    goto :goto_0

    .line 733
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 738
    const-string v0, ""

    .line 744
    :goto_0
    return-object v0

    .line 739
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 740
    if-nez v0, :cond_1

    .line 741
    const-string v0, ""

    goto :goto_0

    .line 744
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 408
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08027b

    if-ne v0, v1, :cond_1

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    const-string v0, "clk"

    const-string v1, "profile"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080294

    if-ne v0, v1, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->o()V

    goto :goto_0

    .line 414
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08027c

    if-ne v0, v1, :cond_0

    .line 415
    invoke-static {v4}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d(Z)V

    .line 416
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/pagedrop/activity/j;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V

    .line 419
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q:Ljava/lang/String;

    aput-object v0, v2, v5

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/activity/j;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q:Ljava/lang/String;

    .line 421
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    .line 422
    invoke-static {v5}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(Z)V

    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020337

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 427
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e044b

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    const-string v0, "clk"

    const-string v1, "send"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->requestWindowFeature(I)Z

    .line 206
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300a9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->setContentView(I)V

    .line 207
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 208
    invoke-static {v4}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(Z)V

    .line 209
    invoke-static {v4}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c(Z)V

    .line 210
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k()V

    .line 211
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300ad

    invoke-virtual {v0, v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    .line 214
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/i;

    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/activity/i;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->x:Lcom/dolphin/browser/pagedrop/activity/i;

    .line 216
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l()V

    .line 218
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->c()V

    .line 219
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080284

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f:Landroid/view/View;

    .line 220
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e06be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080282

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    .line 223
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080281

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d:Landroid/widget/ProgressBar;

    .line 229
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    .line 230
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    .line 238
    const-string v1, "launch"

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "blank"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    new-instance v0, Lcom/dolphin/browser/pagedrop/a/a;

    sget v1, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    sget-object v2, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/dolphin/browser/pagedrop/a/a;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b:Lcom/dolphin/browser/pagedrop/a/a;

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b:Lcom/dolphin/browser/pagedrop/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 249
    sget v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e:I

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 259
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 261
    if-eqz v1, :cond_3

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m()V

    .line 292
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h()V

    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 296
    new-instance v0, Lcom/dolphin/browser/pagedrop/activity/h;

    invoke-direct {v0, p0, v6}, Lcom/dolphin/browser/pagedrop/activity/h;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V

    .line 297
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/h;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 298
    return-void

    .line 238
    :cond_1
    const-string v0, "webpage"

    goto/16 :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    if-nez v1, :cond_4

    .line 266
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-boolean v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->B:Z

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->a(Ljava/lang/String;)V

    .line 269
    new-instance v1, Lcom/dolphin/browser/pagedrop/activity/b;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/pagedrop/activity/b;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/f/a/b;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->addObserver(Ljava/util/Observer;)V

    .line 283
    iput-boolean v5, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->B:Z

    goto :goto_2

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 376
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b(I)V

    .line 377
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->b()V

    .line 378
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b:Lcom/dolphin/browser/pagedrop/a/a;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->b:Lcom/dolphin/browser/pagedrop/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/a/a;->b()V

    .line 381
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 762
    const-string v0, "clk"

    const-string v1, "link"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/pagedrop/a/c;

    iget-object v0, v0, Lcom/dolphin/browser/pagedrop/a/c;->e:Ljava/lang/String;

    .line 768
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 770
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->finish()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 783
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 784
    :cond_0
    const/4 v0, 0x0

    .line 791
    :goto_0
    return v0

    .line 787
    :cond_1
    sget-object v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/pagedrop/a/c;

    .line 788
    const-string v1, "PageDropChatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLongClick url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dolphin/browser/pagedrop/a/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, v0, Lcom/dolphin/browser/pagedrop/a/c;->e:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(ILjava/lang/String;)V

    .line 791
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 364
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPause()V

    .line 365
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 323
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 324
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n()V

    .line 325
    sget-boolean v0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->s:Z

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i:Landroid/widget/ImageView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020337

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/pagedrop/c/a;->a()Lcom/dolphin/browser/pagedrop/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/c/a;->b()Z

    .line 355
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->C:Lcom/dolphin/browser/pagedrop/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/d;)V

    .line 357
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->p()V

    .line 360
    :cond_1
    return-void

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 332
    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 338
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d(Z)V

    .line 370
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/a;->b()V

    .line 371
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStop()V

    .line 372
    return-void
.end method
