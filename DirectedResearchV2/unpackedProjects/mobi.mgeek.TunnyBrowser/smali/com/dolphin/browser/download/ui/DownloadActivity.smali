.class public Lcom/dolphin/browser/download/ui/DownloadActivity;
.super Landroid/view/CustomMenuActivity;
.source "DownloadActivity.java"

# interfaces
.implements Lcom/dolphin/browser/download/ui/e;


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private B:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private C:Lcom/dolphin/browser/theme/aq;

.field private D:Lcom/b/a/a/b;

.field private E:Lcom/dolphin/browser/download/ui/am;

.field private F:Lcom/dolphin/browser/download/b;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ExpandableListView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/database/Cursor;

.field private k:Lcom/dolphin/browser/download/ui/bc;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ListView;

.field private o:Lcom/dolphin/browser/download/ui/aw;

.field private p:Landroid/widget/GridView;

.field private q:Lcom/dolphin/browser/download/ui/ay;

.field private r:J

.field private s:Lcom/dolphin/browser/download/e;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/View;

.field private v:Landroid/database/ContentObserver;

.field private w:Landroid/view/View;

.field private x:Landroid/app/ProgressDialog;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 147
    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/download/ui/DownloadActivity;->b:I

    .line 148
    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/download/ui/DownloadActivity;->c:I

    .line 149
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/download/ui/DownloadActivity;->d:I

    .line 150
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/download/ui/DownloadActivity;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 382
    new-instance v0, Lcom/dolphin/browser/download/ui/ad;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/ad;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->y:Landroid/view/View$OnClickListener;

    .line 394
    new-instance v0, Lcom/dolphin/browser/download/ui/ae;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/ae;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->z:Landroid/widget/AdapterView$OnItemClickListener;

    .line 408
    new-instance v0, Lcom/dolphin/browser/download/ui/af;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/af;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 423
    new-instance v0, Lcom/dolphin/browser/download/ui/ag;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/ag;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->B:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 483
    new-instance v0, Lcom/dolphin/browser/download/ui/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/ah;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->C:Lcom/dolphin/browser/theme/aq;

    .line 1120
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->d:Lcom/dolphin/browser/download/ui/am;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/database/ContentObserver;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/b/a/a/b;)Lcom/b/a/a/b;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->D:Lcom/b/a/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/b;)Lcom/dolphin/browser/download/b;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->F:Lcom/dolphin/browser/download/b;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lcom/dolphin/browser/download/ui/aj;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/download/ui/aj;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/download/ui/ai;

    invoke-direct {v2, p0, p1, p2}, Lcom/dolphin/browser/download/ui/ai;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 613
    const-string v0, "DownloadedActivity"

    const-string v1, "show not support byteRange dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 945
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0199

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0198

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/download/ui/v;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/download/ui/v;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 960
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/dolphin/browser/download/d;)V
    .locals 14

    .prologue
    .line 825
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 828
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08016c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 830
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08016e

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 832
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080170

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 834
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080172

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 836
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080174

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 839
    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v5, 0x7f08016d

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 841
    sget-object v6, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v6, 0x7f08016f

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 843
    sget-object v7, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v7, 0x7f080171

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 845
    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080173

    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 847
    sget-object v9, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v9, 0x7f080175

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 849
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v11

    sget-object v12, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v12, 0x7f0a0080

    invoke-virtual {v11, v12}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v11

    .line 851
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v12

    sget-object v13, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v13, 0x7f0a007f

    invoke-virtual {v12, v13}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v12

    .line 854
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 855
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 860
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 861
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/download/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/download/d;->e()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/download/d;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/download/e;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/download/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 874
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0265

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 877
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 878
    return-void
.end method

