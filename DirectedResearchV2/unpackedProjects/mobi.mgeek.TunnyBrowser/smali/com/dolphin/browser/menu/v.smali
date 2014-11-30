.class public Lcom/dolphin/browser/menu/v;
.super Ljava/lang/Object;
.source "MenuBuilder.java"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[[I

.field public static final e:[[I

.field public static final f:[[I

.field public static final g:[Ljava/lang/String;

.field public static final h:[[Ljava/lang/String;


# instance fields
.field private i:Lcom/dolphin/browser/menu/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/menu/v;->a:[I

    .line 40
    new-array v0, v8, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e001a

    aput v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03fb

    aput v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0019

    aput v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03f8

    aput v1, v0, v7

    sput-object v0, Lcom/dolphin/browser/menu/v;->b:[I

    .line 44
    new-array v0, v8, [I

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e001a

    aput v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03fb

    aput v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0019

    aput v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03fa

    aput v1, v0, v7

    sput-object v0, Lcom/dolphin/browser/menu/v;->c:[I

    .line 48
    new-array v0, v6, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/menu/v;->d:[[I

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03ee

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03ee

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03ef

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03ef

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03eb

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03eb

    aput v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03f4

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03f4

    aput v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03f3

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03f3

    aput v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03f2

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03f2

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e058c

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e058c

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01f1

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01f1

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03f6

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03f6

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0275

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0275

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0639

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0639

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0018

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0018

    aput v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/menu/v;->e:[[I

    .line 87
    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060039

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060039

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06003a

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06003a

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060038

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060038

    aput v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06003d

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06003d

    aput v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [I

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06003b

    aput v2, v1, v4

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06003b

    aput v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06003c

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06003c

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060027

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060027

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060032

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060032

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060035

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060035

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06002c

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06002c

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060037

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060037

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [I

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06002a

    aput v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06002a

    aput v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/menu/v;->f:[[I

    .line 115
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "settings"

    aput-object v1, v0, v4

    const-string v1, "tools"

    aput-object v1, v0, v5

    const-string v1, "exit"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/menu/v;->g:[Ljava/lang/String;

    .line 119
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "desktop_on"

    aput-object v2, v1, v4

    const-string v2, "desktop_off"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "fullscreen_on"

    aput-object v2, v1, v4

    const-string v2, "fullscreen_off"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "classicmode_on"

    aput-object v2, v1, v4

    const-string v2, "classicmode_off"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "privatemode_on"

    aput-object v2, v1, v4

    const-string v2, "privatemode_off"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "noimage_on"

    aput-object v2, v1, v4

    const-string v2, "noimage_off"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "nightmode_on "

    aput-object v3, v2, v4

    const-string v3, "nightmode_off"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "add"

    aput-object v3, v2, v4

    const-string v3, "add"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "share"

    aput-object v3, v2, v4

    const-string v3, "share"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "tabpush"

    aput-object v3, v2, v4

    const-string v3, "tabpush"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "findinpage"

    aput-object v3, v2, v4

    const-string v3, "findinpage"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "themes"

    aput-object v3, v2, v4

    const-string v3, "themes"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "downloads"

    aput-object v3, v2, v4

    const-string v3, "downloads"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    return-void

    .line 37
    :array_0
    .array-data 4
        0x6
        0x6
        0x0
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x1
        0x2
        0x5
        0x0
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static final a(IZ)V
    .locals 3

    .prologue
    .line 239
    if-ltz p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/menu/v;->g:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-eqz p1, :cond_2

    .line 243
    const-string v0, "menu"

    const-string v1, "swap"

    sget-object v2, Lcom/dolphin/browser/menu/v;->g:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    const-string v0, "menu"

    const-string v1, "clickbtn"

    sget-object v2, Lcom/dolphin/browser/menu/v;->g:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final b(IZ)V
    .locals 4

    .prologue
    .line 253
    if-ltz p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    .line 257
    const-string v0, "menu"

    const-string v1, "clickbtn"

    sget-object v2, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    aget-object v2, v2, p0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_2
    const-string v0, "menu"

    const-string v1, "clickbtn"

    sget-object v2, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    aget-object v2, v2, p0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_0
    new-instance v0, Lcom/dolphin/browser/menu/y;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/menu/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    new-instance v0, Lcom/dolphin/browser/menu/l;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/menu/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    instance-of v0, v0, Lcom/dolphin/browser/menu/y;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    check-cast v0, Lcom/dolphin/browser/menu/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/y;->o()V

    .line 198
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/menu/h;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/menu/a;->a(Lcom/dolphin/browser/menu/h;)V

    .line 203
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/menu/a;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/v;->c(Landroid/content/Context;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/v;->d(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/a;->f()V

    .line 214
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/a;->m()V

    .line 219
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/a;->a()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/menu/v;->i:Lcom/dolphin/browser/menu/a;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/a;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 235
    return-void
.end method
