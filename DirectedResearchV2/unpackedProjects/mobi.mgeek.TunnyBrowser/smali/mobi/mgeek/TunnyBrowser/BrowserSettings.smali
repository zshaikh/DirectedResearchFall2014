.class public Lmobi/mgeek/TunnyBrowser/BrowserSettings;
.super Lcom/dolphin/browser/core/BrowserSettings;
.source "BrowserSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final PREF_TEXT_SIZE:Ljava/lang/String; = "text_size"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final VOLUME_BUTTON_ACTION_NONE:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final VOLUME_BUTTON_ACTION_SCROLL_PAGE:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final VOLUME_BUTTON_ACTION_SWITCH_TAB:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;

.field private static ac:Lcom/dolphin/browser/core/IWebSettings$TextSize;

.field private static ad:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

.field private static final ae:Ljava/lang/String;

.field private static final af:Ljava/io/File;

.field private static final ag:Ljava/io/File;

.field private static final ah:Ljava/io/File;

.field private static final ai:Ljava/io/File;

.field private static bG:Ljava/util/Locale;

.field private static bH:Ljava/lang/String;

.field public static final c:Ljava/io/File;

.field public static final d:Ljava/io/File;

.field public static final e:Ljava/io/File;

.field public static final f:Ljava/io/File;

.field public static final g:Ljava/io/File;

.field public static final h:Ljava/io/File;

.field private static i:Lmobi/mgeek/TunnyBrowser/BrowserSettings;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:J

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Lmobi/mgeek/TunnyBrowser/hw;

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aA:Z

.field private aB:I

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:I

.field private aI:Landroid/content/Context;

.field private aJ:Z

.field private aK:I

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:Ljava/lang/String;

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aT:Lcom/dolphin/browser/search/g;

.field private aU:Lcom/dolphin/browser/search/g;

.field private aV:J

.field private aW:Z

.field private aX:Z

.field private aY:Z

.field private aZ:Z

.field private aa:Z

.field private ab:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:I

.field private as:Ljava/lang/String;

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Z

.field private az:Z

.field public b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

.field private bA:Z

.field private bB:Lmobi/mgeek/TunnyBrowser/ci;

.field private bC:Ljava/lang/String;

.field private bD:Z

.field private bE:Lmobi/mgeek/TunnyBrowser/cj;

.field private bF:Ljava/lang/String;

.field private ba:I

.field private bb:Z

.field private bc:I

.field private bd:I

.field private be:Ljava/lang/String;

.field private bf:Z

.field private bg:Z

.field private bh:Z

.field private bi:Z

.field private bj:J

.field private bk:Z

.field private bl:Z

.field private bm:I

.field private bn:I

.field private bo:I

.field private bp:Z

.field private bq:Z

.field private br:Z

.field private bs:I

.field private bt:Z

.field private bu:I

.field private bv:Z

.field private bw:I

.field private bx:Z

.field private by:J

.field private bz:I

.field private j:Z

.field private k:Z

.field private l:Lcom/dolphin/browser/core/IWebSettings$PluginState;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 185
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->af()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a:Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ac:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    .line 271
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->MEDIUM:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ad:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    .line 303
    const-string v0, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/%s (KHTML, like Gecko) Version/5.0 Safari/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "537.16"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "537.16"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ae:Ljava/lang/String;

    .line 450
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "TunnyBrowser"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    .line 452
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d:Ljava/io/File;

    .line 453
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e:Ljava/io/File;

    .line 454
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f:Ljava/io/File;

    .line 455
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    const-string v2, "Bookmarks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g:Ljava/io/File;

    .line 456
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h:Ljava/io/File;

    .line 459
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    const-string v2, "feedback"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->af:Ljava/io/File;

    .line 463
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "tabstate"

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/core/AppContext;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ag:Ljava/io/File;

    .line 464
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ag:Ljava/io/File;

    const-string v2, "state.bundle"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ah:Ljava/io/File;

    .line 465
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ag:Ljava/io/File;

    const-string v2, "tabstate.bundle"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ai:Ljava/io/File;

    .line 475
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 601
    :cond_0
    sput-object v5, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bG:Ljava/util/Locale;

    .line 602
    sput-object v5, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1747
    invoke-direct {p0}, Lcom/dolphin/browser/core/BrowserSettings;-><init>()V

    .line 180
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j:Z

    .line 182
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k:Z

    .line 201
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m:Z

    .line 202
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n:Z

    .line 203
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o:Z

    .line 204
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p:Z

    .line 205
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->q:Z

    .line 206
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->r:Z

    .line 207
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->s:Z

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->u:Ljava/lang/String;

    .line 210
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v:Z

    .line 211
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->w:Z

    .line 212
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x:Z

    .line 213
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->y:Z

    .line 214
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z:Z

    .line 217
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->A:Z

    .line 218
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B:Z

    .line 219
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C:Z

    .line 220
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D:Z

    .line 221
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E:Z

    .line 224
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->F:J

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->M:Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    .line 238
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N:Z

    .line 239
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 241
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Q:Z

    .line 242
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R:Z

    .line 243
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->S:Z

    .line 246
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->U:I

    .line 247
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->V:I

    .line 261
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    .line 263
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab:Z

    .line 480
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aj:Z

    .line 481
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ak:Z

    .line 482
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->al:Z

    .line 483
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->am:Z

    .line 485
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->an:Z

    .line 487
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ao:Z

    .line 489
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ap:Z

    .line 491
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aq:Z

    .line 495
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->at:Z

    .line 497
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->au:Z

    .line 498
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->av:Z

    .line 502
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aw:Z

    .line 505
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ax:Z

    .line 506
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ay:Z

    .line 508
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    .line 509
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aA:Z

    .line 510
    const/4 v0, -0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    .line 511
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    .line 512
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aD:Z

    .line 513
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aE:Z

    .line 514
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aF:Z

    .line 515
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aG:Z

    .line 516
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    .line 518
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aJ:Z

    .line 519
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aK:I

    .line 523
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aO:Z

    .line 524
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aP:Z

    .line 525
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aQ:Z

    .line 526
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aR:Z

    .line 527
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aS:Z

    .line 530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    .line 531
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aW:Z

    .line 532
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    .line 533
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aY:Z

    .line 534
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aZ:Z

    .line 535
    const v0, 0x7fffffff

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ba:I

    .line 536
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bb:Z

    .line 537
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bc:I

    .line 538
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bd:I

    .line 540
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bf:Z

    .line 541
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bg:Z

    .line 542
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bh:Z

    .line 543
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bi:Z

    .line 545
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bk:Z

    .line 546
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bl:Z

    .line 547
    iput v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bm:I

    .line 548
    iput v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bn:I

    .line 549
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bo:I

    .line 550
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bp:Z

    .line 551
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bq:Z

    .line 552
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->br:Z

    .line 553
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    .line 557
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    .line 562
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bu:I

    .line 570
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bv:Z

    .line 574
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bw:I

    .line 575
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bx:Z

    .line 578
    iput v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bz:I

    .line 581
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bA:Z

    .line 585
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    .line 592
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bF:Ljava/lang/String;

    .line 1749
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t()V

    .line 1750
    return-void
.end method

.method private static af()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 190
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON_DEMAND:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 606
    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bH:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bG:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    :cond_0
    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bG:Ljava/util/Locale;

    .line 608
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cf;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/cf;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserSettings;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bH:Ljava/lang/String;

    .line 633
    :cond_1
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bH:Ljava/lang/String;

    return-object v0
.end method