.method private a(Lcom/dolphin/browser/download/d;)V
    .locals 6

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->d()I

    move-result v0

    .line 439
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v0

    invoke-direct {p0, p0, v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Landroid/content/Context;J)V

    .line 470
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;JLjava/lang/String;Z)V

    goto :goto_0

    .line 447
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(I)V

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->l()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 454
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/downloads/t;->c(Landroid/content/ContentResolver;J)V

    .line 455
    const-string v0, "download management"

    const-string v1, "download"

    const-string v2, "resume"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/downloads/t;->b(Landroid/content/ContentResolver;J)V

    .line 461
    const-string v0, "download management"

    const-string v1, "download"

    const-string v2, "pause"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_4
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/d;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/d;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;Lcom/dolphin/browser/download/ui/am;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/am;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Ljava/lang/String;Lcom/b/a/a/b;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/download/ui/am;)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    .line 225
    sget-object v0, Lcom/dolphin/browser/download/ui/ab;->a:[I

    invoke-virtual {p1}, Lcom/dolphin/browser/download/ui/am;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Lcom/dolphin/browser/download/ui/am;)V

    goto :goto_0

    .line 227
    :pswitch_0
    const-string v0, "download management"

    const-string v1, "changedisplay"

    const-string v2, "time"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :pswitch_1
    const-string v0, "download management"

    const-string v1, "changedisplay"

    const-string v2, "type"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/b/a/a/b;)V
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Lcom/dolphin/browser/share/box/j;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/share/box/j;-><init>(Landroid/content/Context;Lcom/b/a/a/b;)V

    .line 1040
    new-instance v1, Lcom/dolphin/browser/download/ui/y;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/download/ui/y;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/j;->a(Lcom/dolphin/browser/share/box/n;)V

    .line 1094
    new-instance v1, Lcom/dolphin/browser/download/ui/aa;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/aa;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/j;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1103
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 1104
    return-void
.end method

.method private b(Z)I
    .locals 1

    .prologue
    .line 309
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->w:Landroid/view/View;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 572
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/download/e;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 577
    const-string v0, "DownloadedActivity"

    const-string v1, "show download error dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method private b(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 881
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/download/ui/t;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/dolphin/browser/download/ui/t;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/content/Context;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 894
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/dolphin/browser/download/d;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0a0042

    .line 899
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 900
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030043

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 902
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080154

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 904
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 905
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 907
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080153

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 909
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 912
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 914
    instance-of v1, v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 938
    :goto_0
    return-void

    .line 917
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0197

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0159

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dolphin/browser/download/ui/u;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/dolphin/browser/download/ui/u;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/widget/CheckBox;Lcom/dolphin/browser/download/d;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 937
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/download/ui/am;)V
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne p1, v0, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->d()V

    .line 292
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->c(Lcom/dolphin/browser/download/ui/am;)V

    .line 293
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v1, :cond_3

    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->q:Lcom/dolphin/browser/download/ui/ay;

    if-nez v0, :cond_2

    .line 270
    new-instance v0, Lcom/dolphin/browser/download/ui/ay;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/ay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->q:Lcom/dolphin/browser/download/ui/ay;

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->p:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->q:Lcom/dolphin/browser/download/ui/ay;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->p:Landroid/widget/GridView;

    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/download/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->p:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->q:Lcom/dolphin/browser/download/ui/ay;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/ay;->a()V

    goto :goto_1

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->F:Lcom/dolphin/browser/download/b;

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Lcom/dolphin/browser/download/ui/aw;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->F:Lcom/dolphin/browser/download/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/download/ui/aw;-><init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->o:Lcom/dolphin/browser/download/ui/aw;

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->o:Lcom/dolphin/browser/download/ui/aw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->F:Lcom/dolphin/browser/download/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->n:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 979
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    .line 980
    new-instance v1, Lcom/dolphin/browser/download/ui/w;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/download/ui/w;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/q/a/j;->a(Landroid/content/Context;Lcom/dolphin/browser/q/a/p;)V

    .line 991
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 189
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->setContentView(I)V

    .line 191
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->x:Landroid/app/ProgressDialog;

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->x:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->x:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0348

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->f:Landroid/widget/FrameLayout;

    .line 197
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    .line 198
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->h:Landroid/widget/RelativeLayout;

    .line 199
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->i:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 203
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->p:Landroid/widget/GridView;

    .line 204
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->p:Landroid/widget/GridView;

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b007c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 209
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->l:Landroid/widget/RelativeLayout;

    .line 210
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->u:Landroid/view/View;

    .line 211
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->t:Landroid/widget/ImageView;

    .line 212
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->m:Landroid/widget/TextView;

    .line 213
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->n:Landroid/widget/ListView;

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->u:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->g()V

    .line 218
    return-void
.end method

