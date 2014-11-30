.class public Lcom/dolphin/browser/download/e;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static final d:I

.field private static e:Lcom/dolphin/browser/download/e;


# instance fields
.field private f:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x58

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/download/e;->d:I

    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "status"

    aput-object v1, v0, v5

    const-string v1, "current_bytes"

    aput-object v1, v0, v6

    const-string v1, "total_bytes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notificationpackage"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "speed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "support_byte_range"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "control"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/download/e;->a:[Ljava/lang/String;

    .line 68
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "status"

    aput-object v1, v0, v5

    const-string v1, "current_bytes"

    aput-object v1, v0, v6

    const-string v1, "total_bytes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notificationpackage"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "speed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "support_byte_range"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "control"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "notificationextras"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/download/e;->b:[Ljava/lang/String;

    .line 88
    const-string v0, "( %s ) OR ( %s )"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "status>=200 AND status<300"

    aput-object v2, v1, v3

    const-string v2, "status<200 OR status>=300"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/download/e;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/download/e;->b()[Ljava/io/File;

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 690
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 691
    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    sget-object v2, Lcom/dolphin/browser/download/e;->b:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    .line 694
    :cond_0
    new-instance v0, Lcom/dolphin/browser/download/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/download/l;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    .line 701
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/download/a;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    sget-object v1, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_1

    .line 187
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060008

    .line 204
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0053

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    sget-object v1, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_2

    .line 189
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06000e

    goto :goto_0

    .line 190
    :cond_2
    sget-object v1, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_3

    .line 191
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06000c

    goto :goto_0

    .line 192
    :cond_3
    sget-object v1, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_4

    .line 193
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060007

    goto :goto_0

    .line 194
    :cond_4
    sget-object v1, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_5

    .line 195
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060009

    goto :goto_0

    .line 196
    :cond_5
    sget-object v1, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_6

    .line 197
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06000f

    goto :goto_0

    .line 198
    :cond_6
    sget-object v1, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_7

    .line 199
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06000d

    goto :goto_0

    .line 200
    :cond_7
    sget-object v1, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    if-ne p1, v1, :cond_0

    .line 201
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f06000b

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/b;",
            ">;",
            "Lcom/dolphin/browser/download/a;",
            ")",
            "Lcom/dolphin/browser/download/b;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 666
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v2

    .line 682
    :goto_0
    return-object v0

    .line 670
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 671
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    .line 672
    if-nez v0, :cond_3

    .line 670
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 676
    :cond_3
    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v3

    .line 677
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/dolphin/browser/download/a;->ordinal()I

    move-result v4

    invoke-virtual {v3}, Lcom/dolphin/browser/download/a;->ordinal()I

    move-result v3

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 682
    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/download/e;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/dolphin/browser/download/e;->e:Lcom/dolphin/browser/download/e;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/dolphin/browser/download/e;

    invoke-direct {v0}, Lcom/dolphin/browser/download/e;-><init>()V

    sput-object v0, Lcom/dolphin/browser/download/e;->e:Lcom/dolphin/browser/download/e;

    .line 99
    :cond_0
    sget-object v0, Lcom/dolphin/browser/download/e;->e:Lcom/dolphin/browser/download/e;

    return-object v0
.end method

.method private a(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    const-string v0, ""

    .line 377
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/dolphin/browser/download/e;->b(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static a(C)Z
    .locals 1

    .prologue
    .line 733
    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5e

    if-ne p0, v0, :cond_1

    .line 734
    :cond_0
    const/4 v0, 0x1

    .line 736
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final b(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 103
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 104
    check-cast p0, Landroid/app/Dialog;

    invoke-static {p0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 593
    invoke-static {p0}, Lcom/dolphin/browser/download/e;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 594
    const/4 v2, 0x0

    new-instance v3, Lcom/dolphin/browser/download/b;

    sget-object v4, Lcom/dolphin/browser/download/a;->a:Lcom/dolphin/browser/download/a;

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e01ce

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f06000a

    invoke-direct {v3, v4, v0, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 598
    return-object v1
.end method

.method public static f(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 604
    new-instance v1, Lcom/dolphin/browser/download/k;

    invoke-direct {v1}, Lcom/dolphin/browser/download/k;-><init>()V

    .line 605
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->b:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01cd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f060008

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->c:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01d4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f06000e

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->d:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01cf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f06000c

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01cc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f060007

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->f:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01d3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f060009

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->h:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01d5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f06000f

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->i:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01d2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f06000d

    invoke-direct {v2, v3, v4, v5}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance v2, Lcom/dolphin/browser/download/b;

    sget-object v3, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e01d1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v4, 0x7f06000b

    invoke-direct {v2, v3, v0, v4}, Lcom/dolphin/browser/download/b;-><init>(Lcom/dolphin/browser/download/a;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    return-object v1
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 633
    .line 634
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 636
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "status<200"

    const/4 v4, 0x0

    const-string v5, "lastmod DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 646
    if-eqz v1, :cond_2

    .line 647
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    if-eqz v1, :cond_1

    .line 658
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 662
    :goto_0
    return v0

    .line 657
    :cond_2
    if-eqz v1, :cond_3

    .line 658
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v0, v7

    .line 662
    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 655
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 657
    if-eqz v1, :cond_3

    .line 658
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 657
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    .line 658
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 657
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 654
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 747
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-char v4, v2, v1

    .line 748
    invoke-static {v4}, Lcom/dolphin/browser/download/e;->a(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    const/4 v1, 0x1

    .line 753
    :goto_1
    if-nez v1, :cond_1

    .line 767
    :goto_2
    return-object p0

    .line 747
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    array-length v3, v2

    :goto_3
    if-ge v0, v3, :cond_3

    aget-char v4, v2, v0

    .line 759
    invoke-static {v4}, Lcom/dolphin/browser/download/e;->a(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 760
    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 763
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 767
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 508
    const/16 v0, 0x196

    if-ne p1, v0, :cond_0

    .line 509
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01bd

    .line 519
    :goto_0
    return v0

    .line 510
    :cond_0
    const/16 v0, 0x19b

    if-ne p1, v0, :cond_1

    .line 511
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01ac

    goto :goto_0

    .line 512
    :cond_1
    const/16 v0, 0x19c

    if-ne p1, v0, :cond_2

    .line 513
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01c1

    goto :goto_0

    .line 514
    :cond_2
    const/16 v0, 0x1ea

    if-ne p1, v0, :cond_3

    .line 515
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0196

    goto :goto_0

    .line 516
    :cond_3
    const/16 v0, 0x1ec

    if-ne p1, v0, :cond_4

    .line 517
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01a6

    goto :goto_0

    .line 519
    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e019e

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)Lcom/dolphin/browser/download/a;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    .line 540
    invoke-static {p1}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/download/e;->i(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 543
    :cond_0
    sget-object v0, Lcom/dolphin/browser/download/a;->a:Lcom/dolphin/browser/download/a;

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;II)Lcom/dolphin/browser/download/a;
    .locals 2

    .prologue
    .line 535
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/download/e;->a(ILjava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v0, p1, p2}, Lcom/dolphin/browser/download/e;->a(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, ""

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 151
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 152
    const-string v0, ""

    goto :goto_0

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->a(Landroid/content/ContentResolver;)V

    .line 223
    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 233
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    if-eqz p5, :cond_0

    const-string v0, "android.intent.action.DELETE"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    :goto_1
    return-void

    .line 233
    :cond_0
    const-string v0, "android.intent.action.TUNNY_DOWNLOAD_NOTIFICATION_CLICKED"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 404
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e026e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/download/g;

    invoke-direct {v2, p0, p2}, Lcom/dolphin/browser/download/g;-><init>(Lcom/dolphin/browser/download/e;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/download/f;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/download/f;-><init>(Lcom/dolphin/browser/download/e;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 424
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 425
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    invoke-static {p1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 219
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 246
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 251
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 253
    :cond_0
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/download/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/download/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v0, "new_tab"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 268
    :goto_0
    return v0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v2, p0, Lcom/dolphin/browser/download/e;->f:[Ljava/io/File;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 130
    invoke-virtual {v4, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a([Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 317
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    array-length v0, p1

    new-array v2, v0, [Lcom/dolphin/browser/download/ui/bo;

    move v0, v1

    .line 321
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 322
    new-instance v3, Lcom/dolphin/browser/download/ui/bo;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/dolphin/browser/download/ui/bo;-><init>(Ljava/io/File;)V

    aput-object v3, v2, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 326
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 327
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bo;->a()Ljava/io/File;

    move-result-object v0

    aput-object v0, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 332
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 715
    if-nez p1, :cond_0

    .line 727
    :goto_0
    return v6

    .line 720
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_1

    .line 724
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    move v6, v0

    .line 727
    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 160
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/dolphin/browser/util/br;->c(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/dolphin/browser/download/a;->e:Lcom/dolphin/browser/download/a;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/dolphin/browser/util/bw;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/e;->a(Lcom/dolphin/browser/download/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Landroid/content/DialogInterface;)V

    .line 429
    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/dolphin/browser/downloads/t;->a(Landroid/content/ContentResolver;J)V

    .line 228
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 438
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/download/i;

    invoke-direct {v2, p0, p2}, Lcom/dolphin/browser/download/i;-><init>(Lcom/dolphin/browser/download/e;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/download/h;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/download/h;-><init>(Lcom/dolphin/browser/download/e;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 459
    return-void
.end method

.method public b()[Ljava/io/File;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/download/e;->f:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/dolphin/browser/util/cl;->a:Lcom/dolphin/browser/util/cl;

    invoke-static {v0}, Lcom/dolphin/browser/util/StorageHelper;->a(Lcom/dolphin/browser/util/cl;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/e;->f:[Ljava/io/File;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/e;->f:[Ljava/io/File;

    return-object v0
.end method

.method public c()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 120
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 123
    sget v2, Lcom/dolphin/browser/download/e;->d:I

    div-int/2addr v0, v2

    .line 124
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 180
    invoke-static {p1}, Lcom/dolphin/browser/util/br;->c(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/e;->a(Lcom/dolphin/browser/download/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/download/e;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 462
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 464
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e026f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 469
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const-string v0, "status<200 OR status>=300"

    .line 296
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dtp"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dwp"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    const-string v0, "application/octet-stream"

    .line 279
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 493
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 494
    new-instance v1, Lcom/dolphin/browser/download/j;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/download/j;-><init>(Lcom/dolphin/browser/download/e;Landroid/content/Context;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, "status>=200 AND status<300"

    .line 303
    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 559
    const-string v0, "( %s ) OR ( %s )"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/download/e;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/dolphin/browser/download/e;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/dolphin/browser/download/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 479
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "data:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)Lcom/dolphin/browser/download/a;
    .locals 3

    .prologue
    .line 550
    sget-object v0, Lcom/dolphin/browser/download/a;->g:Lcom/dolphin/browser/download/a;

    .line 551
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/br;->c(Ljava/lang/String;)Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 555
    :cond_0
    return-object v0
.end method