.method private ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ae:Ljava/lang/String;

    .line 640
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ai()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ai()Ljava/lang/String;
    .locals 4

    .prologue
    .line 645
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bF:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 646
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aj()Ljava/lang/String;

    move-result-object v0

    .line 647
    const-string v1, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/%s (KHTML, like Gecko) Version/5.0 Safari/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bF:Ljava/lang/String;

    .line 649
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bF:Ljava/lang/String;

    return-object v0
.end method

.method private aj()Ljava/lang/String;
    .locals 5

    .prologue
    .line 653
    const-string v1, "537.16"

    .line 654
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ag()Ljava/lang/String;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_0

    .line 656
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 657
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 658
    if-ltz v2, :cond_0

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_0

    .line 659
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private ak()Z
    .locals 2

    .prologue
    .line 680
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 684
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private al()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2718
    const-string v0, "android_phone_en"

    return-object v0
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/SharedPreferences;)V

    .line 1090
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/SharedPreferences;)V

    .line 1091
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1596
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/lang/String;)V

    .line 1597
    return-void
.end method

.method private c(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 1094
    const-string v0, "load_images"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "load_images_state"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1096
    const-string v0, "load_images"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1099
    if-eqz v0, :cond_2

    .line 1100
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    .line 1105
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1106
    const-string v2, "load_images"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1107
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    if-eq v0, v2, :cond_0

    .line 1108
    const-string v2, "load_images_state"

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ci;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1111
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1113
    :cond_1
    return-void

    .line 1102
    :cond_2
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->c:Lmobi/mgeek/TunnyBrowser/ci;

    goto :goto_0
.end method

.method private d(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1116
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1118
    const-string v1, "open_links_choice"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1121
    :cond_0
    const-string v1, "pref_open_in_backgroud_tab"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1122
    const-string v1, "pref_open_in_backgroud_tab"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    .line 1123
    const-string v1, "pref_open_in_backgroud_tab"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1126
    :cond_1
    const-string v1, "open_in_new_tab"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1127
    const-string v1, "open_in_new_tab"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z

    .line 1128
    const-string v1, "open_in_new_tab"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1131
    :cond_2
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    if-eqz v1, :cond_3

    .line 1132
    const-string v1, "open_links_choice"

    const-string v2, "OPEN_IN_BACKGROUND_TAB"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1139
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1133
    :cond_3
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z

    if-eqz v1, :cond_4

    .line 1134
    const-string v1, "open_links_choice"

    const-string v2, "OPEN_IN_NEW_TAB"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1136
    :cond_4
    const-string v1, "open_links_choice"

    const-string v2, "DEFAULT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1580
    if-eqz p0, :cond_0

    .line 1581
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1584
    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1588
    if-eqz p0, :cond_0

    .line 1589
    const-string v0, "thumbnails"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1592
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1523
    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    if-nez v0, :cond_0

    .line 1524
    new-instance v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 1527
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i:Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    const-string v1, "^\\d+.\\d+$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final j(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1870
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1883
    :goto_0
    return v0

    .line 1873
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1875
    if-lez v1, :cond_1

    .line 1876
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1881
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private u(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 805
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 806
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    .line 808
    const-string v0, "save_cache_to_sdcard"

    iget-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aw:Z

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aw:Z

    .line 811
    const-string v0, "smart_cache"

    iget-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ax:Z

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ax:Z

    .line 812
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ax:Z

    if-eqz v0, :cond_1

    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ay:Z

    .line 815
    const-string v0, "appcache"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G:Ljava/lang/String;

    .line 818
    :try_start_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hw;

    new-instance v4, Lmobi/mgeek/TunnyBrowser/hz;

    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G:Ljava/lang/String;

    invoke-direct {v4, v5}, Lmobi/mgeek/TunnyBrowser/hz;-><init>(Ljava/lang/String;)V

    new-instance v5, Lmobi/mgeek/TunnyBrowser/ia;

    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G:Ljava/lang/String;

    invoke-direct {v5, v6}, Lmobi/mgeek/TunnyBrowser/ia;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v4, v5}, Lmobi/mgeek/TunnyBrowser/hw;-><init>(Landroid/content/Context;Lmobi/mgeek/TunnyBrowser/hy;Lmobi/mgeek/TunnyBrowser/hx;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L:Lmobi/mgeek/TunnyBrowser/hw;

    .line 821
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L:Lmobi/mgeek/TunnyBrowser/hw;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hw;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->F:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_2
    const-string v0, "databases"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->H:Ljava/lang/String;

    .line 830
    const-string v0, "geolocation"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->I:Ljava/lang/String;

    .line 831
    const-string v0, "icons"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->J:Ljava/lang/String;

    .line 832
    const-string v0, "plugins"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->K:Ljava/lang/String;

    .line 837
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 838
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_2

    .line 839
    const/4 v0, 0x5

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bz:I

    .line 848
    :goto_3
    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/SharedPreferences;)V

    .line 849
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v(Landroid/content/Context;)V

    .line 850
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->w(Landroid/content/Context;)V

    .line 851
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bq;->b()V

    .line 853
    return-void

    :cond_0
    move v0, v2

    .line 808
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 812
    goto/16 :goto_1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    const-string v4, "BrowserSettings"

    const-string v5, "Create WebStorageSizeManager error"

    invoke-static {v4, v5, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 841
    :cond_2
    iput v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bz:I

    goto :goto_3
.end method

.method private v(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 857
    invoke-static {p1}, Ldolphin/preference/z;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 858
    const-string v1, "last_version_code"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I

    .line 862
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I

    if-nez v1, :cond_0

    .line 863
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 865
    const-string v2, "last_version_code"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I

    .line 868
    :cond_0
    const-string v1, "last_version_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->as:Ljava/lang/String;

    .line 870
    const-string v1, "install_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    .line 871
    return-void
.end method

.method private w(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 875
    invoke-static {p1}, Lcom/dolphin/browser/promoted/j;->i(Landroid/content/Context;)V

    .line 876
    return-void
.end method

.method private x(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1684
    instance-of v0, p1, Ldolphin/preference/PreferenceActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Ldolphin/preference/ExpandablePreferenceActivity;

    if-eqz v0, :cond_1

    .line 1686
    :cond_0
    check-cast p1, Ldolphin/preference/PreferenceActivity;

    .line 1687
    const-string v0, "website_settings"

    invoke-virtual {p1, v0}, Ldolphin/preference/PreferenceActivity;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    check-cast v0, Ldolphin/preference/PreferenceScreen;

    .line 1689
    if-eqz v0, :cond_1

    .line 1690
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1691
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ch;

    invoke-direct {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/ch;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserSettings;Ldolphin/preference/PreferenceScreen;)V

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/IWebStorage;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 1702
    :cond_1
    return-void
.end method

.method private y(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 1935
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1937
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1938
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1939
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1940
    invoke-static {p1}, Ldolphin/preference/z;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1941
    const-string v3, "last_version_code"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1942
    const-string v3, "last_version_name"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1944
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 1945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    .line 1946
    const-string v0, "install_time"

    iget-wide v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1948
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1949
    iput v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :goto_0
    return-void

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    const-string v1, "Can\'t get version code"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public A()Lmobi/mgeek/TunnyBrowser/hw;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L:Lmobi/mgeek/TunnyBrowser/hw;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 1424
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    return v0
.end method

.method public C()V
    .locals 1

    .prologue
    .line 1924
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/browser/util/ae;->a(I)V

    .line 1925
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->y(Landroid/content/Context;)V

    .line 1926
    return-void
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 1957
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ao:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->an:Z

    return v0
.end method

.method public F()Z
    .locals 3

    .prologue
    .line 2024
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2025
    const-string v1, "agree_terms_of_use"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2114
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 2171
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ax:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 2187
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aw:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 2231
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->y:Z

    return v0
.end method

.method public K()Ljava/io/File;
    .locals 2

    .prologue
    .line 2271
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2273
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2275
    :cond_0
    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aM:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/io/File;
    .locals 1

    .prologue
    .line 2294
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2295
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2297
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g:Ljava/io/File;

    return-object v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 2332
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aE:Z

    return v0
.end method

.method public O()J
    .locals 2

    .prologue
    .line 2500
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/u;->a(Landroid/content/Context;)Lcom/dolphin/browser/util/u;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/u;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public P()I
    .locals 2

    .prologue
    .line 2505
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/u;->a(Landroid/content/Context;)Lcom/dolphin/browser/util/u;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/u;->b(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 2629
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aP:Z

    return v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 2771
    const/4 v0, 0x0

    return v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2916
    const-string v0, "http://opsen.dolphin-browser.com/"

    return-object v0
.end method

.method public T()Z
    .locals 2

    .prologue
    .line 2924
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bE:Lmobi/mgeek/TunnyBrowser/cj;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/cj;->b:Lmobi/mgeek/TunnyBrowser/cj;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()V
    .locals 3

    .prologue
    .line 2928
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2929
    const-string v1, "load_images_state"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/ci;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2930
    const-string v1, "scrollable_left_state"

    iget-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2931
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2932
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 2933
    return-void
.end method

.method public V()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 2936
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->be:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2995
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aN:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 3222
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Z()Z
    .locals 3

    .prologue
    .line 3235
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_background_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 3362
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3363
    const-string v1, "search_tab_select_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3364
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3365
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 3101
    iput-wide p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bj:J

    .line 3102
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3103
    const-string v1, "suggestion_algorithm_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3104
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3105
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 3077
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->updateActivityOrientation(Landroid/app/Activity;)V

    .line 3079
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    .line 1221
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1223
    const-string v1, "last_show_set_as_default_browser"

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1224
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    if-eqz v1, :cond_0

    .line 1225
    const-string v1, "is_set_default_showed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1226
    iput-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    .line 1228
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1229
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 2088
    if-eqz p2, :cond_0

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2090
    :cond_0
    iput p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 2091
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2092
    const-string v1, "previous_user_agent"

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2093
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2094
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 2096
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 1253
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1254
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1255
    const-string v1, "addon_last_report_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1256
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1257
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V
    .locals 1

    .prologue
    .line 2695
    if-eqz p2, :cond_0

    .line 2696
    new-instance v0, Lcom/dolphin/browser/search/e;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/search/e;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aT:Lcom/dolphin/browser/search/g;

    .line 2697
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/search/a/c;->a(Lcom/dolphin/browser/search/b/b;)V

    .line 2699
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3289
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3290
    const-string v1, "reset_search_engine_once"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3291
    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/dolphin/browser/search/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3292
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    .line 3294
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lmobi/mgeek/TunnyBrowser/ci;)V
    .locals 3

    .prologue
    .line 1482
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    .line 1483
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1484
    const-string v1, "load_images_state"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/ci;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1485
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1486
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 1487
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1167
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aY:Z

    .line 1168
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1170
    const-string v1, "show_exit_confirmation"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1171
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1172
    return-void
.end method

.method public a(Landroid/content/Context;ZZ)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1196
    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    .line 1197
    iput-boolean p3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aW:Z

    .line 1198
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1200
    const-string v0, "last_show_set_as_default_browser"

    iget-wide v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    invoke-interface {v1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1201
    const-string v0, "never_show_set_default_clicked"

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1202
    if-nez p2, :cond_0

    .line 1203
    const-string v3, "is_default_browser"

    if-nez p3, :cond_3

    move v0, v2

    :goto_1
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1205
    :cond_0
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    if-nez v0, :cond_1

    .line 1206
    const-string v0, "is_set_default_showed"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1207
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    .line 1209
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1210
    return-void

    .line 1196
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 1203
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;ZZZ)V
    .locals 1

    .prologue
    .line 1643
    if-eqz p2, :cond_0

    .line 1644
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;Z)V

    .line 1646
    :cond_0
    if-eqz p3, :cond_1

    .line 1647
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;)V

    .line 1649
    :cond_1
    if-eqz p4, :cond_2

    .line 1650
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Landroid/content/Context;)V

    .line 1652
    :cond_2
    return-void
.end method

.method a(Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 880
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/SharedPreferences;)V

    .line 881
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/g;->h()V

    .line 882
    const-string v0, "speed_dial_homepage"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v:Z

    .line 883
    const-string v0, "homepage"

    const-string v3, "http://www.dolphin.com/features"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->u:Ljava/lang/String;

    .line 886
    :try_start_0
    const-string v0, "load_images_state"

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/ci;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ci;->valueOf(Ljava/lang/String;)Lmobi/mgeek/TunnyBrowser/ci;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    const-string v0, "enable_javascript"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j:Z

    .line 893
    const-string v0, "enable_plugins"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k:Z

    .line 895
    const-string v0, "plugin_state"

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$PluginState;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    .line 896
    const-string v3, "block_popup_windows"

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m:Z

    .line 898
    const-string v0, "show_security_warnings"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n:Z

    .line 899
    const-string v0, "remember_passwords"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o:Z

    .line 900
    const-string v0, "use_master_key"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p:Z

    .line 901
    const-string v0, "save_formdata"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->q:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->q:Z

    .line 902
    const-string v0, "accept_cookies"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->r:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->r:Z

    .line 904
    const-string v0, "offline_mode"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->W:I

    .line 905
    const-string v0, "server_cert_revocation_check"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X:Z

    .line 908
    :try_start_1
    const-string v0, "open_links_choice"

    const-string v3, "DEFAULT"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    const-string v3, "OPEN_IN_BACKGROUND_TAB"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    :goto_3
    const-string v0, "download_in_background"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->s:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->s:Z

    .line 925
    const-string v0, "login_initialized"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->w:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->w:Z

    .line 927
    :try_start_2
    const-string v0, "text_size"

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ac:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v3}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$TextSize;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ac:Lcom/dolphin/browser/core/IWebSettings$TextSize;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 931
    :goto_4
    const-string v0, "default_zoom"

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ad:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    invoke-virtual {v3}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ad:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    .line 932
    const-string v0, "autofit_pages"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x:Z

    .line 933
    const-string v0, "load_page"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z:Z

    .line 935
    const-string v0, "landscape_only"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->y:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->y:Z

    .line 937
    const-string v0, "orientation"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    .line 940
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N:Z

    .line 941
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x:Z

    if-eqz v0, :cond_5

    .line 942
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    .line 946
    :goto_5
    const-string v0, "default_text_encoding"

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t:Ljava/lang/String;

    .line 952
    const-string v3, "small_screen"

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    sget-object v4, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_6
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 954
    if-eqz v0, :cond_7

    .line 955
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    .line 965
    :goto_7
    const-string v0, "wide_viewport"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N:Z

    .line 966
    const-string v0, "enable_tracing"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Q:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Q:Z

    .line 967
    const-string v0, "enable_light_touch"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R:Z

    .line 968
    const-string v0, "enable_nav_dump"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->S:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->S:Z

    .line 969
    const-string v0, "enable_flick"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab:Z

    .line 971
    const-string v0, "user_agent"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 972
    const-string v0, "custom_user_agent"

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P:Ljava/lang/String;

    .line 975
    const-string v0, "js_engine_flags"

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->M:Ljava/lang/String;

    .line 978
    const-string v0, "enable_appcache"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->A:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->A:Z

    .line 979
    const-string v0, "enable_database"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B:Z

    .line 980
    const-string v0, "enable_domstorage"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C:Z

    .line 981
    const-string v0, "enable_geolocation"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D:Z

    .line 982
    const-string v0, "enable_workers"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E:Z

    .line 987
    const-string v0, "use_volume_button_scroll"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aj:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aj:Z

    .line 989
    const-string v0, "full_screen"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ak:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ak:Z

    .line 990
    const-string v0, "keep_status_bar"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->al:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->al:Z

    .line 991
    const-string v0, "show_zoom_button"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->am:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->am:Z

    .line 993
    const-string v0, "clear_cache_checked"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ao:Z

    .line 994
    const-string v0, "clear_history_checked"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->an:Z

    .line 995
    const-string v0, "show_open_in_background_dialog"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ap:Z

    .line 996
    const-string v0, "show_view_downloads_dialog"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aq:Z

    .line 998
    const-string v0, "fix_title_bar"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->at:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->at:Z

    .line 999
    const-string v0, "private_browsing"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    .line 1000
    const-string v0, "keep_screen_on"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aA:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aA:Z

    .line 1001
    const-string v0, "enable_search_suggestion"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    .line 1003
    const-string v0, "confirm_when_exit_through_menu"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aD:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aD:Z

    .line 1005
    const-string v0, "clear_cookie_when_exit"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aE:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aE:Z

    .line 1006
    const-string v0, "show_bookmarks_when_new_tab"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aF:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aF:Z

    .line 1008
    const-string v0, "show_last_closed_tabs"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aG:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aG:Z

    .line 1009
    const-string v0, "volume_button_action"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    .line 1012
    const-string v0, "show_media_action_dialog"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aJ:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aJ:Z

    .line 1014
    const-string v0, "media_action"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aK:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aK:I

    .line 1016
    const-string v0, "download_dir"

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aL:Ljava/lang/String;

    .line 1017
    const-string v0, "default_ua_profile_url"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->T:Ljava/lang/String;

    .line 1018
    const-string v0, "show_left_bar_mode_dialog_count"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->U:I

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->U:I

    .line 1020
    const-string v0, "gesture_success_count"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->V:I

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->V:I

    .line 1021
    const-string v0, "enable_long_press_menu"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Y:Z

    .line 1022
    const-string v0, "home_page_mode"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bw:I

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bw:I

    .line 1023
    const-string v0, "push_notification_enabled"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aQ:Z

    .line 1024
    const-string v0, "show_homepage_button"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aR:Z

    .line 1025
    const-string v0, "show_most_visited_folder"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aS:Z

    .line 1028
    const-string v0, "last_show_set_as_default_browser"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    .line 1030
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_show_set_as_default_browser"

    iget-wide v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1035
    :goto_8
    const-string v0, "never_show_set_default_clicked"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aW:Z

    .line 1036
    const-string v0, "is_set_default_showed"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    .line 1037
    const-string v0, "is_try_password_sync_showed"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bf:Z

    .line 1038
    const-string v0, "show_exit_confirmation"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aY:Z

    .line 1039
    const-string v0, "normal_data_track_enabled"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aZ:Z

    .line 1040
    const-string v0, "onstart_choice"

    const-string v3, "OPEN_NEW_PAGE"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/cj;->valueOf(Ljava/lang/String;)Lmobi/mgeek/TunnyBrowser/cj;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bE:Lmobi/mgeek/TunnyBrowser/cj;

    .line 1041
    const-string v0, "is_disable_password_sync_showed"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bg:Z

    .line 1042
    const-string v0, "can_show_disable_password_sync"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bh:Z

    .line 1043
    const-string v0, "suggestion_algorithm_version"

    const-wide/16 v3, 0x2

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bj:J

    .line 1045
    const-string v0, "click_count_for_dolphin_key_guide"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bc:I

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bc:I

    .line 1047
    const-string v0, "last_prune_image_count"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bd:I

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bd:I

    .line 1049
    const-string v0, "file_manager_path_to_save"

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aN:Ljava/lang/String;

    .line 1051
    const-string v0, "night_mode"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bx:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bx:Z

    .line 1052
    const-string v0, "only_auto_sync_in_wifi"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bi:Z

    .line 1054
    const-string v0, "scrollable_left_state"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    .line 1057
    const-string v0, "networkboost.dns_prefetch"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bk:Z

    .line 1058
    const-string v0, "networkboost.preconnection"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bl:Z

    .line 1059
    const-string v0, "networkboost.prefetch_strategy"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bm:I

    .line 1060
    const-string v0, "networkboost.preload_strategy"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bn:I

    .line 1061
    const-string v0, "networkboost.image_compression"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bo:I

    .line 1062
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/vg/a/a;->a(Landroid/content/SharedPreferences;)V

    .line 1065
    const-string v0, "enable_adblock"

    iget-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    .line 1066
    const-string v0, "adblock_option"

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bu:I

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bu:I

    .line 1067
    const-string v0, "adblock_disabled_by_user"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bv:Z

    .line 1068
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgeek/android/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1069
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bv:Z

    if-nez v0, :cond_0

    .line 1074
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setAdBlockEnabled(Z)V

    .line 1085
    :cond_0
    :goto_9
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 1086
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 896
    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    .line 913
    :cond_3
    :try_start_3
    const-string v3, "OPEN_IN_NEW_TAB"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 920
    :catch_1
    move-exception v0

    .line 921
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    .line 922
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z

    goto/16 :goto_3

    .line 917
    :cond_4
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aa:Z

    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 944
    :cond_5
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 952
    goto/16 :goto_6

    .line 957
    :cond_7
    const-string v3, "normal_layout"

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    sget-object v4, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    if-ne v0, v4, :cond_8

    move v0, v1

    :goto_a
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 959
    if-eqz v0, :cond_9

    .line 960
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 957
    goto :goto_a

    .line 962
    :cond_9
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    goto/16 :goto_7

    .line 1033
    :cond_a
    const-string v0, "last_show_set_as_default_browser"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    goto/16 :goto_8

    .line 1077
    :cond_b
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setAdBlockEnabled(Z)V

    goto :goto_9

    .line 928
    :catch_2
    move-exception v0

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bC:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bC:Ljava/lang/String;

    .line 1492
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 1494
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 2030
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 2031
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "agree_terms_of_use"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2034
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3266
    const-string v0, "https://opsen.dolphin-browser.com"

    return-object v0
.end method

.method public ab()Ljava/io/File;
    .locals 1

    .prologue
    .line 3358
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->af:Ljava/io/File;

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->ensureDir(Ljava/io/File;)Z

    .line 3359
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->af:Ljava/io/File;

    return-object v0
.end method

.method public ac()I
    .locals 3

    .prologue
    .line 3367
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_tab_select_index"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ad()V
    .locals 3

    .prologue
    .line 3372
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ae()I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    .line 3373
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    .line 3374
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3375
    const-string v1, "launch_count"

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3376
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3377
    return-void
.end method

.method public ae()I
    .locals 3

    .prologue
    .line 3381
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    if-eqz v0, :cond_0

    .line 3382
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    .line 3386
    :goto_0
    return v0

    .line 3384
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launch_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    .line 3386
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bs:I

    goto :goto_0
.end method

.method public autoFitPage()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2039
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x:Z

    return v0
.end method

.method public b(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 1247
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1248
    const-string v1, "addon_last_report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 2659
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bw:I

    if-eq v0, p2, :cond_0

    .line 2660
    iput p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bw:I

    .line 2661
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2662
    const-string v1, "home_page_mode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2663
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2665
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V
    .locals 1

    .prologue
    .line 2711
    if-eqz p2, :cond_0

    .line 2712
    new-instance v0, Lcom/dolphin/browser/search/e;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/search/e;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aU:Lcom/dolphin/browser/search/g;

    .line 2714
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1330
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    .line 1331
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1333
    const-string v1, "enable_search_suggestion"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1334
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1335
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 690
    const-string v0, "BrowserSettings"

    const-string v1, "update settings"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b:Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setLayoutAlgorithm(Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;)V

    .line 693
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    if-nez v0, :cond_2

    .line 695
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ak()Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 709
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->N:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUseWideViewPort(Z)V

    .line 710
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setLoadsImagesAutomatically(Z)V

    .line 711
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 713
    invoke-static {}, Lcom/dolphin/browser/util/Device;->isFroyoOrHigher()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 714
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->l:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V

    .line 719
    :goto_1
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 720
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 721
    invoke-interface {p1, v4}, Lcom/dolphin/browser/core/IWebSettings;->setMinimumFontSize(I)V

    .line 722
    invoke-interface {p1, v4}, Lcom/dolphin/browser/core/IWebSettings;->setMinimumLogicalFontSize(I)V

    .line 723
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDefaultFontSize(I)V

    .line 724
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDefaultFixedFontSize(I)V

    .line 725
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->S:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setNavDump(Z)V

    .line 726
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ac:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setTextSize(Lcom/dolphin/browser/core/IWebSettings$TextSize;)V

    .line 727
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ad:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDefaultZoom(Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;)V

    .line 728
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setLightTouchEnabled(Z)V

    .line 729
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setSavePassword(Z)V

    .line 730
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setLoadWithOverviewMode(Z)V

    .line 731
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->am:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setBuiltInZoomControls(Z)V

    .line 733
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bz:I

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setPageCacheCapacity(I)V

    .line 736
    invoke-interface {p1, v3}, Lcom/dolphin/browser/core/IWebSettings;->setNeedInitialFocus(Z)V

    .line 738
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setSupportMultipleWindows(Z)V

    .line 741
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->A:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setAppCacheEnabled(Z)V

    .line 742
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->B:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDatabaseEnabled(Z)V

    .line 743
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDomStorageEnabled(Z)V

    .line 744
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setWorkersEnabled(Z)V

    .line 747
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    if-eqz v0, :cond_8

    .line 748
    invoke-interface {p1, v3}, Lcom/dolphin/browser/core/IWebSettings;->setSaveFormData(Z)V

    .line 749
    invoke-interface {p1, v3}, Lcom/dolphin/browser/core/IWebSettings;->setGeolocationEnabled(Z)V

    .line 754
    :goto_2
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setPrivateBrowsing(Z)V

    .line 757
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->F:J

    invoke-interface {p1, v0, v1}, Lcom/dolphin/browser/core/IWebSettings;->setAppCacheMaxSize(J)V

    .line 758
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->H:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->I:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 762
    invoke-interface {p1, v3}, Lcom/dolphin/browser/core/IWebSettings;->setAllowFileAccess(Z)V

    .line 763
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setAllowContentAccess(Z)V

    .line 764
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setEnableSmoothTransition(Z)V

    .line 766
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bx:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setBrowserModeInNight(Z)V

    .line 767
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->br:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setEnableVideoCache(Z)V

    .line 768
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/IWebSettings;->setEnableVideoPlayer(Z)V

    .line 770
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->W:I

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setCacheMode(I)V

    .line 771
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setServerCertificateRevocationCheckEnabled(Z)V

    .line 774
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setAdBlockEnabled(Z)V

    .line 775
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bu:I

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setAdBlockOption(I)V

    .line 779
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setCustomErrorPageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_3
    invoke-static {}, Lcom/dolphin/browser/p/a;->a()Lcom/dolphin/browser/p/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/p/a;->a(Landroid/content/Context;Lcom/dolphin/browser/core/IWebSettings;)V

    .line 786
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cs;->getInstance()Lmobi/mgeek/TunnyBrowser/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/cs;->a(Ljava/lang/Object;)V

    .line 787
    return-void

    .line 698
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 700
    :cond_2
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    if-ne v0, v2, :cond_3

    .line 701
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    :cond_3
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 703
    const-string v0, "Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25"

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :cond_4
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 705
    const-string v0, "Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25"

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 706
    :cond_5
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_6
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON_DEMAND:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    :goto_4
    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    goto :goto_4

    .line 751
    :cond_8
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->q:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setSaveFormData(Z)V

    .line 752
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D:Z

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setGeolocationEnabled(Z)V

    goto/16 :goto_2

    .line 780
    :catch_0
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_3
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 2619
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aO:Z

    .line 2620
    return-void
.end method

.method public backup()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2475
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2476
    :catch_0
    move-exception v0

    .line 2477
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 2880
    if-eqz p2, :cond_0

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2885
    :cond_0
    iput p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 2886
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2887
    const-string v1, "user_agent"

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2888
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2889
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 2891
    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1383
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1384
    const-string v1, "speed_dial_homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1385
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1386
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v:Z

    .line 1387
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2279
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aL:Ljava/lang/String;

    .line 2280
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2281
    const-string v1, "download_dir"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2282
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2283
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 2639
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aP:Z

    .line 2640
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3049
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bx:Z

    return v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1338
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1339
    const-string v1, "enable_search_suggestion"

    iget-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    .line 1342
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    return v0
.end method

.method public canScrollLeftRight()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G()Z

    move-result v0

    return v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1533
    :try_start_0
    const-string v0, "clearCache"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1534
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebIconDatabase;->removeAllIcons()V

    .line 1537
    :cond_0
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g(Landroid/content/Context;)V

    .line 1538
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1539
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Landroid/content/Context;)V

    .line 1547
    :cond_1
    :goto_0
    const-string v0, "webviewCache.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1548
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1549
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1551
    :cond_2
    const-string v0, "webviewCache.db-journal"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1552
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1553
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1559
    :cond_3
    :goto_1
    return-void

    .line 1544
    :cond_4
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 1613
    if-eqz p1, :cond_1

    .line 1614
    const-string v0, "clearHistory"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1615
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1616
    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 1618
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/b;->d()V

    .line 1619
    if-eqz p2, :cond_0

    .line 1620
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cg;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/cg;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserSettings;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 1629
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/search/suggestions/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/search/suggestions/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/m;->a()V

    .line 1631
    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2290
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aM:Ljava/lang/String;

    .line 2291
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 3033
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bh:Z

    .line 3034
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3035
    const-string v1, "can_show_disable_password_sync"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3036
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3037
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 3040
    const/4 v0, 0x1

    return v0
.end method

.method public downloadInBackground()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1430
    const/4 v0, 0x1

    return v0
.end method

.method e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1563
    if-eqz p1, :cond_0

    .line 1564
    const-string v0, "clearHTML5Data"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1565
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->H:Ljava/lang/String;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->I:Ljava/lang/String;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G:Ljava/lang/String;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->J:Ljava/lang/String;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->K:Ljava/lang/String;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_appcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_geolocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_plugins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Ljava/lang/String;)V

    .line 1576
    :cond_0
    return-void
.end method

.method public e(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1893
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1894
    const-string v1, "user_tag_is_new_user"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1895
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1896
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2468
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/u;->a(Landroid/content/Context;)Lcom/dolphin/browser/util/u;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/util/u;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 2469
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 3087
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bi:Z

    if-ne p1, v0, :cond_0

    .line 3094
    :goto_0
    return-void

    .line 3090
    :cond_0
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bi:Z

    .line 3091
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3092
    const-string v1, "only_auto_sync_in_wifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3093
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1962
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1963
    const-string v1, "clear_cache_checked"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1964
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1965
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ao:Z

    .line 1966
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2484
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/u;->a(Landroid/content/Context;)Lcom/dolphin/browser/util/u;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/util/u;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 2485
    return-void
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 3129
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->r:Z

    .line 3130
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3131
    const-string v1, "accept_cookies"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3132
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/CookieManager;->setAcceptCookie(Z)V

    .line 3133
    return-void
.end method

.method public g(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1975
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1976
    const-string v1, "clear_history_checked"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1977
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1978
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->an:Z

    .line 1979
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2987
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->be:Ljava/lang/String;

    .line 2988
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2989
    const-string v1, "last_opened_download_tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2990
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2991
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 3218
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bp:Z

    .line 3219
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 3083
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bi:Z

    return v0
.end method

.method public getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 3313
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    return v0
.end method

.method public getAdBlockOption()I
    .locals 1

    .prologue
    .line 3327
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bu:I

    return v0
.end method

.method public getAddonBlackListServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2908
    const-string v0, "http://addon.dolphin-browser.com/blacklist"

    return-object v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 3390
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->W:I

    return v0
.end method

.method public getCustomUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2573
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 2789
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c:Ljava/io/File;

    return-object v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1413
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ad:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 2257
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aL:Ljava/lang/String;

    .line 2258
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aM:Ljava/lang/String;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2260
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aM:Ljava/lang/String;

    .line 2263
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2265
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2267
    :cond_1
    return-object v1
.end method

.method public getEnableLongPressMenu()Z
    .locals 2

    .prologue
    .line 1267
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Y:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSense()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isMeizu()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getImageCompressionLevel()I
    .locals 1

    .prologue
    .line 3194
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bo:I

    return v0
.end method

.method public getInstallTime()J
    .locals 4

    .prologue
    .line 3109
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    .line 3111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3112
    const-string v1, "install_time"

    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3113
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3115
    :cond_0
    iget-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->by:J

    return-wide v0
.end method

.method public getJsFlags()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepStatusBar()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1790
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->al:Z

    return v0
.end method

.method public getLastPruneImageCount()I
    .locals 1

    .prologue
    .line 2955
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bd:I

    return v0
.end method

.method public getMaxFakeAddonCount()I
    .locals 1

    .prologue
    .line 2808
    const/4 v0, 0x2

    return v0
.end method

.method public getOrientation()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2238
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    return v0
.end method

.method public getPrefetchStrategy()I
    .locals 1

    .prologue
    .line 3166
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bm:I

    return v0
.end method

.method public getPreloadStrategy()I
    .locals 1

    .prologue
    .line 3180
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bn:I

    return v0
.end method

.method public getPromotedAddonHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2912
    const-string v0, "http://opsen.dolphin-browser.com/"

    return-object v0
.end method

.method public getPushNotificationServerBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2783
    const-string v0, "http://pnsen.dolphin-browser.com/notification/android"

    return-object v0
.end method

.method public getSearchEngine()Lcom/dolphin/browser/search/g;
    .locals 3

    .prologue
    .line 2686
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aT:Lcom/dolphin/browser/search/g;

    if-nez v0, :cond_0

    .line 2687
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    .line 2688
    new-instance v1, Lcom/dolphin/browser/search/e;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/search/e;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aT:Lcom/dolphin/browser/search/g;

    .line 2690
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aT:Lcom/dolphin/browser/search/g;

    return-object v0
.end method

.method public getStateFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 2579
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ah:Ljava/io/File;

    return-object v0
.end method

.method public getTabStateFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 2584
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ai:Ljava/io/File;

    return-object v0
.end method

.method public getTabUndoHistoryLimit()I
    .locals 1

    .prologue
    .line 2603
    const/4 v0, 0x5

    return v0
.end method

.method public getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1406
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ac:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2864
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1913
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1919
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalSearchEngine()Lcom/dolphin/browser/search/g;
    .locals 3

    .prologue
    .line 2703
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aU:Lcom/dolphin/browser/search/g;

    if-nez v0, :cond_0

    .line 2704
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    .line 2705
    new-instance v1, Lcom/dolphin/browser/search/e;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/search/e;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aU:Lcom/dolphin/browser/search/g;

    .line 2707
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aU:Lcom/dolphin/browser/search/g;

    return-object v0
.end method

.method public getVolumeButtonAction()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2383
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3119
    const-string v0, "mobi.mgeek.TunnyBrowser.Theme.EnNightModeV10"

    return-object v0
.end method

.method h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1601
    const-string v0, "clearCookies"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1603
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/CookieManager;->removeAllCookie()V

    .line 1604
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewDatabase;->getInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewDatabase;->clearCookies()V

    .line 1605
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1609
    :goto_0
    return-void

    .line 1606
    :catch_0
    move-exception v0

    .line 1607
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public h(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2119
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2120
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    .line 2121
    const-string v1, "scrollable_left_state"

    iget-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bD:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2122
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2123
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3000
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aN:Ljava/lang/String;

    .line 3001
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3002
    const-string v1, "file_manager_path_to_save"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3003
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3004
    return-void
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3240
    const-string v1, "pref_background_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3241
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1635
    if-eqz p1, :cond_0

    .line 1636
    const-string v0, "clearRecentTabs"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1638
    invoke-static {v0, v1, v1}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1640
    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 2165
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2166
    const-string v1, "save_cache_to_sdcard"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2167
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2168
    return-void
.end method

.method public i(Z)V
    .locals 2

    .prologue
    .line 3344
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bv:Z

    .line 3345
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3346
    const-string v1, "adblock_disabled_by_user"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3347
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3348
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3349
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1818
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public imageCompressionServerLocale()I
    .locals 1

    .prologue
    .line 3208
    const/4 v0, 0x2

    return v0
.end method

.method isConfirmWhenExitThroughMenu()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2318
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aD:Z

    return v0
.end method

.method public isDNSPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 3137
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bk:Z

    return v0
.end method

.method public isEnableLocation()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2815
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D:Z

    return v0
.end method

.method public isEnableSearchSuggestion()Z
    .locals 1

    .prologue
    .line 2312
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aC:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1762
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ak:Z

    return v0
.end method

.method public isJavascriptEnabled()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1472
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j:Z

    return v0
.end method

.method public isKeepScreenOn()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2216
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aA:Z

    return v0
.end method

.method public isLoadImagesEnabled()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1499
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bB:Lmobi/mgeek/TunnyBrowser/ci;

    .line 1500
    sget-object v2, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    if-ne v1, v2, :cond_1

    .line 1501
    const/4 v0, 0x1

    .line 1514
    :cond_0
    :goto_0
    return v0

    .line 1502
    :cond_1
    sget-object v2, Lmobi/mgeek/TunnyBrowser/ci;->b:Lmobi/mgeek/TunnyBrowser/ci;

    if-ne v1, v2, :cond_3

    .line 1503
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bC:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1504
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1505
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_2

    .line 1507
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bC:Ljava/lang/String;

    .line 1510
    :cond_2
    const-string v0, "WIFI"

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1511
    :cond_3
    sget-object v2, Lmobi/mgeek/TunnyBrowser/ci;->c:Lmobi/mgeek/TunnyBrowser/ci;

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public isMasterKeyEnabled()Z
    .locals 1

    .prologue
    .line 2839
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p:Z

    return v0
.end method

.method public isMobileView()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2060
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalDataTrackEnabled()Z
    .locals 1

    .prologue
    .line 2795
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aZ:Z

    return v0
.end method

.method public isPreconnectEnabled()Z
    .locals 1

    .prologue
    .line 3152
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bl:Z

    return v0
.end method

.method public isPrivateBrowsing()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2198
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    return v0
.end method

.method public isPushNotificationEnabled()Z
    .locals 1

    .prologue
    .line 2748
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aQ:Z

    return v0
.end method

.method public isRememberPasswords()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2828
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o:Z

    return v0
.end method

.method public isServerCertificateRevocationCheckEnabled()Z
    .locals 1

    .prologue
    .line 3403
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X:Z

    return v0
.end method

.method public isShowSecurityWarnings()Z
    .locals 1

    .prologue
    .line 2850
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n:Z

    return v0
.end method

.method public isSupportCustomAddressBar()Z
    .locals 1

    .prologue
    .line 2949
    const/4 v0, 0x0

    return v0
.end method

.method public isTabUndoEnabled()Z
    .locals 1

    .prologue
    .line 2609
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWeiboFollowUsShow()Z
    .locals 1

    .prologue
    .line 2676
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 1901
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I

    return v0
.end method

.method j(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1655
    if-eqz p1, :cond_0

    .line 1656
    const-string v0, "clearFormData"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1657
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewDatabase;->getInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewDatabase;->clearFormData()V

    .line 1658
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1659
    if-eqz v0, :cond_0

    .line 1660
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1661
    if-eqz v0, :cond_0

    .line 1662
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->clearFormData()V

    .line 1666
    :cond_0
    return-void
.end method

.method public j(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 2176
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2177
    const-string v1, "smart_cache"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2178
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2179
    return-void
.end method

.method k(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1670
    const-string v0, "clearPasswords"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1671
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewDatabase;->getInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/WebViewDatabase;

    move-result-object v0

    .line 1675
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewDatabase;->clearUsernamePassword()V

    .line 1676
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewDatabase;->clearHttpAuthUsernamePassword()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    :goto_0
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public k(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 2337
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2338
    const-string v1, "clear_cookie_when_exit"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2339
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2340
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aE:Z

    .line 2341
    return-void
.end method

.method public k()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2134
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->av:Z

    if-nez v0, :cond_3

    .line 2135
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    .line 2136
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2137
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2138
    const/16 v5, 0xf

    if-le v3, v5, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v5, 0xe

    if-le v3, v5, :cond_1

    const-string v3, "SCL21KDALJD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->au:Z

    .line 2142
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->av:Z

    .line 2145
    :cond_3
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->at:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->au:Z

    if-eqz v0, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    return v2

    :cond_6
    move v0, v2

    .line 2138
    goto :goto_0
.end method

.method l(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1706
    const-string v0, "clearDatabases"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1707
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebStorage;->deleteAllData()V

    .line 1708
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x(Landroid/content/Context;)V

    .line 1709
    return-void
.end method

.method public l(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 2764
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aR:Z

    .line 2765
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2766
    const-string v1, "show_homepage_button"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2767
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2768
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 3124
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->r:Z

    return v0
.end method

.method m(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1713
    const-string v0, "clearLocationAccess"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 1714
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IGeolocationPermissions;->clearAll()V

    .line 1715
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x(Landroid/content/Context;)V

    .line 1716
    return-void
.end method

.method public m(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 2774
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aS:Z

    .line 2775
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2776
    const-string v1, "show_most_visited_folder"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2777
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2778
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 3214
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3270
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1721
    invoke-static {p1}, Lcom/dolphin/browser/pagedrop/activity/q;->a(Landroid/content/Context;)V

    .line 1722
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->f()V

    .line 1724
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1725
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1726
    sget-object v0, Lcom/dolphin/browser/n/a;->n:Lmobi/mgeek/TunnyBrowser/R$xml;

    const v0, 0x7f050003

    invoke-static {p1, v0, v3}, Ldolphin/preference/z;->a(Landroid/content/Context;IZ)V

    .line 1727
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p:Z

    .line 1729
    const-string v0, "http://www.dolphin.com/features"

    invoke-virtual {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p0, p1, v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;Z)V

    .line 1731
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L:Lmobi/mgeek/TunnyBrowser/hw;

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->L:Lmobi/mgeek/TunnyBrowser/hw;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->F:J

    .line 1735
    :cond_0
    invoke-virtual {p0, p1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setPrivateBrowsing(Landroid/content/Context;Z)V

    .line 1736
    return-void
.end method

.method public n(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 2800
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aZ:Z

    .line 2801
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2802
    const-string v1, "normal_data_track_enabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2803
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2804
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3274
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 3057
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bx:Z

    .line 3058
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3059
    const-string v1, "night_mode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3060
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3062
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3063
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3065
    :cond_0
    return-void
.end method

.method public o(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1829
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1832
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1833
    iget v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ar:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1838
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1833
    goto :goto_0

    .line 1835
    :catch_0
    move-exception v1

    .line 1836
    const-string v2, "Can\'t get version code"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1420
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1848
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1851
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1852
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1853
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1854
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->as:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    if-nez v4, :cond_1

    const/16 v5, 0x12c

    if-lt v2, v5, :cond_1

    .line 1866
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1858
    :cond_1
    if-eqz v4, :cond_3

    .line 1859
    :try_start_1
    invoke-static {v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j(Ljava/lang/String;)I

    move-result v2

    .line 1860
    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1861
    if-le v3, v2, :cond_2

    if-gtz v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    const-string v2, "Can\'t get version code"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 3280
    const/4 v0, 0x1

    return v0
.end method

.method public q(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1888
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1889
    const-string v1, "user_tag_is_new_user"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 2100
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2101
    const-string v1, "previous_user_agent"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 3284
    invoke-static {}, Lcom/dolphin/browser/f/d/d;->a()Lcom/dolphin/browser/f/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/d;->d()V

    .line 3285
    return-void
.end method

.method public restore()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2491
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2495
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2492
    :catch_0
    move-exception v0

    .line 2493
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3308
    const-string v0, "com.NeedForSpeed.ToolKit.AdBlock"

    return-object v0
.end method

.method public s(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 2428
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->I()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2429
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 2430
    const/4 v0, 0x1

    .line 2432
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "webviewCache"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v3, 0xa00000

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/StorageHelper;->isDirSizeLargerThan(Ljava/io/File;J)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2437
    :goto_0
    if-eqz v0, :cond_2

    .line 2440
    :try_start_1
    const-string v0, "Cache is to large, clear all cache."

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;)I

    .line 2441
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2442
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2444
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Landroid/content/Context;)V

    .line 2449
    :cond_0
    :goto_1
    const-string v0, "webviewCache.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2450
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2451
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2453
    :cond_1
    const-string v0, "webviewCache.db-journal"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2455
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2456
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2464
    :cond_2
    :goto_2
    return-void

    .line 2447
    :cond_3
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2434
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public setAdBlockEnabled(Z)V
    .locals 2

    .prologue
    .line 3318
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bt:Z

    .line 3319
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3320
    const-string v1, "enable_adblock"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3321
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3322
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3323
    return-void
.end method

.method public setAdBlockOption(I)V
    .locals 2

    .prologue
    .line 3332
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bu:I

    .line 3333
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3334
    const-string v1, "adblock_option"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3335
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3336
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3337
    return-void
.end method

.method public setAutoFitPage(Landroid/content/Context;Z)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2045
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "autofit_pages"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2048
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->x:Z

    .line 2049
    return-void
.end method

.method public setCacheMode(I)V
    .locals 2

    .prologue
    .line 3394
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->W:I

    .line 3395
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3396
    const-string v1, "offline_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3397
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3398
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3399
    return-void
.end method

.method public setConfirmWhenExitThroughMenu(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2324
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2325
    const-string v1, "confirm_when_exit_through_menu"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2326
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2327
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aD:Z

    .line 2328
    return-void
.end method

.method public setCustomUserAgent(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/16 v2, 0x64

    .line 2870
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P:Ljava/lang/String;

    .line 2871
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 2872
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2873
    const-string v1, "user_agent"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2874
    const-string v1, "custom_user_agent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2875
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2876
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 2877
    return-void
.end method

.method public setDNSPrefetchEnabled(Z)V
    .locals 2

    .prologue
    .line 3142
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bk:Z

    .line 3143
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3144
    const-string v1, "networkboost.dns_prefetch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3145
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3146
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3147
    return-void
.end method

.method public setDownloadInBackground(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2016
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2017
    const-string v1, "download_in_background"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2018
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2019
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->s:Z

    .line 2020
    return-void
.end method

.method public setEnableLocationEnabled(Z)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2822
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D:Z

    .line 2823
    return-void
.end method

.method public setEnableVideoCache(Z)V
    .locals 0

    .prologue
    .line 3303
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->br:Z

    .line 3304
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3305
    return-void
.end method

.method public setFullScreen(Landroid/content/Context;ZZ)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1768
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ak:Z

    .line 1769
    if-eqz p3, :cond_0

    .line 1770
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1771
    const-string v1, "full_screen"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1772
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1774
    :cond_0
    return-void
.end method

.method public setHomePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1371
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1372
    const-string v1, "homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1373
    const-string v1, "speed_dial_homepage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1376
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1377
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->u:Ljava/lang/String;

    .line 1378
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v:Z

    .line 1379
    return-void
.end method

.method public setImageCompressionLevel(I)V
    .locals 3

    .prologue
    .line 3199
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bo:I

    .line 3200
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3201
    const-string v1, "networkboost.image_compression"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3202
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3203
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3204
    return-void
.end method

.method public setJavascriptEnabled(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1462
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j:Z

    .line 1463
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1464
    const-string v1, "enable_javascript"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1465
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1466
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 1467
    return-void
.end method

.method public setKeepScreenOn(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2223
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aA:Z

    .line 2224
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2225
    const-string v1, "keep_screen_on"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2226
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2227
    return-void
.end method

.method public setKeepStatusBar(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1780
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->al:Z

    .line 1781
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1782
    const-string v1, "keep_status_bar"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1783
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1784
    return-void
.end method

.method public setLastPruneImageCount(I)V
    .locals 2

    .prologue
    .line 2961
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bd:I

    .line 2962
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2963
    const-string v1, "last_prune_image_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2964
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2965
    return-void
.end method

.method public setLoadImagesEnabled(Landroid/content/Context;Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1478
    if-eqz p2, :cond_0

    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->a:Lmobi/mgeek/TunnyBrowser/ci;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;Lmobi/mgeek/TunnyBrowser/ci;)V

    .line 1479
    return-void

    .line 1478
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ci;->c:Lmobi/mgeek/TunnyBrowser/ci;

    goto :goto_0
.end method

.method public setMasterKeyEnabled(Z)V
    .locals 0

    .prologue
    .line 2844
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->p:Z

    .line 2845
    return-void
.end method

.method public setMobileView(Landroid/content/Context;ZZ)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2072
    if-eqz p2, :cond_1

    .line 2073
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->r(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 2078
    :goto_0
    if-eqz p3, :cond_0

    .line 2079
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2080
    const-string v1, "user_agent"

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2081
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2083
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 2084
    return-void

    .line 2075
    :cond_1
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    invoke-virtual {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;I)V

    .line 2076
    const/4 v0, 0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    goto :goto_0
.end method

.method public setOpenInBackground(Landroid/content/Context;Z)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2011
    return-void
.end method

.method public setOrientation(Landroid/content/Context;I)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2245
    iput p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    .line 2246
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 2247
    if-eqz v0, :cond_0

    .line 2248
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 2250
    :cond_0
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2251
    const-string v1, "orientation"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2252
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2253
    return-void
.end method

.method public setPreconnectEnabled(Z)V
    .locals 2

    .prologue
    .line 3157
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bl:Z

    .line 3158
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3159
    const-string v1, "networkboost.preconnection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3160
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3161
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3162
    return-void
.end method

.method public setPrefetchStrategy(I)V
    .locals 3

    .prologue
    .line 3171
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bn:I

    .line 3172
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3173
    const-string v1, "networkboost.prefetch_strategy"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3174
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3175
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3176
    return-void
.end method

.method public setPreloadStrategy(I)V
    .locals 3

    .prologue
    .line 3185
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->bn:I

    .line 3186
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3187
    const-string v1, "networkboost.preload_strategy"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3188
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3189
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3190
    return-void
.end method

.method public setPrivateBrowsing(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2205
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->az:Z

    .line 2206
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2207
    const-string v1, "private_browsing"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2208
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2209
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 2210
    return-void
.end method

.method public setRememberPasswordsEnabled(Z)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2834
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o:Z

    .line 2835
    return-void
.end method

.method public setScrollLeftRight(Landroid/content/Context;Z)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2129
    invoke-virtual {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Landroid/content/Context;Z)V

    .line 2130
    return-void
.end method

.method public setServerCertificateRevocationCheckEnabled(Z)V
    .locals 2

    .prologue
    .line 3408
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->X:Z

    .line 3409
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3410
    const-string v1, "server_cert_revocation_check"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3411
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3412
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 3413
    return-void
.end method

.method public setShowSecurityWarningsEnabled(Z)V
    .locals 0

    .prologue
    .line 2856
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n:Z

    .line 2857
    return-void
.end method

.method public setShowZoomButton(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1804
    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->am:Z

    .line 1805
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1806
    const-string v1, "show_zoom_button"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1807
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1808
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b()V

    .line 1809
    return-void
.end method

.method public setVolumeButtonAction(Landroid/content/Context;I)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2373
    invoke-static {p1}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2374
    const-string v1, "volume_button_action"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2375
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2376
    iput p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    .line 2377
    return-void
.end method

.method public setWeiboFollowed(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 2682
    return-void
.end method

.method public shouldUpdateAddonBlackList()Z
    .locals 1

    .prologue
    .line 3298
    const/4 v0, 0x1

    return v0
.end method

.method public showSecurityWarnings()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1436
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n:Z

    return v0
.end method

.method public showZoomButton()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1797
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->am:Z

    return v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 791
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->u(Landroid/content/Context;)V

    .line 792
    return-void
.end method

.method public t(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 2724
    :try_start_0
    invoke-static {p1}, Lcom/dolphin/browser/core/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/CookieSyncManager;

    move-result-object v7

    .line 2726
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->al()Ljava/lang/String;

    move-result-object v3

    .line 2727
    const-string v2, "version"

    .line 2728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x41353000

    add-long v5, v0, v4

    .line 2729
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v0

    const-string v1, "dolphin-browser.com"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/core/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2730
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v0

    const-string v1, "dolphin-browser.cn"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/core/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2733
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 2734
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    .line 2735
    if-eqz v0, :cond_0

    .line 2736
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/Account/p;->a(Landroid/content/Context;)V

    .line 2739
    :cond_0
    invoke-virtual {v7}, Lcom/dolphin/browser/core/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2743
    :goto_0
    return-void

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public u()V
    .locals 3

    .prologue
    .line 1143
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    if-nez v0, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->P:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    const/4 v0, 0x0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    .line 1150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aI:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1151
    const-string v1, "user_agent"

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1152
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public updateActivityOrientation(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 2670
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aB:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2671
    return-void
.end method

.method public useCustomTextSelection()Z
    .locals 1

    .prologue
    .line 2597
    const/4 v0, 0x1

    return v0
.end method

.method public useVolumeButtonScroll()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1756
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aj:Z

    return v0
.end method

.method public useVolumeButtonScrollPage()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2360
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useVolumeButtonSwtichTab()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2366
    const/4 v0, 0x2

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 1162
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aY:Z

    return v0
.end method

.method public w()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1176
    iget-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aW:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1182
    :cond_0
    :goto_0
    return v0

    .line 1179
    :cond_1
    iget-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aX:Z

    if-eqz v2, :cond_2

    .line 1180
    iget-wide v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1182
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->aV:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 1261
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Z:Z

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->V:I

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 1354
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->v:Z

    return v0
.end method
