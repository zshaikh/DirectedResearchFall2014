.class public Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;
.super Landroid/view/CustomMenuActivity;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Lcom/dolphin/browser/download/ui/e;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/widget/AdapterView$OnItemClickListener;

.field private D:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/GridView;

.field private h:Lcom/dolphin/browser/download/ui/bn;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/CustomMenuListView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/dolphin/browser/download/ui/an;

.field private q:Ljava/io/File;

.field private r:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/dolphin/browser/download/ui/p;

.field private y:Lcom/dolphin/browser/download/b;

.field private z:Lcom/dolphin/browser/download/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 95
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->d:Lcom/dolphin/browser/download/ui/p;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    .line 232
    new-instance v0, Lcom/dolphin/browser/download/ui/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/h;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 681
    new-instance v0, Lcom/dolphin/browser/download/ui/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/l;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->B:Landroid/view/View$OnClickListener;

    .line 693
    new-instance v0, Lcom/dolphin/browser/download/ui/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/m;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->C:Landroid/widget/AdapterView$OnItemClickListener;

    .line 706
    new-instance v0, Lcom/dolphin/browser/download/ui/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/n;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->D:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Lcom/dolphin/browser/download/b;)Lcom/dolphin/browser/download/b;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Lcom/dolphin/browser/download/ui/p;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/p;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/download/ui/p;)V
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, p1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/dolphin/browser/download/ui/o;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 601
    :goto_1
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    .line 602
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b(Lcom/dolphin/browser/download/ui/p;)V

    goto :goto_0

    .line 588
    :pswitch_0
    const-string v0, "download management"

    const-string v1, "filemanager"

    const-string v2, "listview"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 593
    :pswitch_1
    const-string v0, "download management"

    const-string v1, "filemanager"

    const-string v2, "typeview"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/io/File;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 324
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v3

    .line 326
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03007a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080218

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 328
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080219

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 329
    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f020119

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0180

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/dolphin/browser/download/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 336
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 338
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 339
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v9

    .line 340
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 342
    if-eq v9, v4, :cond_1

    .line 344
    add-int/lit8 v4, v7, 0x1

    if-le v9, v4, :cond_0

    .line 346
    sub-int v4, v9, v7

    add-int/lit8 v4, v4, -0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v4, v9, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 347
    sub-int v4, v9, v7

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v12, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 357
    :goto_0
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0070

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 358
    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/download/e;->d(Landroid/content/Context;)V

    .line 359
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0083

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    new-instance v0, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v0, v12}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->c(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 362
    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0274

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v4, Lcom/dolphin/browser/download/ui/j;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/download/ui/j;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v6

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v7, 0x7f0e03c1

    new-instance v0, Lcom/dolphin/browser/download/ui/i;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/download/ui/i;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Ljava/io/File;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/AlertDialog;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 429
    return-void

    .line 349
    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 352
    :cond_1
    sub-int v4, v9, v7

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v12, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->f()V

    return-void
.end method

.method private b(Lcom/dolphin/browser/download/ui/p;)V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    invoke-virtual {v0, p0}, Landroid/view/CustomMenuListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 610
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 663
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Lcom/dolphin/browser/download/ui/p;)V

    .line 664
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_2

    .line 614
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->h()V

    .line 616
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->h:Lcom/dolphin/browser/download/ui/bn;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g:Landroid/widget/GridView;

    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/download/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->C:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 624
    sget-object v1, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_4

    .line 625
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 656
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 658
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->D:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 627
    :cond_4
    sget-object v1, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_5

    .line 628
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 630
    :cond_5
    sget-object v1, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_6

    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 634
    :cond_6
    sget-object v1, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_7

    .line 636
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 638
    :cond_7
    sget-object v1, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_8

    .line 640
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 642
    :cond_8
    sget-object v1, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_9

    .line 644
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 646
    :cond_9
    sget-object v1, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_a

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 650
    :cond_a
    sget-object v1, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_3

    .line 652
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1
.end method