.method private c(Lcom/dolphin/browser/download/ui/am;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 297
    :goto_0
    sget-object v3, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    if-ne p1, v3, :cond_2

    move v3, v1

    .line 298
    :goto_1
    sget-object v4, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    if-ne p1, v4, :cond_3

    move v4, v1

    .line 299
    :goto_2
    sget-object v5, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne p1, v5, :cond_4

    iget-object v5, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v5}, Lcom/dolphin/browser/download/ui/bc;->getGroupCount()I

    move-result v5

    if-gtz v5, :cond_4

    .line 302
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Z)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->p:Landroid/widget/GridView;

    invoke-direct {p0, v3}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->l:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    return-void

    :cond_1
    move v0, v2

    .line 296
    goto :goto_0

    :cond_2
    move v3, v2

    .line 297
    goto :goto_1

    :cond_3
    move v4, v2

    .line 298
    goto :goto_2

    :cond_4
    move v1, v2

    .line 299
    goto :goto_3
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 994
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->x:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 995
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/dolphin/browser/download/ui/x;

    invoke-direct {v3, p0, p1}, Lcom/dolphin/browser/download/ui/x;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/q/a/j;->a(JLcom/b/a/c/c;)V

    .line 1034
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/ui/bc;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 241
    sget-object v0, Lcom/dolphin/browser/download/e;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(status>=\'200\' AND status<\'300\'), lastmod DESC"

    invoke-static {p0, v0, v1, v2}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->j:Landroid/database/Cursor;

    .line 245
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Lcom/dolphin/browser/download/ui/bc;

    const-string v2, "lastmod"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/dolphin/browser/download/ui/bc;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->B:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 258
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->e()V

    .line 260
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/ui/bc;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/e;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v1}, Lcom/dolphin/browser/download/ui/bc;->getGroupCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/dolphin/browser/download/ui/r;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/download/ui/r;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Landroid/content/Context;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1
.end method

.method static synthetic f(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/dolphin/browser/download/d;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->h()Lcom/dolphin/browser/download/d;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->g()V

    .line 525
    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    const v8, 0x7f0a004c

    const/4 v7, 0x0

    const v6, 0x7f0a0050

    .line 529
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 530
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    .line 532
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020120

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 538
    :goto_0
    iget-object v3, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    sget v3, Lcom/dolphin/browser/download/ui/DownloadActivity;->c:I

    sget v4, Lcom/dolphin/browser/download/ui/DownloadActivity;->c:I

    sget v5, Lcom/dolphin/browser/download/ui/DownloadActivity;->d:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    sget v3, Lcom/dolphin/browser/download/ui/DownloadActivity;->b:I

    sget v4, Lcom/dolphin/browser/download/ui/DownloadActivity;->b:I

    invoke-virtual {v0, v3, v7, v4, v7}, Landroid/widget/ExpandableListView;->setPadding(IIII)V

    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    sget v3, Lcom/dolphin/browser/download/ui/DownloadActivity;->e:I

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 545
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->g:Landroid/widget/ExpandableListView;

    check-cast v0, Landroid/view/CustomExpandableListView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020122

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/CustomExpandableListView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->h:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f2

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 549
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->i:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0068

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06000a

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v0, v3}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 552
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060046

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a004b

    invoke-virtual {v2, v0, v8, v8, v3}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 556
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->u:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->t:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 559
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 560
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->n:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a016b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bc;->notifyDataSetInvalidated()V

    .line 565
    :cond_0
    return-void

    .line 536
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->f()V

    return-void
.end method

.method private h()Lcom/dolphin/browser/download/d;
    .locals 2

    .prologue
    .line 568
    new-instance v0, Lcom/dolphin/browser/download/d;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->j:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/download/d;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/download/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->j()V

    return-void
.end method

