.class public Lcom/dolphin/browser/t/a;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static a:Lcom/dolphin/browser/t/a;

.field private static b:Z


# instance fields
.field private c:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private d:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/dolphin/browser/t/a;

    invoke-direct {v0}, Lcom/dolphin/browser/t/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/t/a;->a:Lcom/dolphin/browser/t/a;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/t/a;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/t/a;->c:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/a;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/t/a;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/t/a;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/dolphin/browser/t/a;->a:Lcom/dolphin/browser/t/a;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Lcom/dolphin/browser/download/ui/ao;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/download/ui/ao;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    new-instance v1, Lcom/dolphin/browser/t/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/t/d;-><init>(Lcom/dolphin/browser/t/a;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/ui/ao;->a(Lcom/dolphin/browser/download/ui/av;)V

    .line 279
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/a;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/t/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/a;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/t/a;Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Lcom/dolphin/browser/t/j;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/t/a;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Lcom/dolphin/browser/t/j;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/t/a;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/t/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    .line 507
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    .line 508
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 514
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0095

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 515
    return-void

    .line 512
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "download management"

    const-string v2, "extension"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method private a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Lcom/dolphin/browser/t/j;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 551
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p3, p1}, Lcom/dolphin/browser/t/j;->a(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v0

    .line 553
    iget-object v1, p3, Lcom/dolphin/browser/t/j;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 558
    new-instance v1, Lmobi/mgeek/TunnyBrowser/ev;

    invoke-direct {v1, p1}, Lmobi/mgeek/TunnyBrowser/ev;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 566
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/t/a;->c()V

    .line 567
    if-eqz p5, :cond_0

    .line 568
    iget-object v0, p0, Lcom/dolphin/browser/t/a;->c:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iget-object v1, p0, Lcom/dolphin/browser/t/a;->c:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Ljava/lang/String;)V

    .line 570
    :cond_0
    return-void

    .line 560
    :cond_1
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 562
    iget-object v1, p3, Lcom/dolphin/browser/t/j;->d:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/t/a;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 482
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 483
    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/t/a;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/dolphin/browser/t/a;->d()V

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/dolphin/browser/t/a;->b:Z

    return v0
.end method