.method private b(Ljava/io/File;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 433
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030077

    invoke-static {p0, v0, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 435
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08016c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 436
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08016e

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 437
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080170

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 438
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080172

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 440
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08016d

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 441
    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v5, 0x7f08016f

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 442
    sget-object v6, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v6, 0x7f080171

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 443
    sget-object v7, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v7, 0x7f080173

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 445
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v9

    sget-object v10, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v10, 0x7f0a0080

    invoke-virtual {v9, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v9

    .line 446
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v10

    sget-object v11, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v11, 0x7f0a007f

    invoke-virtual {v10, v11}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v10

    .line 448
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    invoke-static {p1, p0}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/e;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    new-instance v0, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0265

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    invoke-virtual {v0, v1, v12}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->create()Lcom/dolphin/browser/ui/AlertDialog;

    move-result-object v0

    .line 466
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 468
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 189
    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e()V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    invoke-virtual {v0, v3}, Landroid/view/CustomMenuListView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :goto_1
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->f()V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    invoke-virtual {v0, v2}, Landroid/view/CustomMenuListView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Z)I
    .locals 1

    .prologue
    .line 678
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private c()Ljava/io/File;
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->r:Ljava/util/Stack;

    return-object v0
.end method

.method private c(Lcom/dolphin/browser/download/ui/p;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 668
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 669
    :goto_0
    sget-object v3, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    if-ne p1, v3, :cond_1

    move v3, v1

    .line 670
    :goto_1
    sget-object v4, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    if-ne p1, v4, :cond_2

    .line 672
    :goto_2
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Z)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g:Landroid/widget/GridView;

    invoke-direct {p0, v3}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    return-void

    :cond_0
    move v0, v2

    .line 668
    goto :goto_0

    :cond_1
    move v3, v2

    .line 669
    goto :goto_1

    :cond_2
    move v1, v2

    .line 670
    goto :goto_2
.end method

.method private c(Ljava/io/File;)V
    .locals 8

    .prologue
    .line 472
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 473
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 475
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004f

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 477
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0177

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 479
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 480
    if-eqz v4, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0174

    .line 483
    :goto_0
    new-instance v5, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e0163

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0159

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/dolphin/browser/download/ui/k;

    invoke-direct {v5, p0, v4, p1}, Lcom/dolphin/browser/download/ui/k;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;ZLjava/io/File;)V

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/AlertDialog;

    .line 542
    return-void

    .line 480
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e015e

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Landroid/view/CustomMenuListView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->r:Ljava/util/Stack;

    .line 122
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->setContentView(I)V

    .line 124
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->v:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->u:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->t:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->s:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->w:Landroid/widget/ImageView;

    .line 136
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->f:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/CustomMenuListView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->n:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->m:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->k:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->o:Landroid/widget/TextView;

    .line 144
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b(Z)V

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->v:Landroid/view/View;

    new-instance v1, Lcom/dolphin/browser/download/ui/g;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/g;-><init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g:Landroid/widget/GridView;

    .line 167
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b:Landroid/view/View;

    .line 168
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c:Landroid/widget/ImageView;

    .line 169
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d:Landroid/widget/TextView;

    .line 170
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    .line 172
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->i:Landroid/widget/ImageView;

    .line 174
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->j:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g()V

    .line 178
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/ui/p;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->a()V

    .line 185
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->v:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/download/e;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcom/dolphin/browser/download/ui/an;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    invoke-direct {v0, p0, v2}, Lcom/dolphin/browser/download/ui/an;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0, v2}, Landroid/view/CustomMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuListView;->setCacheColorHint(I)V

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    invoke-virtual {v0, p0}, Landroid/view/CustomMenuListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/view/CustomMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    :goto_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 211
    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->q:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/ui/an;->a(Ljava/io/File;)V

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->a()V

    goto :goto_1
