.class public Lcom/dolphin/browser/download/ui/FileManageActivity;
.super Landroid/view/CustomMenuActivity;
.source "FileManageActivity.java"


# instance fields
.field private b:Landroid/view/CustomMenuListView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/io/File;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/dolphin/browser/download/ui/an;

.field private m:Z

.field private n:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View$OnClickListener;

.field private p:Lcom/dolphin/browser/theme/aq;

.field private q:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->m:Z

    .line 138
    new-instance v0, Lcom/dolphin/browser/download/ui/bf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/bf;-><init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->o:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/dolphin/browser/download/ui/bg;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/bg;-><init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->p:Lcom/dolphin/browser/theme/aq;

    .line 241
    new-instance v0, Lcom/dolphin/browser/download/ui/bh;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/bh;-><init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->q:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->h:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/FileManageActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    if-ne v0, p1, :cond_1

    move v0, v1

    .line 217
    :goto_1
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->h:Ljava/io/File;

    .line 218
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 219
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 220
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->e:Landroid/widget/TextView;

    if-nez v0, :cond_4

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    if-nez v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_5
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    if-nez v0, :cond_6

    .line 229
    new-instance v0, Lcom/dolphin/browser/download/ui/an;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/download/ui/an;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0, v3}, Landroid/view/CustomMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    :goto_6
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Ljava/lang/String;)V

    .line 238
    const-string v0, "FileManageActivity"

    const-string v3, "enterDirectory %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 216
    goto :goto_1

    :cond_2
    move v3, v2

    .line 218
    goto :goto_2

    :cond_3
    move v3, v2

    .line 219
    goto :goto_3

    :cond_4
    move v3, v2

    .line 220
    goto :goto_4

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->e:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0041

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/ui/an;->a(Ljava/io/File;)V

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->a()V

    goto :goto_6
.end method

.method private b()Ljava/io/File;
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->n:Ljava/util/Stack;

    return-object v0
.end method

.method private b(Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 345
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v3

    .line 346
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03007a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 347
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080218

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 348
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080219

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 349
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v7, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 358
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0095

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 359
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 360
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v6, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v6, 0x7f0b0089

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 361
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 363
    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/download/e;->d(Landroid/content/Context;)V

    .line 364
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 365
    instance-of v0, v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 366
    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->c(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 368
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0274

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v4, Lcom/dolphin/browser/download/ui/bj;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/download/ui/bj;-><init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v7, 0x7f0e03c1

    new-instance v0, Lcom/dolphin/browser/download/ui/bi;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/download/ui/bi;-><init>(Lcom/dolphin/browser/download/ui/FileManageActivity;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Ljava/io/File;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 421
    return-void

    .line 356
    :cond_1
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/download/ui/FileManageActivity;)Landroid/view/CustomMenuListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->setContentView(I)V

    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->c:Landroid/widget/LinearLayout;

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/CustomMenuListView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->e:Landroid/widget/TextView;

    .line 101
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->f:Landroid/widget/ImageView;

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->j:Landroid/widget/ImageView;

    .line 103
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->i:Landroid/view/View;

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->k:Landroid/widget/TextView;

    .line 105
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->d:Landroid/widget/ImageView;

    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->g:Landroid/widget/ImageView;

    .line 107
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->h()V

    .line 108
    return-void
.end method

.method private c(Ljava/io/File;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 425
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030077

    invoke-static {p0, v0, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 427
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08016c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08016e

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080170

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 430
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080172

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 432
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08016d

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 433
    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v5, 0x7f08016f

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 434
    sget-object v6, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v6, 0x7f080171

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 435
    sget-object v7, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v7, 0x7f080173

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 437
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v9

    sget-object v10, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v10, 0x7f0a0080

    invoke-virtual {v9, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v9

    .line 438
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v10

    sget-object v11, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v11, 0x7f0a007f

    invoke-virtual {v10, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v10

    .line 440
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-static {p1, p0}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/e;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 456
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0265

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    invoke-virtual {v0, v1, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 460
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    invoke-virtual {v0, p0}, Landroid/view/CustomMenuListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/download/ui/FileManageActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->h()V

    return-void
.end method

.method private d(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 464
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 465
    if-eqz v2, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0161

    move v1, v0

    .line 467
    :goto_0
    if-eqz v2, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0160

    .line 470
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 471
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0159

    new-instance v3, Lcom/dolphin/browser/download/ui/bk;

    invoke-direct {v3, p0, v2, p1}, Lcom/dolphin/browser/download/ui/bk;-><init>(Lcom/dolphin/browser/download/ui/FileManageActivity;ZLjava/io/File;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 492
    const-string v0, "FileManageActivity"

    const-string v1, "show delete dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 465
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e015e

    move v1, v0

    goto :goto_0

    .line 467
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e015d

    goto :goto_1
.end method

.method static synthetic e(Lcom/dolphin/browser/download/ui/FileManageActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->g()V

    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    invoke-virtual {v1, v0}, Landroid/view/CustomMenuListView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    invoke-virtual {v1, v2}, Landroid/view/CustomMenuListView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 135
    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->a()V

    .line 210
    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const v4, 0x7f0a004c

    .line 286
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 287
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    .line 288
    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060046

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a004a

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 290
    iget-object v3, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->e:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a016b

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 293
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->c:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201b8

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->j:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06000a

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0053

    invoke-virtual {v1, v3, v4}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0068

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/CustomMenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->b:Landroid/view/CustomMenuListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a000b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/CustomMenuListView;->setBackgroundColor(I)V

    .line 298
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0050

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 299
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0049

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->l:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->notifyDataSetChanged()V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 320
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/download/ui/be;

    .line 321
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/be;->b()Ljava/io/File;

    move-result-object v0

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 324
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080436

    if-ne v2, v3, :cond_0

    .line 325
    const-string v2, "download management"

    const-string v3, "longpress"

    const-string v4, "rename"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->b(Ljava/io/File;)V

    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 329
    :cond_0
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080437

    if-ne v2, v3, :cond_1

    .line 330
    const-string v2, "download management"

    const-string v3, "longpress"

    const-string v4, "delete"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->d(Ljava/io/File;)V

    move v0, v1

    .line 333
    goto :goto_0

    .line 334
    :cond_1
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080438

    if-ne v2, v3, :cond_2

    .line 335
    const-string v2, "download management"

    const-string v3, "longpress"

    const-string v4, "detail"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->c(Ljava/io/File;)V

    move v0, v1

    .line 338
    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->p:Lcom/dolphin/browser/theme/aq;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->n:Ljava/util/Stack;

    .line 74
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->c()V

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->d()V

    .line 76
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->b()Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Ljava/io/File;)V

    .line 83
    :cond_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->h:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->h:Ljava/io/File;

    if-eq v0, v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 311
    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 313
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/CustomMenuActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onResume()V

    .line 166
    iget-boolean v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->m:Z

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->g()V

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/download/ui/FileManageActivity;->m:Z

    .line 170
    return-void
.end method