.method static synthetic i(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->x:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 768
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->k()I

    move-result v0

    .line 771
    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 776
    :cond_0
    if-ne v0, v2, :cond_1

    .line 777
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->j()V

    goto :goto_0

    .line 780
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0194

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0195

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202bb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/download/ui/s;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/download/ui/s;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic j(Lcom/dolphin/browser/download/ui/DownloadActivity;)Lcom/b/a/a/b;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->D:Lcom/b/a/a/b;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->b(Landroid/content/ContentResolver;)V

    .line 800
    const-string v0, "DownloadedActivity"

    const-string v1, "cancel all downloads"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method private k()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 805
    .line 808
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "status < 200 OR (status >= 300 AND status < 400) OR status >= 600"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 811
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 813
    if-eqz v1, :cond_0

    .line 815
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 813
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 815
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 818
    :cond_1
    :goto_2
    throw v0

    .line 816
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 813
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;J)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0e03c1

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v0, p2, p3}, Lcom/dolphin/browser/download/ui/bc;->a(J)I

    move-result v2

    .line 347
    const/4 v0, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 379
    :goto_0
    return v0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->h()Lcom/dolphin/browser/download/d;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->d()I

    move-result v3

    .line 353
    invoke-static {v3}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    const/16 v4, 0x1ec

    if-ne v3, v4, :cond_4

    .line 357
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 359
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_3
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e06dd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e06de

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x108005d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e052c

    new-instance v3, Lcom/dolphin/browser/download/ui/ac;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/dolphin/browser/download/ui/ac;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/content/Context;J)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    move v0, v2

    .line 379
    goto :goto_0

    .line 373
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/download/e;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 967
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->D:Lcom/b/a/a/b;

    if-nez v0, :cond_0

    .line 969
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->c(Ljava/lang/String;)V

    .line 976
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->D:Lcom/b/a/a/b;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Ljava/lang/String;Lcom/b/a/a/b;)V

    goto :goto_0

    .line 974
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

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

    .line 1125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    new-instance v4, Lcom/dolphin/browser/download/ui/f;

    invoke-direct {v4}, Lcom/dolphin/browser/download/ui/f;-><init>()V

    .line 1127
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v5, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/dolphin/browser/download/ui/f;->a:Z

    .line 1128
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01d7

    iput v0, v4, Lcom/dolphin/browser/download/ui/f;->b:I

    .line 1129
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v0, Lcom/dolphin/browser/download/ui/f;

    invoke-direct {v0}, Lcom/dolphin/browser/download/ui/f;-><init>()V

    .line 1131
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v5, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-eq v4, v5, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/dolphin/browser/download/ui/f;->a:Z

    .line 1132
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01d0

    iput v1, v0, Lcom/dolphin/browser/download/ui/f;->b:I

    .line 1133
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    return-object v3

    :cond_0
    move v0, v2

    .line 1127
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1131
    goto :goto_1
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v1, :cond_0

    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->F:Lcom/dolphin/browser/download/b;

    .line 1159
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/am;)V

    .line 1160
    const/4 v0, 0x1

    .line 1162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Lcom/dolphin/browser/download/ui/am;)V

    .line 521
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 619
    const/4 v3, 0x0

    .line 620
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v4, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v4, :cond_0

    .line 621
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    iget-wide v4, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->r:J

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/download/ui/bc;->b(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 622
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->h()Lcom/dolphin/browser/download/d;

    move-result-object v0

    .line 635
    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    .line 694
    :goto_1
    return v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v4, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v4, :cond_c

    .line 625
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 626
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v4, v4, Lcom/dolphin/browser/download/ui/bb;

    if-eqz v4, :cond_1

    .line 627
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/download/ui/bb;

    .line 628
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bb;->b()Lcom/dolphin/browser/download/d;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_1
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v4, v4, Lcom/dolphin/browser/download/ui/bd;

    if-eqz v4, :cond_c

    .line 630
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/download/ui/bd;

    .line 631
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bd;->a()Lcom/dolphin/browser/download/d;

    move-result-object v0

    goto :goto_0

    .line 639
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 640
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080435

    if-ne v3, v4, :cond_3

    .line 641
    const-string v1, "download management"

    const-string v3, "longpress"

    const-string v4, "detail"

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0, p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Landroid/content/Context;Lcom/dolphin/browser/download/d;)V

    move v0, v2

    .line 645
    goto :goto_1

    .line 646
    :cond_3
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080431

    if-ne v3, v4, :cond_5

    .line 647
    const-string v1, "download management"

    const-string v3, "longpress"

    const-string v4, "clear"

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->d()I

    move-result v1

    invoke-static {v1}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 652
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v3

    invoke-virtual {v1, p0, v3, v4}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;J)V

    :goto_2
    move v0, v2

    .line 656
    goto :goto_1

    .line 654
    :cond_4
    invoke-direct {p0, p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b(Landroid/content/Context;Lcom/dolphin/browser/download/d;)V

    goto :goto_2

    .line 657
    :cond_5
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08042e

    if-ne v3, v4, :cond_6

    .line 658
    const-string v1, "download management"

    const-string v3, "longpress"

    const-string v4, "canceldownload"

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v3

    invoke-virtual {v1, p0, v3, v4}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;J)V

    move v0, v2

    .line 662
    goto/16 :goto_1

    .line 663
    :cond_6
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080434

    if-ne v3, v4, :cond_7

    .line 664
    const-string v1, "download management"

    const-string v3, "longpress"

    const-string v4, "emailasattachmenast"

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    .line 669
    goto/16 :goto_1

    .line 670
    :cond_7
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080432

    if-ne v3, v4, :cond_8

    .line 671
    const-string v0, "download management"

    const-string v1, "longpress"

    const-string v3, "clearall"

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0, p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Landroid/content/Context;)V

    move v0, v2

    .line 675
    goto/16 :goto_1

    .line 676
    :cond_8
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080430

    if-ne v3, v4, :cond_a

    .line 677
    const-string v2, "download management"

    const-string v3, "longpress"

    const-string v4, "retry"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;J)V

    :cond_9
    move v0, v1

    .line 694
    goto/16 :goto_1

    .line 682
    :cond_a
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08042f

    if-ne v3, v4, :cond_b

    .line 683
    const-string v0, "download management"

    const-string v1, "longpress"

    const-string v3, "canclealldownloads"

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->i()V

    move v0, v2

    .line 687
    goto/16 :goto_1

    .line 688
    :cond_b
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080433

    if-ne v3, v4, :cond_9

    .line 689
    const-string v1, "box share"

    const-string v3, "click"

    const-string v4, "uploadtobox"

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Ljava/lang/String;)V

    move v0, v2

    .line 692
    goto/16 :goto_1

    :cond_c
    move-object v0, v3

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->C:Lcom/dolphin/browser/theme/aq;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 183
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->s:Lcom/dolphin/browser/download/e;

    .line 184
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->c()V

    .line 185
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/am;)V

    .line 186
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 718
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v2, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne v1, v2, :cond_3

    move-object v0, p3

    .line 719
    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 720
    iget-wide v0, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 722
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/download/ui/bc;->b(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iput-wide v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->r:J

    .line 726
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->h()Lcom/dolphin/browser/download/d;

    move-result-object v0

    .line 738
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 743
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->d()I

    move-result v2

    .line 744
    invoke-static {v2}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 745
    sget-object v0, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v0, 0x7f100006

    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 763
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/CustomMenuActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v2, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    if-ne v1, v2, :cond_2

    move-object v0, p3

    .line 728
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 729
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v1, v1, Lcom/dolphin/browser/download/ui/bb;

    if-eqz v1, :cond_4

    .line 730
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/download/ui/bb;

    .line 731
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bb;->b()Lcom/dolphin/browser/download/d;

    move-result-object v0

    goto :goto_1

    .line 733
    :cond_4
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/download/ui/bd;

    .line 734
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bd;->a()Lcom/dolphin/browser/download/d;

    move-result-object v0

    goto :goto_1

    .line 746
    :cond_5
    invoke-static {v2}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 747
    sget-object v0, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v0, 0x7f100005

    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 749
    :cond_6
    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 750
    sget-object v2, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 752
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    if-eqz v2, :cond_7

    .line 753
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 756
    :cond_7
    new-instance v2, Lcom/dolphin/browser/download/ui/ak;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/download/ui/ak;-><init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    .line 757
    iput-object p2, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->w:Landroid/view/View;

    .line 758
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 760
    sget-object v0, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v0, 0x7f100004

    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1108
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1111
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->q:Lcom/dolphin/browser/download/ui/ay;

    .line 1112
    iput-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->k:Lcom/dolphin/browser/download/ui/bc;

    .line 1113
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onDestroy()V

    .line 1114
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 701
    sparse-switch p1, :sswitch_data_0

    .line 709
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/CustomMenuActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 703
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :sswitch_1
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemClick(Lcom/dolphin/browser/download/ui/f;)V
    .locals 2

    .prologue
    .line 1140
    iget v0, p1, Lcom/dolphin/browser/download/ui/f;->b:I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01d7

    if-ne v0, v1, :cond_1

    .line 1141
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/am;)V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->E:Lcom/dolphin/browser/download/ui/am;

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    if-ne v0, v1, :cond_0

    .line 1144
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/am;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onPause()V

    .line 476
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/DownloadActivity;->v:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 481
    :cond_0
    return-void
.end method