.end method

.method static synthetic f(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e()V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    return-object v0
.end method

.method private g()V
    .locals 9

    .prologue
    const v8, 0x7f0a0081

    const v7, 0x7f0201c0

    const v6, 0x7f0200b5

    const v5, 0x7f020021

    .line 553
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->v:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->u:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->t:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->w:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 564
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->u:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->s:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 567
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/CustomMenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->n:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06000a

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0053

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->o:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0068

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a004f

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 578
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->i:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 579
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->j:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 770
    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/m;->a()Lcom/dolphin/browser/download/ui/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->h:Lcom/dolphin/browser/download/ui/bn;

    .line 771
    return-void
.end method


# virtual methods
.method public a_()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/download/ui/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 775
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 776
    new-instance v4, Lcom/dolphin/browser/download/ui/f;

    invoke-direct {v4}, Lcom/dolphin/browser/download/ui/f;-><init>()V

    .line 777
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v5, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/dolphin/browser/download/ui/f;->a:Z

    .line 778
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e026d

    iput v0, v4, Lcom/dolphin/browser/download/ui/f;->b:I

    .line 779
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    new-instance v0, Lcom/dolphin/browser/download/ui/f;

    invoke-direct {v0}, Lcom/dolphin/browser/download/ui/f;-><init>()V

    .line 781
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v5, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-eq v4, v5, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/dolphin/browser/download/ui/f;->a:Z

    .line 782
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e026c

    iput v1, v0, Lcom/dolphin/browser/download/ui/f;->b:I

    .line 783
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    return-object v3

    :cond_0
    move v0, v2

    .line 777
    goto :goto_0

    :cond_1
    move v1, v2

    .line 781
    goto :goto_1
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_0

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    .line 803
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/p;)V

    .line 804
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 547
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d()V

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b(Lcom/dolphin/browser/download/ui/p;)V

    .line 549
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 302
    if-nez v0, :cond_0

    move v0, v1

    .line 320
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/download/ui/be;

    .line 306
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/be;->b()Ljava/io/File;

    move-result-object v0

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 309
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080436

    if-ne v3, v4, :cond_1

    .line 310
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Ljava/io/File;)V

    move v0, v2

    .line 311
    goto :goto_0

    .line 312
    :cond_1
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080437

    if-ne v3, v4, :cond_2

    .line 313
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Ljava/io/File;)V

    move v0, v2

    .line 314
    goto :goto_0

    .line 315
    :cond_2
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080438

    if-ne v3, v4, :cond_3

    .line 316
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b(Ljava/io/File;)V

    move v0, v2

    .line 317
    goto :goto_0

    :cond_3
    move v0, v1

    .line 320
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/m;->c()V

    .line 105
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->z:Lcom/dolphin/browser/download/e;

    .line 106
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d()V

    .line 107
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/p;)V

    .line 108
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->l:Landroid/view/CustomMenuListView;

    if-ne p2, v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->p:Lcom/dolphin/browser/download/ui/an;

    move-object v1, v0

    .line 284
    :goto_0
    if-eqz v1, :cond_0

    move-object v0, p3

    .line 285
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/download/e;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080436

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 290
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/CustomMenuActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 296
    return-void

    .line 280
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->y:Lcom/dolphin/browser/download/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 750
    sparse-switch p1, :sswitch_data_0

    .line 758
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/CustomMenuActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 752
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    :sswitch_1
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x1

    goto :goto_0

    .line 750
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Lcom/dolphin/browser/download/ui/f;)V
    .locals 2

    .prologue
    .line 790
    iget v0, p1, Lcom/dolphin/browser/download/ui/f;->b:I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e026d

    if-ne v0, v1, :cond_1

    .line 791
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/p;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->x:Lcom/dolphin/browser/download/ui/p;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_0

    .line 794
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/p;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 765
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 766
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 767
    return-void
.end method