.method private c(Ljava/lang/String;)Lcom/dolphin/browser/util/ds;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lcom/dolphin/browser/util/ds;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/util/ds;-><init>(Ljava/lang/String;)V

    .line 492
    iget-object v1, v0, Lcom/dolphin/browser/util/ds;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/download/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/util/ds;->d:Ljava/lang/String;

    .line 493
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 500
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 501
    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 502
    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 531
    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->inLoad()Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 542
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->downloadInBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/t/a;->d()V

    .line 526
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    .prologue
    .line 129
    const-string v1, "DownloadHandler"

    const-string v2, "on download start"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 135
    invoke-static/range {v1 .. v7}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    .line 137
    if-eqz v2, :cond_1

    .line 138
    const-string v1, "DownloadHandler"

    const-string v2, "download handled by addons"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    if-eqz p4, :cond_2

    const-string v2, "cachevideo"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/dolphin/browser/util/br;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p3, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "attachment"

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 153
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 157
    if-eqz v3, :cond_5

    .line 158
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 164
    :cond_4
    :try_start_0
    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    const-string v3, "DownloadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/extensions/e;->a()Lcom/dolphin/browser/extensions/e;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/extensions/IDownloadExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/e;->a(Ljava/lang/String;)Lcom/dolphin/browser/extensions/n;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_6

    .line 180
    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_6

    instance-of v3, v2, Lcom/dolphin/browser/extensions/IDownloadExtension;

    if-eqz v3, :cond_6

    .line 182
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/core/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    check-cast v2, Lcom/dolphin/browser/extensions/IDownloadExtension;

    const/4 v5, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-interface/range {v2 .. v11}, Lcom/dolphin/browser/extensions/IDownloadExtension;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 188
    :cond_6
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eu;->b()Ljava/util/List;

    move-result-object v4

    .line 189
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 190
    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 191
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080091

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 192
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080092

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a0042

    invoke-virtual {v3, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    new-instance v3, Lcom/dolphin/browser/t/b;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/dolphin/browser/t/b;-><init>(Lcom/dolphin/browser/t/a;Landroid/widget/TextView;)V

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00e3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v15, Lmobi/mgeek/TunnyBrowser/eh;

    invoke-direct {v15, v1, v4}, Lmobi/mgeek/TunnyBrowser/eh;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v2, Lcom/dolphin/browser/t/c;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object v7, v1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/dolphin/browser/t/c;-><init>(Lcom/dolphin/browser/t/a;Ljava/util/List;Landroid/widget/CheckBox;Ljava/lang/String;Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v14, v15, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 235
    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 236
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/extensions/n;

    .line 237
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/dolphin/browser/extensions/IDownloadExtension;

    if-eqz v3, :cond_0

    .line 240
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/core/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    check-cast v2, Lcom/dolphin/browser/extensions/IDownloadExtension;

    const/4 v5, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-interface/range {v2 .. v11}, Lcom/dolphin/browser/extensions/IDownloadExtension;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 246
    :cond_8
    invoke-virtual/range {p0 .. p6}, Lcom/dolphin/browser/t/a;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v7

    .line 303
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v6

    .line 305
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/dolphin/browser/download/e;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 310
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01ca

    invoke-static {v7, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v2, "data:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-direct/range {p0 .. p1}, Lcom/dolphin/browser/t/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/dolphin/browser/t/a;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v9, v2

    move-object v11, v3

    move-object v2, v4

    .line 343
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-static {}, Lcom/dolphin/browser/util/cm;->b()Ljava/lang/String;

    move-result-object v2

    .line 347
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 352
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 353
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01c5

    invoke-virtual {v7, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01c6

    .line 359
    :goto_2
    invoke-virtual {v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 360
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03c1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 323
    const-string v2, "DownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to parse url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/dolphin/browser/t/a;->c(Ljava/lang/String;)Lcom/dolphin/browser/util/ds;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcom/dolphin/browser/util/ds;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    iget-object v2, v2, Lcom/dolphin/browser/util/ds;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v2

    move-object v11, v3

    move-object/from16 v2, p4

    .line 338
    goto/16 :goto_1

    .line 333
    :catch_1
    move-exception v2

    .line 336
    const-string v2, "DownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to parse url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :cond_4
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v7, v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 357
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01bc

    goto/16 :goto_2

    .line 367
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v12

    .line 368
    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f030047

    const/4 v3, 0x0

    invoke-static {v7, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 369
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080161

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 371
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080160

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080162

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 373
    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080164

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 375
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080165

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 379
    sget-object v14, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v14, 0x7f0a0042

    invoke-virtual {v12, v14}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080159

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 382
    new-instance v12, Lcom/dolphin/browser/t/e;

    invoke-direct {v12, p0, v7}, Lcom/dolphin/browser/t/e;-><init>(Lcom/dolphin/browser/t/a;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080163

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/dolphin/browser/t/a;->d:Landroid/widget/Button;

    .line 394
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v8

    invoke-virtual {v8}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->K()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 395
    iget-object v8, p0, Lcom/dolphin/browser/t/a;->c:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v8}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L()Ljava/lang/String;

    move-result-object v8

    .line 396
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 399
    :goto_3
    invoke-direct {p0, v8}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    sget-object v12, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v12, 0x7f0a0180

    invoke-virtual {v8, v12}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v8, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v8, 0x7f0a0180

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v2, p0, Lcom/dolphin/browser/t/a;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v8, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v8, 0x7f02003b

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 407
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 409
    invoke-virtual {v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 411
    invoke-virtual {v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v8, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v8, 0x7f0b0089

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 413
    invoke-virtual {v5, v3, v2, v3, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 415
    new-instance v2, Lcom/dolphin/browser/t/f;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/dolphin/browser/t/f;-><init>(Lcom/dolphin/browser/t/a;Ljava/lang/String;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 430
    new-instance v8, Lcom/dolphin/browser/t/j;

    invoke-direct {v8}, Lcom/dolphin/browser/t/j;-><init>()V

    .line 431
    iput-object v11, v8, Lcom/dolphin/browser/t/j;->a:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/dolphin/browser/t/j;->c:Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lcom/dolphin/browser/t/a;->c:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v3

    iput-boolean v3, v8, Lcom/dolphin/browser/t/j;->g:Z

    .line 434
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/dolphin/browser/t/j;->d:Ljava/lang/String;

    .line 438
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/core/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/dolphin/browser/t/j;->b:Ljava/lang/String;

    .line 439
    iput-object v9, v8, Lcom/dolphin/browser/t/j;->f:Ljava/lang/String;

    .line 440
    move-wide/from16 v0, p5

    iput-wide v0, v8, Lcom/dolphin/browser/t/j;->h:J

    .line 441
    iput-object v2, v8, Lcom/dolphin/browser/t/j;->e:Ljava/lang/String;

    .line 442
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e052f

    invoke-virtual {v7, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v11, 0x7f0e03c1

    new-instance v3, Lcom/dolphin/browser/t/i;

    move-object v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/dolphin/browser/t/i;-><init>(Lcom/dolphin/browser/t/a;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/t/j;Ljava/lang/String;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00d9

    new-instance v4, Lcom/dolphin/browser/t/h;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/t/h;-><init>(Lcom/dolphin/browser/t/a;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/dolphin/browser/t/g;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/t/g;-><init>(Lcom/dolphin/browser/t/a;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    move-object v8, v12

    goto/16 :goto_3
.end method
