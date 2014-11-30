.class public Lmobi/mgeek/TunnyBrowser/BrowserActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/core/j;
.implements Lcom/dolphin/browser/core/k;
.implements Lcom/dolphin/browser/theme/aq;
.implements Lcom/mgeek/android/ui/ag;
.implements Lcom/mgeek/android/ui/ai;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static ab:Lcom/dolphin/browser/util/ch;

.field public static final c:Landroid/widget/FrameLayout$LayoutParams;

.field public static final d:Landroid/widget/FrameLayout$LayoutParams;

.field private static k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private static l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmobi/mgeek/TunnyBrowser/BrowserActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/dolphin/browser/search/ui/c;

.field private D:Lcom/dolphin/browser/search/ui/x;

.field private E:Z

.field private final F:Landroid/os/Handler;

.field private G:I

.field private H:Lmobi/mgeek/TunnyBrowser/hu;

.field private I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private J:Lmobi/mgeek/TunnyBrowser/ei;

.field private K:Lcom/dolphin/browser/t/l;

.field private L:Lcom/dolphin/browser/core/TabManager;

.field private M:Landroid/view/ViewGroup;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/FrameLayout;

.field private P:Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;

.field private Q:Z

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Landroid/graphics/Bitmap;

.field private X:Landroid/view/View;

.field private Y:Lcom/mgeek/android/ui/MainScreen;

.field private Z:Landroid/view/ViewGroup;

.field a:Z

.field private aa:Landroid/widget/Toast;

.field private final ac:Lcom/dolphin/browser/tabbar/i;

.field private ad:Landroid/view/GestureDetector;

.field private ae:Lcom/dolphin/browser/ui/e;

.field private final af:Lcom/dolphin/browser/extensions/p;

.field private final ag:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

.field private final ah:Lcom/dolphin/browser/util/ci;

.field private ai:Z

.field private aj:Lcom/dolphin/browser/menu/v;

.field private ak:Lcom/dolphin/browser/menu/MenuBar;

.field private al:Lcom/dolphin/browser/menu/h;

.field private am:Lcom/dolphin/browser/titlebar/b;

.field private an:Z

.field private ao:Z

.field private ap:Lcom/dolphin/browser/tablist/TabListView;

.field private aq:Lcom/dolphin/browser/menu/i;

.field private ar:Landroid/view/ViewGroup;

.field private as:Lcom/mgeek/android/ui/a;

.field b:Z

.field private e:Lcom/dolphin/browser/d/c;

.field private f:Lcom/dolphin/browser/sidebar/v;

.field private g:Lcom/dolphin/browser/sidebar/x;

.field private h:Landroid/view/ViewGroup;

.field private i:Lcom/dolphin/browser/titlebar/q;

.field private j:Lmobi/mgeek/TunnyBrowser/gv;

.field private m:Lcom/dolphin/browser/extensions/ThemeManager;

.field private n:Lcom/dolphin/browser/theme/data/a;

.field private o:Landroid/content/Intent;

.field private p:Landroid/os/Bundle;

.field private q:Landroid/view/View;

.field private r:Lmobi/mgeek/TunnyBrowser/hj;

.field private s:Z

.field private t:Lmobi/mgeek/TunnyBrowser/bq;

.field private u:Z

.field private final v:Lcom/dolphin/browser/core/ad;

.field private w:Lcom/dolphin/browser/f/e/b;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 387
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l:Ljava/util/HashSet;

    .line 1587
    const/4 v0, 0x0

    sput-boolean v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->y:Z

    .line 3559
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 3562
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 397
    new-instance v0, Lmobi/mgeek/TunnyBrowser/x;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/x;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->r:Lmobi/mgeek/TunnyBrowser/hj;

    .line 453
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->s:Z

    .line 1114
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bm;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bm;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->v:Lcom/dolphin/browser/core/ad;

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x:Ljava/util/ArrayList;

    .line 2314
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ah;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ah;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->D:Lcom/dolphin/browser/search/ui/x;

    .line 2796
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->E:Z

    .line 3011
    new-instance v0, Lmobi/mgeek/TunnyBrowser/aj;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/aj;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    .line 3530
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Q:Z

    .line 3535
    iput v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->R:I

    .line 3536
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08040f

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    .line 3555
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    .line 4752
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ap;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ap;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ac:Lcom/dolphin/browser/tabbar/i;

    .line 5600
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ar;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ar;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ae:Lcom/dolphin/browser/ui/e;

    .line 5694
    new-instance v0, Lmobi/mgeek/TunnyBrowser/as;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/as;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->af:Lcom/dolphin/browser/extensions/p;

    .line 5709
    new-instance v0, Lmobi/mgeek/TunnyBrowser/au;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/au;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ag:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    .line 5737
    new-instance v0, Lmobi/mgeek/TunnyBrowser/aw;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/aw;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ah:Lcom/dolphin/browser/util/ci;

    .line 6473
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai:Z

    .line 6494
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ay;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ay;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->al:Lcom/dolphin/browser/menu/h;

    .line 6526
    new-instance v0, Lmobi/mgeek/TunnyBrowser/az;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/az;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->am:Lcom/dolphin/browser/titlebar/b;

    .line 6563
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->an:Z

    .line 6565
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ao:Z

    .line 7044
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    .line 458
    sput-object p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 459
    return-void
.end method

.method static synthetic A(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ay()V

    return-void
.end method

.method static synthetic C(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aT()V

    return-void
.end method

.method static synthetic D(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/MenuBar;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;I)I
    .locals 0

    .prologue
    .line 303
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    return p1
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q:Landroid/view/View;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 4830
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4831
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 4696
    const-string v0, "BrowserActivity"

    const-string v1, "sendSonarLoginCommand"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4698
    new-instance v0, Lcom/dolphin/browser/r/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/r/b;-><init>(Landroid/content/Context;)V

    .line 4699
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/r/b;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 4700
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z[B)V
    .locals 3

    .prologue
    .line 5249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5250
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5251
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5252
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5253
    const-string v1, "new_tab"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5254
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5255
    if-eqz p3, :cond_0

    .line 5256
    const-string v1, "com.android.browser.post_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5258
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5259
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 7628
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7629
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->a(Landroid/content/res/Configuration;)V

    .line 7631
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 1

    .prologue
    .line 7609
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7610
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 7612
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/theme/data/b;)V
    .locals 6

    .prologue
    const v5, 0x7f0e03a2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 6811
    new-instance v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6813
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05b5

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6815
    sget-object v0, Lcom/dolphin/browser/theme/data/b;->c:Lcom/dolphin/browser/theme/data/b;

    if-ne p1, v0, :cond_0

    .line 6816
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05ac

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6826
    :goto_0
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05b3

    new-instance v3, Lmobi/mgeek/TunnyBrowser/bd;

    invoke-direct {v3, p0, v0}, Lmobi/mgeek/TunnyBrowser/bd;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6843
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05b2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6844
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6845
    return-void

    .line 6821
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05b4

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6823
    const-string v0, "market://details?id=mobi.mgeek.TunnyBrowser.Theme.EnNightModeV10"

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 6978
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/be;

    invoke-direct {v1, p0, p1}, Lmobi/mgeek/TunnyBrowser/be;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/io/File;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6985
    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 4307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4309
    if-eqz p1, :cond_0

    .line 4310
    const-string v1, "com.dolphin.browser.action.bookmark.folderId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4313
    :cond_0
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 4314
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3814
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3816
    const-string v1, "shared_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3817
    const-string v1, "shared_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3819
    const-string v1, "shared_type"

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3821
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3822
    return-void
.end method

.method public static final a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 382
    sput-object p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 383
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Z)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g(Z)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 1069
    if-eqz p1, :cond_0

    const-string v0, "com.dolphin.browser.action.EDIT_BOOKMARK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Lcom/dolphin/browser/c/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/c/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/b;->a()Z

    .line 1073
    const/4 v0, 0x1

    .line 1075
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 5288
    invoke-static {}, Lcom/dolphin/browser/j/b/g;->a()Lcom/dolphin/browser/j/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/j/b/g;->b(Landroid/os/Bundle;)V

    .line 5290
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->d(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5291
    const-string v0, "BrowserActivity"

    const-string v1, "restoreState unsuccessful"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->az()V

    .line 5294
    const/4 v0, 0x0

    .line 5300
    :goto_0
    return v0

    .line 5296
    :cond_0
    const-string v0, "BrowserActivity"

    const-string v1, "restoreState successful"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    const-string v0, "BrowserActivity"

    const-string v1, "attachTabToContentView"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 7305
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dolphin://dolphin-companion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/ITab;)Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    return v0
.end method

.method private aA()V
    .locals 2

    .prologue
    .line 1387
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ab;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ab;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 1401
    return-void
.end method

.method private aB()V
    .locals 1

    .prologue
    .line 1605
    const/4 v0, 0x1

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i(Z)V

    .line 1606
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    if-eqz v0, :cond_0

    .line 1607
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ch;->a()V

    .line 1609
    :cond_0
    return-void
.end method

.method private aC()V
    .locals 2

    .prologue
    .line 1613
    const/4 v0, 0x0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i(Z)V

    .line 1614
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ah:Lcom/dolphin/browser/util/ci;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/ch;->a(Lcom/dolphin/browser/util/ci;)V

    .line 1617
    :cond_0
    return-void
.end method

.method private aD()V
    .locals 3

    .prologue
    .line 1638
    const-string v0, "BrowserActivity.onResume"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 1640
    new-instance v1, Lmobi/mgeek/TunnyBrowser/ac;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ac;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    .line 1648
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aE()V

    .line 1650
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->y:Z

    if-nez v1, :cond_1

    .line 1651
    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    if-nez v1, :cond_0

    .line 1652
    new-instance v1, Lcom/dolphin/browser/util/ch;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/util/ch;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    .line 1654
    :cond_0
    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ah:Lcom/dolphin/browser/util/ci;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/ch;->a(Lcom/dolphin/browser/util/ci;)V

    .line 1657
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Z)V

    .line 1658
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 1661
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eu;->c()V

    .line 1662
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 1669
    return-void
.end method

.method private aE()V
    .locals 3

    .prologue
    .line 2041
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/CookieSyncManager;->startSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    :cond_0
    :goto_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ad;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ad;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 2056
    return-void

    .line 2044
    :catch_0
    move-exception v0

    .line 2045
    const/4 v1, 0x0

    const-string v2, "CookieSyncManager startSync"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aF()V
    .locals 3

    .prologue
    .line 2061
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/CookieSyncManager;->stopSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2068
    :cond_0
    :goto_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ae;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/ae;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 2076
    return-void

    .line 2064
    :catch_0
    move-exception v0

    .line 2065
    const/4 v1, 0x0

    const-string v2, "CookieSyncManager stopSync"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aG()V
    .locals 4

    .prologue
    .line 2081
    const/4 v1, 0x0

    .line 2083
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    .line 2084
    const-string v2, "icons"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/WebIconDatabase;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    if-eqz v1, :cond_0

    .line 2099
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2094
    :catch_1
    move-exception v0

    .line 2095
    :try_start_2
    const-string v2, "BrowserActivity"

    const-string v3, "retainIconsOnStartup"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2097
    if-eqz v1, :cond_0

    .line 2099
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2100
    :catch_2
    move-exception v0

    .line 2101
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2097
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 2099
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2102
    :cond_1
    :goto_1
    throw v0

    .line 2100
    :catch_3
    move-exception v1

    .line 2101
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private aH()V
    .locals 1

    .prologue
    .line 3755
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3756
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3758
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e050f

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3759
    return-void
.end method

.method private aI()V
    .locals 2

    .prologue
    .line 3851
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3852
    if-eqz v0, :cond_0

    .line 3853
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->setIsBackOrForward(Z)V

    .line 3855
    :cond_0
    return-void
.end method

.method private aJ()V
    .locals 0

    .prologue
    .line 4719
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Q()V

    .line 4720
    return-void
.end method

.method private aK()Z
    .locals 1

    .prologue
    .line 5346
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aL()Z
    .locals 1

    .prologue
    .line 5597
    const/4 v0, 0x0

    return v0
.end method

.method private aM()V
    .locals 1

    .prologue
    .line 5686
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 5687
    return-void
.end method

.method private aN()V
    .locals 6

    .prologue
    .line 5992
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5993
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5994
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v2

    .line 5995
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5997
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e014e

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    new-instance v3, Lmobi/mgeek/TunnyBrowser/ax;

    invoke-direct {v3, p0, v1}, Lmobi/mgeek/TunnyBrowser/ax;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 6010
    return-void
.end method

.method private aO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6070
    const-string v0, "http://dolphin-browser.com/help/dolphin-gesture.htm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6071
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 6072
    const-string v1, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6073
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aP()I
    .locals 1

    .prologue
    .line 6420
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->be()I

    move-result v0

    return v0
.end method

.method private aQ()Z
    .locals 1

    .prologue
    .line 6458
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aR()Z
    .locals 1

    .prologue
    .line 6463
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aS()V
    .locals 2

    .prologue
    .line 6487
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    if-nez v0, :cond_0

    .line 6488
    new-instance v0, Lcom/dolphin/browser/menu/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    .line 6489
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/menu/v;->b(Landroid/content/Context;)Z

    .line 6490
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->al:Lcom/dolphin/browser/menu/h;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/v;->a(Lcom/dolphin/browser/menu/h;)V

    .line 6492
    :cond_0
    return-void
.end method

.method private aT()V
    .locals 0

    .prologue
    .line 6524
    return-void
.end method

.method private aU()V
    .locals 2

    .prologue
    .line 6629
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmobi/mgeek/TunnyBrowser/fl;->d(Z)V

    .line 6630
    return-void
.end method

.method private aV()V
    .locals 1

    .prologue
    .line 6651
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->j()V

    .line 6652
    return-void
.end method

.method private aW()V
    .locals 1

    .prologue
    .line 7048
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    if-nez v0, :cond_0

    .line 7049
    new-instance v0, Lcom/dolphin/browser/tablist/TabListView;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/TabListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    .line 7051
    :cond_0
    return-void
.end method

.method private aX()V
    .locals 2

    .prologue
    .line 7496
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7497
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o()V

    .line 7498
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ei;->b(Z)V

    .line 7500
    :cond_0
    return-void
.end method

.method private aY()V
    .locals 2

    .prologue
    .line 7536
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    if-eqz v0, :cond_0

    .line 7537
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/a;->bringToFront()V

    .line 7558
    :goto_0
    return-void

    .line 7540
    :cond_0
    new-instance v0, Lcom/mgeek/android/ui/a;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    .line 7541
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/bg;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/bg;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/a;->a(Lcom/mgeek/android/ui/d;)V

    .line 7557
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private aZ()Z
    .locals 1

    .prologue
    .line 7562
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private al()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 538
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->s:Z

    .line 540
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aA()V

    .line 541
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(I)V

    .line 542
    const-string v2, "App Start(First Start), stage one: from enter FirstLaunchActivity to exit FirstLaunchActivity"

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 544
    const-string v2, "App Start(First Start), from enter FirstLaunchActivity to click start button"

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 552
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_1

    .line 549
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method private am()V
    .locals 3

    .prologue
    .line 592
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/bq;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/x;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t:Lmobi/mgeek/TunnyBrowser/bq;

    .line 593
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t:Lmobi/mgeek/TunnyBrowser/bq;

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 595
    return-void
.end method

.method private an()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 655
    invoke-static {}, Lcom/dolphin/browser/v/e;->a()V

    .line 656
    const-string v0, "initBeforeMainUI"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;)Z

    move-result v1

    .line 659
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v2

    .line 660
    if-eqz v1, :cond_1

    .line 661
    const/16 v3, 0x140

    if-ge v2, v3, :cond_1

    .line 663
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2, p0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;Z)V

    .line 666
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    const-string v3, "theme"

    invoke-virtual {p0, v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 669
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    const-string v3, "theme_promotion"

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/AppContext;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 671
    const-string v2, "wallpapers"

    invoke-virtual {p0, v2, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 674
    const-string v2, "themes"

    invoke-virtual {p0, v2, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 677
    invoke-static {}, Lcom/dolphin/browser/theme/bc;->a()Lcom/dolphin/browser/theme/bc;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/theme/bc;->a(Z)V

    .line 681
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    iput-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 682
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c()Lcom/dolphin/browser/theme/data/a;

    move-result-object v2

    iput-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n:Lcom/dolphin/browser/theme/data/a;

    .line 683
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v2, p0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 684
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->b()V

    .line 685
    invoke-static {p0}, Lcom/dolphin/browser/k/j;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/k/j;

    .line 686
    new-instance v2, Lcom/dolphin/browser/DolphinService/j;

    invoke-direct {v2}, Lcom/dolphin/browser/DolphinService/j;-><init>()V

    invoke-static {v2}, Lcom/dolphin/browser/promoted/j;->a(Lcom/dolphin/browser/promoted/l;)V

    .line 687
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/DolphinService/i;->a()Lcom/dolphin/browser/DolphinService/i;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/promoted/f;->a(Landroid/content/Context;Lcom/dolphin/browser/promoted/y;)V

    .line 690
    if-eqz v1, :cond_2

    .line 691
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/hq;->a()Lmobi/mgeek/TunnyBrowser/hq;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/hq;->b()V

    .line 693
    :cond_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ao()V

    .line 694
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 695
    return-void
.end method

.method private ao()V
    .locals 1

    .prologue
    .line 699
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/g;->i()V

    .line 700
    return-void
.end method

.method private ap()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 704
    invoke-static {p0}, Lcom/dolphin/browser/util/bj;->a(Landroid/content/Context;)V

    .line 705
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/ui/fake/r;

    invoke-direct {v1}, Lcom/dolphin/browser/ui/fake/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Lcom/dolphin/browser/ui/w;)V

    .line 708
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 710
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    .line 711
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030033

    invoke-virtual {v1, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 714
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mgeek/android/ui/MainScreen;

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    .line 715
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08011e

    invoke-virtual {v1, v2}, Lcom/mgeek/android/ui/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z:Landroid/view/ViewGroup;

    .line 717
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    .line 718
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    invoke-virtual {v1, p0}, Lcom/mgeek/android/ui/MainScreen;->a(Landroid/view/Window$Callback;)V

    .line 719
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    invoke-virtual {v1, p0}, Lcom/mgeek/android/ui/MainScreen;->a(Lcom/mgeek/android/ui/ai;)V

    .line 720
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    invoke-virtual {v1, p0}, Lcom/mgeek/android/ui/MainScreen;->a(Lcom/mgeek/android/ui/ag;)V

    .line 722
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ar:Landroid/view/ViewGroup;

    .line 724
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v0, v1, :cond_0

    .line 725
    new-instance v0, Lcom/dolphin/browser/menu/MenuBar;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/MenuBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    .line 727
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/tablist/w;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/tablist/w;

    .line 728
    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    .line 729
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->J:Lmobi/mgeek/TunnyBrowser/ei;

    .line 731
    invoke-static {p0}, Lcom/dolphin/browser/t/l;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v0

    .line 732
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    .line 733
    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->b()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    .line 734
    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->c()Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    .line 735
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->am:Lcom/dolphin/browser/titlebar/b;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/q;->a(Lcom/dolphin/browser/titlebar/b;)V

    .line 738
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aq()V

    .line 740
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 742
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f(Landroid/content/Intent;)V

    .line 744
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    const-string v1, "ignore_saved_state"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    :cond_1
    const-string v0, "BrowserActivity"

    const-string v1, "Ignore saved state (private browsing=%s, EXTRA_IGNORE_SAVED_STATE=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    const-string v5, "ignore_saved_state"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 750
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->j()V

    .line 751
    invoke-direct {p0, v7}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Landroid/os/Bundle;)Z

    .line 784
    :cond_2
    :goto_0
    return-void

    .line 753
    :cond_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 754
    if-nez v0, :cond_4

    .line 756
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Landroid/os/Bundle;)Z

    goto :goto_0

    .line 758
    :cond_4
    const-string v1, "iscrash"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 760
    const-string v2, "sendlastlog"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 762
    if-eqz v1, :cond_6

    .line 764
    if-eqz v2, :cond_5

    .line 767
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/ac;->a()Ljava/io/File;

    move-result-object v1

    .line 768
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 769
    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Ljava/io/File;)V

    .line 772
    :cond_5
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v1, v0, v6}, Lcom/dolphin/browser/t/l;->a(Landroid/os/Bundle;Z)V

    .line 773
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->az()V

    goto :goto_0

    .line 776
    :cond_6
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->az()V

    goto :goto_0
.end method

.method private aq()V
    .locals 5

    .prologue
    .line 788
    const-string v0, "init ControlPanelView"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 790
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    if-nez v1, :cond_0

    .line 792
    new-instance v1, Lcom/dolphin/browser/sidebar/v;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sidebar/v;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    .line 794
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    if-nez v1, :cond_1

    .line 795
    new-instance v1, Lcom/dolphin/browser/sidebar/x;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sidebar/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    .line 797
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    invoke-virtual {v3}, Lcom/dolphin/browser/sidebar/v;->b()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    invoke-virtual {v4}, Lcom/dolphin/browser/sidebar/x;->c()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmobi/mgeek/TunnyBrowser/gv;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 798
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ai;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ai;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/gv;->a(Lmobi/mgeek/TunnyBrowser/gx;)V

    .line 808
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/at;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/at;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/gv;->a(Lcom/jeremyfeinstein/slidingmenu/lib/k;)V

    .line 818
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/bf;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/bf;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/gv;->a(Lcom/jeremyfeinstein/slidingmenu/lib/l;)V

    .line 829
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 830
    return-void
.end method

.method private ar()V
    .locals 2

    .prologue
    .line 834
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->s:Z

    if-nez v0, :cond_0

    .line 835
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fs;->a()Lmobi/mgeek/TunnyBrowser/fs;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fs;->d()V

    .line 837
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bh;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bh;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 847
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 848
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZ)V

    .line 849
    return-void
.end method

.method private as()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 853
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    .line 855
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bi;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bi;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 867
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->au()V

    .line 869
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/sync/f;->b(Z)V

    .line 870
    invoke-static {}, Lcom/dolphin/browser/core/t;->a()V

    .line 872
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 873
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/push/t;->a(Landroid/content/Context;)Lcom/dolphin/browser/push/t;

    .line 874
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->c()Z

    .line 876
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    .line 877
    invoke-static {}, Lcom/a/a;->d()Lcom/a/a;

    move-result-object v0

    .line 878
    invoke-virtual {v0, p0}, Lcom/a/a;->b(Landroid/content/Context;)V

    .line 879
    invoke-static {}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackPendingEvents()V

    .line 882
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    .line 894
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->i()Landroid/os/Bundle;

    move-result-object v0

    .line 897
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/o;->a()Lmobi/mgeek/util/CrashReporter/o;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/bj;

    invoke-direct {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/bj;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lmobi/mgeek/util/CrashReporter/o;->a(Lmobi/mgeek/util/CrashReporter/t;)V

    .line 930
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/UIManager;->getInstance()Lcom/dolphin/browser/core/UIManager;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/UI;

    invoke-direct {v1}, Lmobi/mgeek/TunnyBrowser/UI;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/UIManager;->a(Lcom/dolphin/browser/core/IUI;)V

    .line 932
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->c()V

    .line 933
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/dk;->a(Z)V

    .line 935
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cz;->a()Lmobi/mgeek/TunnyBrowser/cz;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0}, Lmobi/mgeek/TunnyBrowser/cz;->a(Landroid/content/Intent;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 938
    const-string v0, "onFirstScreenShown"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 940
    invoke-static {}, Lcom/dolphin/browser/core/ab;->a()Lcom/dolphin/browser/core/ab;

    move-result-object v1

    .line 941
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->v:Lcom/dolphin/browser/core/ad;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/ab;->a(Lcom/dolphin/browser/core/ad;)V

    .line 942
    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/ab;->a(Landroid/content/Context;)V

    .line 946
    invoke-static {}, Lcom/dolphin/browser/core/af;->a()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/INetworkPredictor;->start()V

    .line 948
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/g;->b()V

    .line 949
    invoke-static {}, Lcom/dolphin/browser/core/ah;->a()Lcom/dolphin/browser/core/ah;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/core/ah;->a(Landroid/content/Context;)V

    .line 950
    invoke-static {}, Lcom/dolphin/browser/extensions/a/c;->a()Lcom/dolphin/browser/extensions/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a/c;->b()V

    .line 952
    invoke-static {}, Lcom/dolphin/browser/ui/c;->a()Lcom/dolphin/browser/ui/c;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ae:Lcom/dolphin/browser/ui/e;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/c;->a(Lcom/dolphin/browser/ui/e;)V

    .line 953
    invoke-static {}, Lcom/dolphin/browser/a/c;->a()Lcom/dolphin/browser/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/a/c;->a(Ljava/lang/Object;)V

    .line 955
    new-instance v1, Lmobi/mgeek/TunnyBrowser/bl;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/bl;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 964
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Landroid/content/Intent;)V

    .line 970
    :cond_1
    invoke-direct {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k(Z)V

    .line 973
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmobi/mgeek/TunnyBrowser/ForegroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 974
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 976
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private at()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/v;->a()V

    .line 982
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/x;->b()V

    .line 985
    :cond_1
    return-void
.end method

.method private au()V
    .locals 3

    .prologue
    .line 989
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 993
    :cond_0
    const-string v1, "BrowserActivity"

    const-string v2, "ensurePreloadData - waiting for data..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->r()Z

    move-result v1

    if-nez v1, :cond_1

    .line 995
    const-string v0, "BrowserActivity"

    const-string v1, "ensurePreloadData - not syncing data, ignore preloaded data."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1001
    const-string v1, "BrowserActivity"

    const-string v2, "ensurePreloadData - loading local data..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->s()V

    .line 1003
    const-string v0, "BrowserActivity"

    const-string v1, "ensurePreloadData - done."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :cond_2
    const-string v0, "BrowserActivity"

    const-string v1, "ensurePreloadData - data already loaded."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private av()V
    .locals 3

    .prologue
    .line 1011
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1012
    if-lez v2, :cond_0

    .line 1013
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1014
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1013
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1018
    return-void
.end method

.method private aw()V
    .locals 5

    .prologue
    .line 1022
    const-string v0, "MainActivity.onCreateOnMainThread"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1026
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/gv;->f()V

    .line 1029
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 1030
    return-void
.end method

.method private ax()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ay()V
    .locals 3

    .prologue
    .line 1109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dolphin.brwoser.action.ACTION_VOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1111
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1112
    return-void
.end method

.method private az()V
    .locals 4

    .prologue
    .line 1303
    const-string v0, "BrowserActivity"

    const-string v1, "normalStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1305
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1310
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Intent;Landroid/content/ContentResolver;)Lcom/dolphin/browser/util/al;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Lcom/dolphin/browser/util/al;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    new-instance v1, Lcom/dolphin/browser/util/al;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dolphin://home"

    :goto_0
    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1326
    :cond_0
    new-instance v1, Lmobi/mgeek/TunnyBrowser/aa;

    invoke-direct {v1, p0, v0, v2, v3}, Lmobi/mgeek/TunnyBrowser/aa;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/util/al;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    .line 1374
    :cond_1
    return-void

    .line 1315
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3826
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3828
    const-string v1, "shared_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3829
    const-string v1, "shared_type"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3831
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3832
    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Z)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h(Z)V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1080
    .line 1081
    if-nez p1, :cond_0

    .line 1095
    :goto_0
    return v2

    .line 1084
    :cond_0
    const-string v0, "shortcut"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 1095
    goto :goto_0

    .line 1087
    :cond_1
    const-string v0, "pending_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1089
    if-eqz v0, :cond_2

    const-string v3, "shortcut"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1092
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 5306
    new-instance v0, Lmobi/mgeek/TunnyBrowser/aq;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/aq;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private ba()V
    .locals 1

    .prologue
    .line 7568
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7569
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->m()V

    .line 7571
    :cond_0
    return-void
.end method

.method private bb()V
    .locals 1

    .prologue
    .line 7575
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7576
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->n()V

    .line 7578
    :cond_0
    return-void
.end method

.method private bc()V
    .locals 1

    .prologue
    .line 7602
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7603
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->o()V

    .line 7605
    :cond_0
    return-void
.end method

.method private bd()V
    .locals 1

    .prologue
    .line 7635
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7636
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->k()V

    .line 7638
    :cond_0
    return-void
.end method

.method private be()I
    .locals 1

    .prologue
    .line 7642
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->q()I

    move-result v0

    goto :goto_0
.end method

.method private bf()V
    .locals 1

    .prologue
    .line 7655
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7656
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->d()V

    .line 7658
    :cond_0
    return-void
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 557
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    const-string v1, "pending_intent"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 559
    const-string v1, "first_launcher_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ay()V

    .line 1102
    const-string v0, "Sonar"

    const-string v1, "launchby"

    const-string v2, "shortcut"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_0
    return-void
.end method

.method private c(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1

    .prologue
    .line 5399
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5810
    .line 5811
    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5812
    if-nez p2, :cond_3

    .line 5822
    :cond_0
    :goto_0
    return v0

    .line 5815
    :cond_1
    const-string v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5816
    if-eqz p2, :cond_3

    move v0, v1

    .line 5817
    goto :goto_0

    .line 5820
    :cond_2
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_0
.end method

.method public static copy(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2703
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2705
    if-eqz v0, :cond_0

    .line 2706
    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2708
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e013a

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2712
    :goto_0
    return-void

    .line 2709
    :catch_0
    move-exception v0

    .line 2710
    const-string v1, "BrowserActivity"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createScreenshot(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3145
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScreenshot(Landroid/content/Context;Landroid/webkit/WebView;F)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3153
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;Landroid/webkit/WebView;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScreenshot(Landroid/content/Context;Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3138
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScreenshot(Landroid/content/Context;Lcom/dolphin/browser/core/IWebView;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3130
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;Lcom/dolphin/browser/core/IWebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1548
    :try_start_0
    invoke-static {p0}, Lcom/dolphin/browser/util/dt;->a(Landroid/content/Context;)V

    .line 1549
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :goto_0
    return-void

    .line 1551
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 7616
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    if-eqz v0, :cond_0

    .line 7617
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 7619
    :cond_0
    return-void
.end method

.method static synthetic d(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ar()V

    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 4987
    const-string v0, "trySetTheme"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 4988
    if-eqz p1, :cond_0

    .line 4990
    :try_start_0
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4993
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4998
    :cond_0
    :goto_0
    return-void

    .line 4995
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->an()V

    return-void
.end method

.method private f(Z)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 565
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 569
    if-eqz p1, :cond_0

    .line 570
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 571
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02033a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 580
    :goto_0
    new-instance v2, Lmobi/mgeek/TunnyBrowser/SplashParentView;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/SplashParentView;-><init>(Landroid/content/Context;)V

    .line 581
    invoke-virtual {v2, v1}, Lmobi/mgeek/TunnyBrowser/SplashParentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/SplashParentView;->addView(Landroid/view/View;)V

    .line 583
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/SplashParentView;->setOrientation(I)V

    .line 585
    return-object v2

    .line 576
    :cond_0
    new-instance v0, Lcom/dolphin/browser/splashscreen/SplashScreenView;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/splashscreen/SplashScreenView;-><init>(Landroid/content/Context;)V

    .line 577
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 6933
    if-eqz p1, :cond_0

    .line 6934
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 6935
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 6936
    const-string v0, "pending_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 6938
    if-eqz v0, :cond_0

    .line 6939
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 6942
    :cond_0
    return-void
.end method

.method static synthetic f(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap()V

    return-void
.end method

.method public static final f()Z
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 6951
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6954
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6955
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 6956
    const-string v0, "shortcut"

    .line 6969
    :goto_0
    invoke-static {v1}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6974
    :goto_1
    return-void

    .line 6958
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Intent;Landroid/content/ContentResolver;)Lcom/dolphin/browser/util/al;

    move-result-object v1

    .line 6960
    invoke-virtual {v1}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v1

    .line 6961
    const-string v2, "engine_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6962
    const-string v0, "engine_entry"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6963
    :cond_1
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6964
    const-string v0, "web_search"

    goto :goto_0

    .line 6966
    :cond_2
    const-string v0, "outlink"

    goto :goto_0

    .line 6973
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic g(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aD()V

    return-void
.end method

.method private g(Z)V
    .locals 0

    .prologue
    .line 1041
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u:Z

    .line 1042
    return-void
.end method

.method public static getAlertBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5072
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5184
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    return-object v0
.end method

.method static synthetic h(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aw()V

    return-void
.end method

.method private h(Z)V
    .locals 3

    .prologue
    .line 1558
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "outlink"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 1560
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1563
    invoke-static {v0}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    const-string v0, "http://www.yandex.ru/?clid=1771222"

    .line 1569
    :goto_0
    if-eqz p1, :cond_1

    .line 1570
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;Z)Lcom/dolphin/browser/core/ITab;

    .line 1574
    :goto_1
    return-void

    .line 1566
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1572
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic i(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->av()V

    return-void
.end method

.method private static final i(Z)V
    .locals 0

    .prologue
    .line 1591
    sput-boolean p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->y:Z

    .line 1592
    return-void
.end method

.method static synthetic j(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/titlebar/q;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    return-object v0
.end method

.method private j(Z)V
    .locals 0

    .prologue
    .line 6482
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bf()V

    .line 6483
    return-void
.end method

.method static final j()Z
    .locals 1

    .prologue
    .line 1596
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/mgeek/android/ui/MainScreen;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    return-object v0
.end method

.method private k(Z)V
    .locals 1

    .prologue
    .line 6569
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ao:Z

    .line 6570
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->a(Z)V

    .line 6571
    return-void
.end method

.method static synthetic l(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->at()V

    return-void
.end method

.method private l(Z)V
    .locals 2

    .prologue
    .line 7523
    if-eqz p1, :cond_2

    .line 7524
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    if-nez v0, :cond_0

    .line 7525
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aY()V

    .line 7527
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/a;->setVisibility(I)V

    .line 7533
    :cond_1
    :goto_0
    return-void

    .line 7529
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    if-eqz v0, :cond_1

    .line 7530
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/a;->setVisibility(I)V

    goto :goto_0
.end method

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5243
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Context;Ljava/lang/String;Z[B)V

    .line 5244
    return-void
.end method

.method static synthetic m(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as()V

    return-void
.end method

.method private m(Z)V
    .locals 1

    .prologue
    .line 7648
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    if-eqz v0, :cond_0

    .line 7649
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->b(Z)V

    .line 7651
    :cond_0
    return-void
.end method

.method static synthetic n(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bd()V

    return-void
.end method

.method public static newButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5198
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 5199
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5201
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 5203
    return-object v0
.end method

.method public static newCheckBox(Landroid/content/Context;)Landroid/widget/CheckBox;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5233
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 5234
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5236
    return-object v0
.end method

.method public static newRadioButton(Landroid/content/Context;)Landroid/widget/RadioButton;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5217
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 5218
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5219
    return-object v0
.end method

.method static synthetic o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    return-object v0
.end method

.method static synthetic p(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    return-object v0
.end method

.method static synthetic q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    return-object v0
.end method

.method static synthetic r(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    return-void
.end method

.method static synthetic s(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aJ()V

    return-void
.end method

.method static synthetic t(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aQ()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/v;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    return-object v0
.end method

.method static synthetic v(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aX()V

    return-void
.end method

.method static synthetic w(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bb()V

    return-void
.end method

.method static synthetic x(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bc()V

    return-void
.end method

.method static synthetic y(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ag:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    return-object v0
.end method

.method static synthetic z(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/tablist/TabListView;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;
    .locals 1

    .prologue
    .line 5732
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ag:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    return-object v0
.end method

.method public B()V
    .locals 3

    .prologue
    .line 6382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j(Z)V

    .line 6383
    const-string v0, "Show or Hide Menu"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 6384
    const-string v0, "initlize Menu if needed"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 6385
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aS()V

    .line 6386
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 6387
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6388
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->c()V

    .line 6398
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 6399
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 6400
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ac()V

    .line 6401
    return-void

    .line 6389
    :cond_1
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->an:Z

    if-nez v0, :cond_0

    .line 6390
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/k;->b()V

    .line 6394
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bc()V

    .line 6396
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->f()V

    goto :goto_0
.end method

.method public C()V
    .locals 2

    .prologue
    .line 6405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j(Z)V

    .line 6406
    const-string v0, "closePanelMenu"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 6407
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    if-nez v1, :cond_0

    .line 6408
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 6416
    :goto_0
    return-void

    .line 6411
    :cond_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/v;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6412
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/v;->c()V

    .line 6414
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 6415
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    goto :goto_0
.end method

.method public D()I
    .locals 2

    .prologue
    .line 6425
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 6426
    const/4 v0, 0x0

    .line 6436
    :goto_0
    return v0

    .line 6429
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 6430
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6431
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 6432
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6436
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aP()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public E()V
    .locals 1

    .prologue
    .line 6443
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6444
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6446
    :cond_0
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 6617
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6622
    :cond_0
    const/4 v0, 0x0

    .line 6624
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public G()V
    .locals 2

    .prologue
    .line 6638
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6639
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Ljava/lang/Boolean;)V

    .line 6641
    :cond_0
    return-void
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 6645
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()V
    .locals 2

    .prologue
    .line 6689
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/account/ui/AccountManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6690
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 6691
    return-void
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 6699
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/fl;->c()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 6704
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/fl;->d()Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6800
    const-string v1, "BrowserActivity"

    const-string v2, "enableNightMode"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Z)Z

    move-result v1

    .line 6802
    if-nez v1, :cond_0

    .line 6803
    sget-object v0, Lcom/dolphin/browser/theme/data/b;->b:Lcom/dolphin/browser/theme/data/b;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/theme/data/b;)V

    .line 6804
    const/4 v0, 0x0

    .line 6806
    :cond_0
    return v0
.end method

.method public M()V
    .locals 2

    .prologue
    .line 6849
    const-string v0, "BrowserActivity"

    const-string v1, "disableNightMode"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6850
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Z)Z

    .line 6851
    return-void
.end method

.method public N()Z
    .locals 2

    .prologue
    .line 6884
    const-string v0, "BrowserActivity"

    const-string v1, "enableAdBlockAddon"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i(Z)V

    .line 6886
    const/4 v0, 0x1

    return v0
.end method

.method public O()V
    .locals 2

    .prologue
    .line 6891
    const-string v0, "BrowserActivity"

    const-string v1, "disableAdBlockAddon"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6892
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i(Z)V

    .line 6893
    return-void
.end method

.method public P()V
    .locals 3

    .prologue
    .line 6989
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 6990
    if-nez v0, :cond_0

    .line 7003
    :goto_0
    return-void

    .line 6993
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/dolphin/browser/provider/Browser;->a(Z)V

    .line 6994
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 6995
    invoke-static {v0, v1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6996
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 6998
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6999
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7000
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7001
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public Q()V
    .locals 3

    .prologue
    .line 7055
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aW()V

    .line 7056
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7057
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListView;->a()V

    .line 7061
    :goto_0
    return-void

    .line 7059
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget-object v2, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/tablist/TabListView;->a(Landroid/view/WindowManager$LayoutParams;Lcom/dolphin/browser/tablist/bz;)V

    goto :goto_0
.end method

.method public R()V
    .locals 3

    .prologue
    .line 7065
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aW()V

    .line 7066
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sget-object v2, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/tablist/TabListView;->a(Landroid/view/WindowManager$LayoutParams;Lcom/dolphin/browser/tablist/bz;)V

    .line 7067
    return-void
.end method

.method public S()V
    .locals 1

    .prologue
    .line 7071
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->f()V

    .line 7072
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    if-eqz v0, :cond_0

    .line 7073
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7074
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    .line 7077
    :cond_0
    return-void
.end method

.method public T()I
    .locals 2

    .prologue
    .line 7081
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7082
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 7083
    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public U()V
    .locals 2

    .prologue
    .line 7161
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aq:Lcom/dolphin/browser/menu/i;

    if-eqz v0, :cond_0

    .line 7162
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aq:Lcom/dolphin/browser/menu/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/i;->setVisibility(I)V

    .line 7164
    :cond_0
    return-void
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 7168
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aq:Lcom/dolphin/browser/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aq:Lcom/dolphin/browser/menu/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/i;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()Lmobi/mgeek/TunnyBrowser/fl;
    .locals 1

    .prologue
    .line 7326
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    goto :goto_0
.end method

.method public X()Landroid/view/View;
    .locals 1

    .prologue
    .line 7330
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7331
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 7333
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    goto :goto_0
.end method

.method public Y()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 7338
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    return-object v0
.end method

.method public Z()Landroid/view/View;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/fl;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 4854
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 2462
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    .line 2463
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 7422
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    .line 7424
    if-nez p1, :cond_1

    .line 7425
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7426
    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->a()V

    .line 7437
    :cond_0
    :goto_0
    return-void

    .line 7428
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ar:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_0

    .line 7431
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7432
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7434
    :cond_2
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ar:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7435
    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->a()V

    goto :goto_0
.end method

.method a(Landroid/view/View;Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3220
    const-string v0, "BrowserActivity"

    const-string v1, "show custom view"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3222
    invoke-interface {p2}, Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;->onCustomViewHidden()V

    .line 3257
    :goto_0
    return-void

    .line 3226
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bo;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    .line 3227
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3228
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3233
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3234
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    .line 3235
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->P:Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;

    .line 3238
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    .line 3242
    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 3243
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3246
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->G:I

    .line 3250
    invoke-static {p1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3251
    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 3254
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 3256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Q:Z

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 1578
    instance-of v0, p1, Lcom/dolphin/browser/core/ActivityTab;

    if-eqz v0, :cond_0

    .line 1579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai:Z

    .line 1580
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aB()V

    .line 1585
    :goto_0
    return-void

    .line 1582
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai:Z

    .line 1583
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aC()V

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3348
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hu;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/hu;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    .line 3349
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    invoke-virtual {v0, p1, p2}, Lmobi/mgeek/TunnyBrowser/hu;->a(Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V

    .line 3350
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/n;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 5044
    if-nez p1, :cond_0

    .line 5065
    :goto_0
    return-void

    .line 5047
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C()V

    .line 5048
    const-string v0, "BrowserActivity"

    const-string v1, "extension clicked %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5049
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 5050
    invoke-static {p1, v0, p0}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/extensions/n;Lcom/dolphin/browser/core/IWebView;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 5052
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    .line 5053
    if-eqz v0, :cond_1

    .line 5054
    const-string v1, "add-ons"

    const-string v2, "click"

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 5058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5059
    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 5060
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;J)V

    .line 5064
    :cond_2
    invoke-virtual {p0, v6}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/s;Z)V
    .locals 5

    .prologue
    const v4, 0x7f0e05b6

    const/4 v3, 0x1

    const/4 v1, -0x3

    const/4 v2, 0x0

    .line 4860
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->r()Z

    move-result v0

    .line 4861
    if-nez v0, :cond_2

    .line 4862
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->b()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4863
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03a2

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4901
    :cond_0
    :goto_0
    return-void

    .line 4869
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->f()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4873
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 4874
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->a()Lcom/dolphin/browser/theme/data/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/theme/data/b;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/update/model/b;)V
    .locals 2

    .prologue
    .line 6903
    invoke-virtual {p1}, Lcom/dolphin/browser/update/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6904
    new-instance v0, Lcom/dolphin/browser/update/a;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/update/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/update/a;->a()Landroid/app/Dialog;

    move-result-object v0

    .line 6906
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 6929
    :goto_0
    return-void

    .line 6910
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    .line 6911
    invoke-virtual {v0}, Lcom/dolphin/browser/update/f;->e()I

    move-result v1

    .line 6913
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 6916
    :pswitch_1
    invoke-virtual {v0}, Lcom/dolphin/browser/update/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_1

    .line 6917
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/f/e/b;->a(Lcom/dolphin/browser/update/model/b;Lcom/dolphin/browser/DolphinService/m;)V

    goto :goto_0

    .line 6921
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_2

    .line 6922
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->c()V

    .line 6924
    :cond_2
    new-instance v0, Lcom/dolphin/browser/update/i;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/update/i;-><init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/update/i;->a()V

    goto :goto_0

    .line 6913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 4843
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/theme/d/j;)V
    .locals 0

    .prologue
    .line 4837
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    .line 3507
    if-nez p1, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3514
    :goto_0
    return-void

    .line 3511
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3513
    :goto_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3511
    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 7007
    const-string v0, "BrowserActivity"

    const-string v1, "onNightModeHappens(%s, %s)"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7008
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 7009
    invoke-virtual {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;Z)V

    .line 7010
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/dolphin/browser/k/l;->d:Lcom/dolphin/browser/k/l;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/k;->d(Lcom/dolphin/browser/k/l;)V

    .line 7013
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v5

    .line 7014
    if-eqz p1, :cond_2

    sget-object v0, Lmobi/mgeek/TunnyBrowser/ib;->b:Ljava/lang/String;

    move-object v4, v0

    .line 7016
    :goto_1
    if-eqz p1, :cond_3

    sget v0, Lcom/dolphin/browser/util/bu;->a:I

    move v1, v0

    .line 7018
    :goto_2
    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    .line 7019
    if-eqz v6, :cond_6

    .line 7020
    invoke-virtual {v6}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v7

    move v2, v3

    .line 7021
    :goto_3
    if-ge v2, v7, :cond_6

    .line 7022
    invoke-virtual {v6, v2}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 7023
    if-nez v0, :cond_4

    .line 7025
    const-string v0, "BrowserActivity"

    const-string v8, "onNightModeHappens: null tab (index=%d, count=%d) detected, skipping..."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v0, v8, v9}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7021
    :cond_0
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 7010
    :cond_1
    sget-object v1, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    goto :goto_0

    .line 7014
    :cond_2
    sget-object v0, Lmobi/mgeek/TunnyBrowser/ib;->c:Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    .line 7016
    :cond_3
    const/4 v0, -0x1

    move v1, v0

    goto :goto_2

    .line 7030
    :cond_4
    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->setBackgroundColor(I)V

    .line 7031
    const/4 v8, 0x4

    invoke-interface {v0, v8}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7032
    if-nez v5, :cond_0

    .line 7033
    invoke-interface {v0, v4}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 7036
    :cond_5
    instance-of v8, v0, Lcom/dolphin/browser/f/e/a;

    if-eqz v8, :cond_0

    .line 7037
    check-cast v0, Lcom/dolphin/browser/f/e/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/a;->l()V

    goto :goto_4

    .line 7042
    :cond_6
    return-void
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1256
    invoke-static {p2}, Lcom/dolphin/browser/provider/Browser;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1269
    :goto_0
    return v0

    .line 1260
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1261
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1264
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1269
    goto :goto_0
.end method

.method public a(Landroid/view/View;II)Z
    .locals 4

    .prologue
    .line 6765
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6766
    const/4 v0, 0x0

    .line 6781
    :goto_0
    return v0

    .line 6769
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6771
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6772
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6774
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6775
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6776
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6777
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6778
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 6779
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6780
    invoke-static {p1, v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 6781
    const/4 v0, 0x1

    goto :goto_0
.end method

.method aa()Z
    .locals 1

    .prologue
    .line 7349
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->f()Z

    move-result v0

    return v0
.end method

.method public ab()V
    .locals 2

    .prologue
    .line 7354
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmobi/mgeek/TunnyBrowser/fl;->a_(Z)V

    .line 7355
    return-void
.end method

.method public ac()V
    .locals 1

    .prologue
    .line 7408
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    if-nez v0, :cond_0

    .line 7412
    :goto_0
    return-void

    .line 7411
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/d/c;->c()V

    goto :goto_0
.end method

.method public actionAddBookmark()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3625
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddBookmark2()Z

    .line 3626
    return-void
.end method

.method public actionAddBookmark2()Z
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3632
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3639
    if-eqz v0, :cond_0

    .line 3640
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3642
    const-string v2, "url"

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3643
    const-string v2, "title"

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3645
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3648
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public actionAddOns()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4372
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddOns2()Z

    .line 4373
    return-void
.end method

.method public actionAddOns2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 4380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4381
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 4382
    const/4 v0, 0x1

    return v0
.end method

.method public actionAddSpeeddial()V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 7089
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 7090
    if-nez v0, :cond_0

    .line 7097
    :goto_0
    return-void

    .line 7094
    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 7095
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 7096
    invoke-virtual {p0, v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddSpeeddial2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public actionAddSpeeddial2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 7102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7103
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0224

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 7127
    :cond_0
    :goto_0
    return-void

    .line 7107
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7108
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0225

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 7111
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    .line 7112
    if-eqz v0, :cond_0

    .line 7116
    :try_start_0
    invoke-static {p1}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7122
    invoke-virtual {v0, p2, v1}, Lcom/dolphin/browser/ui/launcher/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7123
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0643

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 7117
    :catch_0
    move-exception v0

    .line 7118
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c3

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 7125
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03ad

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public actionAddSpeeddial3()V
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 7132
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 7133
    if-nez v0, :cond_0

    .line 7142
    :goto_0
    return-void

    .line 7136
    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 7137
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 7138
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7139
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7140
    const-string v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7141
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public actionAndroidUserAgent()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionUpdateUserAgent(I)V

    .line 5978
    return-void
.end method

.method public actionBack()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3838
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionBack2()Z

    .line 3839
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e02b5

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3840
    return-void
.end method

.method public actionBack2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3846
    new-instance v0, Lcom/dolphin/browser/c/u;

    invoke-direct {v0}, Lcom/dolphin/browser/c/u;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/u;->a()Z

    move-result v0

    return v0
.end method

.method public actionBackupData()Z
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3888
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3890
    invoke-static {p0, v3}, Lmobi/mgeek/TunnyBrowser/i;->a(Landroid/content/Context;I)Lmobi/mgeek/TunnyBrowser/i;

    move-result-object v1

    .line 3893
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0093

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3894
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3895
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/i;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3897
    new-instance v2, Lmobi/mgeek/TunnyBrowser/ak;

    invoke-direct {v2, p0, v1}, Lmobi/mgeek/TunnyBrowser/ak;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/i;)V

    .line 3905
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3906
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3907
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3908
    return v3
.end method

.method public actionClearCache()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4529
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;)V

    .line 4530
    const/4 v0, 0x0

    return v0
.end method

.method public actionClearHistory()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6657
    .line 6658
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00e6

    new-instance v2, Lmobi/mgeek/TunnyBrowser/bc;

    invoke-direct {v2, p0, p0}, Lmobi/mgeek/TunnyBrowser/bc;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6674
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 6675
    const/4 v0, 0x1

    return v0
.end method

.method public actionCloseAllTab()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3684
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionCloseAllTab2()Z

    .line 3685
    return-void
.end method

.method public actionCloseAllTab2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3691
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->f()V

    .line 3692
    const/4 v0, 0x0

    return v0
.end method

.method public actionCloseCurrentTab()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3670
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionCloseCurrentTab2()Z

    .line 3671
    return-void
.end method

.method public actionCloseCurrentTab2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3677
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->w()Z

    move-result v0

    return v0
.end method

.method public actionCloseOtherTab()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3699
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionCloseOtherTab2()Z

    .line 3700
    return-void
.end method

.method public actionCloseOtherTab2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3706
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/core/ITab;)V

    .line 3707
    const/4 v0, 0x0

    return v0
.end method

.method public actionCustomUserAgent()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5971
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionUpdateUserAgent(I)V

    .line 5972
    return-void
.end method

.method public actionDesktopToggle()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4598
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isMobileView()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setMobileView(Landroid/content/Context;ZZ)V

    .line 4599
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isMobileView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4600
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f6

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4604
    :goto_1
    return v1

    .line 4598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4602
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f4

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionDesktopUserAgent()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionUpdateUserAgent(I)V

    .line 5954
    return-void
.end method

.method public actionDownload()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4097
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionDownload2()Z

    .line 4098
    return-void
.end method

.method public actionDownload2()Z
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4103
    invoke-static {}, Lcom/dolphin/browser/extensions/e;->a()Lcom/dolphin/browser/extensions/e;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/extensions/IDownloadExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/e;->a(Ljava/lang/String;)Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    .line 4105
    if-eqz v0, :cond_0

    .line 4106
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    .line 4107
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/dolphin/browser/extensions/IDownloadExtension;

    if-eqz v3, :cond_0

    .line 4109
    :try_start_0
    check-cast v0, Lcom/dolphin/browser/extensions/IDownloadExtension;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/extensions/IDownloadExtension;->onViewDownloads(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 4189
    :goto_0
    return v0

    .line 4111
    :catch_0
    move-exception v0

    .line 4115
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eu;->b()Ljava/util/List;

    move-result-object v3

    .line 4117
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 4118
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03000d

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4119
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080091

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 4121
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4122
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080092

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4124
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4126
    new-instance v5, Lmobi/mgeek/TunnyBrowser/an;

    invoke-direct {v5, p0, v1}, Lmobi/mgeek/TunnyBrowser/an;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4136
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e00e3

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lmobi/mgeek/TunnyBrowser/eh;

    invoke-direct {v5, p0, v3}, Lmobi/mgeek/TunnyBrowser/eh;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v6, Lmobi/mgeek/TunnyBrowser/ao;

    invoke-direct {v6, p0, v3, v0}, Lmobi/mgeek/TunnyBrowser/ao;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/util/List;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    .line 4172
    goto :goto_0

    .line 4173
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4174
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 4175
    if-eqz v0, :cond_3

    .line 4176
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    .line 4177
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/dolphin/browser/extensions/IDownloadExtension;

    if-eqz v2, :cond_3

    .line 4180
    :try_start_1
    check-cast v0, Lcom/dolphin/browser/extensions/IDownloadExtension;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/extensions/IDownloadExtension;->onViewDownloads(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 4181
    goto/16 :goto_0

    .line 4187
    :cond_2
    invoke-virtual {p0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    :cond_3
    :goto_1
    move v0, v1

    .line 4189
    goto/16 :goto_0

    .line 4182
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public actionEnableJavascript()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3942
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isJavascriptEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setJavascriptEnabled(Landroid/content/Context;Z)V

    .line 3943
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isJavascriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3944
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0335

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3948
    :goto_1
    return v1

    .line 3942
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3946
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0334

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionEnableOrDisableNoImage(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5838
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v0

    .line 5839
    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 5840
    if-eq v1, v0, :cond_0

    .line 5841
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setLoadImagesEnabled(Landroid/content/Context;Z)V

    .line 5843
    :cond_0
    return-void
.end method

.method public actionEnableOrDisableSwipe()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4576
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h(Landroid/content/Context;Z)V

    .line 4577
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aU()V

    .line 4578
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4579
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0208

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4583
    :goto_1
    return v1

    .line 4576
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4581
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0170

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionEnableOrDissableJavascript(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5943
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isJavascriptEnabled()Z

    move-result v0

    .line 5944
    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 5945
    if-eq v1, v0, :cond_0

    .line 5946
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setJavascriptEnabled(Landroid/content/Context;Z)V

    .line 5948
    :cond_0
    return-void
.end method

.method public actionExit()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4590
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->J:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ei;->c(Z)V

    .line 4591
    return v1
.end method

.method public actionFind()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3876
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionFind2()Z

    .line 3877
    return-void
.end method

.method public actionFind2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 3881
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->v()Z

    move-result v0

    return v0
.end method

.method public actionFindOnPage()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6084
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionFind2()Z

    .line 6085
    return-void
.end method

.method public actionFindOnPage(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6079
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->findOnPage(Ljava/lang/String;)V

    .line 6080
    return-void
.end method

.method public actionForward()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3861
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionForward2()Z

    .line 3862
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e02c8

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3863
    return-void
.end method

.method public actionForward2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3869
    new-instance v0, Lcom/dolphin/browser/c/w;

    invoke-direct {v0}, Lcom/dolphin/browser/c/w;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/w;->a()Z

    move-result v0

    return v0
.end method

.method public actionGesture()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 4610
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 4611
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4612
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e001e

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4621
    :goto_0
    return v2

    .line 4615
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->C()Ljava/lang/String;

    move-result-object v0

    .line 4616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4617
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0148

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 4619
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public actionGestureHelp()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6064
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;Z)Lcom/dolphin/browser/core/ITab;

    .line 6065
    return v2
.end method

.method public actionGo()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3611
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGo2()Z

    .line 3612
    return-void
.end method

.method public actionGo2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3618
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->J()Z

    move-result v0

    return v0
.end method

.method public actionGotoBookmarkPage()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4267
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoBookmarkPage2()Z

    .line 4268
    return-void
.end method

.method public actionGotoBookmarkPage2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Ljava/lang/Long;)V

    .line 4274
    const/4 v0, 0x0

    return v0
.end method

.method public actionGotoBottom()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4404
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoBottom2()Z

    .line 4405
    return-void
.end method

.method public actionGotoBottom2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4411
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->pageDown(Z)Z

    .line 4412
    const/4 v0, 0x0

    return v0
.end method

.method public actionGotoHistoryPage()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4295
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoHistoryPage2()Z

    .line 4296
    return-void
.end method

.method public actionGotoHistoryPage2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4302
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Ljava/lang/Long;)V

    .line 4303
    const/4 v0, 0x0

    return v0
.end method

.method public actionGotoMostVisitPage()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4281
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoMostVisitPage2()Z

    .line 4282
    return-void
.end method

.method public actionGotoMostVisitPage2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4287
    const-wide/16 v0, -0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Ljava/lang/Long;)V

    .line 4288
    const/4 v0, 0x0

    return v0
.end method

.method public actionGotoTop()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4389
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoTop2()Z

    .line 4390
    return-void
.end method

.method public actionGotoTop2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4396
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->pageUp(Z)Z

    .line 4397
    const/4 v0, 0x0

    return v0
.end method

.method public actionHomepageSpeeddial()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4649
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionNewTab2()Z

    .line 4650
    const/4 v0, 0x0

    return v0
.end method

.method public actionHomepageWebzine()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4642
    const/4 v0, 0x0

    return v0
.end method

.method public actionInprivate(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5828
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    .line 5829
    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 5830
    if-eq v1, v0, :cond_0

    .line 5831
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionInprivate()Z

    .line 5833
    :cond_0
    return-void
.end method

.method public actionInprivate()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3915
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    .line 3916
    new-instance v1, Lmobi/mgeek/TunnyBrowser/al;

    invoke-direct {v1, p0, v0}, Lmobi/mgeek/TunnyBrowser/al;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Z)V

    invoke-static {p0, v1}, Lcom/mgeek/android/util/n;->a(Landroid/content/Context;Lcom/mgeek/android/util/s;)V

    .line 3935
    const/4 v0, 0x1

    return v0
.end method

.method public actionIpadUserAgent()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5965
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionUpdateUserAgent(I)V

    .line 5966
    return-void
.end method

.method public actionIphoneUserAgent()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5959
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionUpdateUserAgent(I)V

    .line 5960
    return-void
.end method

.method public actionLoadHomepage()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4228
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionLoadHomepage2()Z

    .line 4229
    return-void
.end method

.method public actionLoadHomepage2()Z
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4235
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    .line 4236
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 4237
    if-eqz v2, :cond_2

    .line 4238
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4239
    :goto_0
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4240
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->goBack()V

    goto :goto_0

    .line 4242
    :cond_0
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4243
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->F()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/n;

    .line 4245
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/core/TabManager;->a(ILcom/dolphin/browser/core/ITab;)V

    .line 4247
    :cond_1
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "homebutton"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    :cond_2
    :goto_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->j()V

    .line 4260
    const/4 v0, 0x0

    return v0

    .line 4250
    :cond_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    .line 4251
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v1

    const-string v3, "home_page"

    invoke-virtual {v1, v0, v3}, Lcom/dolphin/browser/search/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4254
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 4255
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "homebuttonthis"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public actionLoadImages()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3974
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setLoadImagesEnabled(Landroid/content/Context;Z)V

    .line 3975
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isLoadImagesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3976
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0360

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3980
    :goto_1
    return v1

    .line 3974
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3978
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e057b

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionLoadJavascript(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6058
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 6059
    return-void
.end method

.method public actionLoadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3591
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionLoadUrl2(Ljava/lang/String;)Z

    .line 3592
    return-void
.end method

.method public actionLoadUrl2(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3598
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public actionLoadUrl3(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6038
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6053
    :goto_0
    return-void

    .line 6042
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6048
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 6049
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 6051
    :goto_1
    invoke-virtual {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6049
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public actionLoadUrlNewTab(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 3604
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public actionLockOrUnlockOrientation(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 5848
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_3

    move v0, v1

    .line 5849
    :goto_0
    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Ljava/lang/String;Z)Z

    move-result v3

    .line 5850
    if-eq v3, v0, :cond_2

    .line 5851
    if-eqz v3, :cond_4

    .line 5852
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 5854
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    .line 5856
    :cond_1
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 5857
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setOrientation(Landroid/content/Context;I)V

    .line 5865
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 5848
    goto :goto_0

    .line 5859
    :cond_4
    invoke-virtual {p0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 5860
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setOrientation(Landroid/content/Context;I)V

    .line 5862
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e065b

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionLockOrUnlockOrientation()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 4551
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 4552
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 4554
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 4556
    :goto_0
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 4557
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setOrientation(Landroid/content/Context;I)V

    .line 4558
    if-ne v0, v1, :cond_3

    .line 4559
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0350

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4569
    :cond_1
    :goto_1
    return v1

    .line 4554
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4560
    :cond_3
    if-nez v0, :cond_1

    .line 4561
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e034f

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 4564
    :cond_4
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 4565
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setOrientation(Landroid/content/Context;I)V

    .line 4567
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e065b

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionLogin(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 4672
    invoke-static {}, Lcom/dolphin/browser/r/a;->a()Lcom/dolphin/browser/r/a;

    move-result-object v0

    .line 4674
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/r/a;->a(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {v0}, Lcom/dolphin/browser/r/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4678
    invoke-direct {p0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Context;)V

    .line 4688
    :goto_0
    return-void

    .line 4681
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4682
    const-string v1, "extra_voice_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4684
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 4685
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0685

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public actionNetDiagnotics(Lcom/dolphin/browser/core/ITab;)Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 3964
    const-string v0, "BrowserActivity"

    const-string v1, "Begin network diagnotics."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    const/4 v0, 0x0

    return v0
.end method

.method public actionNewTab()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3655
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionNewTab2()Z

    .line 3656
    return-void
.end method

.method public actionNewTab2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3662
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->t()Z

    move-result v0

    return v0
.end method

.method public actionPaste()Z
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4628
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getTextFromClipboard()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4629
    const-string v0, ""

    .line 4630
    if-eqz v1, :cond_0

    .line 4631
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4633
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 4634
    return v3
.end method

.method public actionPasteAndGo()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3987
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getTextFromClipboard()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3988
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3989
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00f4

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4002
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3991
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3992
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 3993
    invoke-static {v1, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3994
    invoke-static {v1}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 3996
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3997
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3998
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3999
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public actionRefresh()V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6018
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 6019
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6020
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->reload()V

    .line 6025
    :cond_0
    return-void
.end method

.method public actionRestoreData()Z
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4009
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 4011
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmobi/mgeek/TunnyBrowser/i;->a(Landroid/content/Context;I)Lmobi/mgeek/TunnyBrowser/i;

    move-result-object v2

    .line 4014
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0526

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4015
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/i;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4016
    instance-of v0, v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 4017
    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->c(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 4021
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/am;

    invoke-direct {v0, p0, v2}, Lmobi/mgeek/TunnyBrowser/am;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/i;)V

    .line 4029
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4030
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4031
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4032
    return v3
.end method

.method public actionSavePage()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4320
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSavePage2()Z

    .line 4321
    return-void
.end method

.method public actionSavePage2()Z
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4327
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4328
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e001e

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4329
    const/4 v0, 0x1

    .line 4335
    :goto_0
    return v0

    .line 4331
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 4332
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 4333
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v0

    const-string v4, "text/html"

    const-wide/16 v5, -0x1

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4335
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public actionSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5767
    const-string v0, "http://www.google.com"

    .line 5771
    :goto_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    .line 5772
    if-eqz v1, :cond_0

    .line 5773
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 5774
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5776
    const/4 v1, 0x0

    .line 5779
    :cond_0
    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    .line 5780
    return-void

    .line 5769
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/util/BrowserUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public actionSelectText()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4196
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSelectText2()Z

    .line 4197
    return-void
.end method

.method public actionSelectText2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4203
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->u()Z

    move-result v0

    return v0
.end method

.method public actionSendFeedback()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3955
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3956
    const-string v1, "dolphin:pref_res"

    const-string v2, "feedback_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3958
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3959
    const/4 v0, 0x0

    return v0
.end method

.method public actionSettings()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4210
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSettings2()Z

    .line 4211
    return-void
.end method

.method public actionSettings2()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4218
    const-string v1, "title"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4219
    const-string v1, "url"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4220
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4221
    const/4 v0, 0x0

    return v0
.end method

.method public actionShare()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3797
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionShare2()Z

    .line 3798
    return-void
.end method

.method public actionShare2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3804
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3805
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e001e

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 3806
    const/4 v0, 0x1

    .line 3809
    :goto_0
    return v0

    .line 3808
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v1}, Lcom/dolphin/browser/t/l;->D()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public actionShare3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5792
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionShare2()Z

    .line 5793
    return-void
.end method

.method public actionShowLeftBar()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 4536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showLeftPageView(Z)V

    .line 4537
    const/4 v0, 0x0

    return v0
.end method

.method public actionShowRightBar()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 4543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showRightPageView(Z)V

    .line 4544
    const/4 v0, 0x1

    return v0
.end method

.method public actionShowZoomButton(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5933
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->showZoomButton()Z

    move-result v0

    .line 5934
    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 5935
    if-eq v1, v0, :cond_0

    .line 5936
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setShowZoomButton(Landroid/content/Context;Z)V

    .line 5938
    :cond_0
    return-void
.end method

.method public actionShowZoomButton()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4039
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->showZoomButton()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 4040
    :goto_0
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2, p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setShowZoomButton(Landroid/content/Context;Z)V

    .line 4041
    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e02de

    .line 4043
    :goto_1
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4044
    return v1

    .line 4039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4041
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e02dd

    goto :goto_1
.end method

.method public actionStop()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 6030
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6031
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->stopLoading()V

    .line 6033
    :cond_0
    return-void
.end method

.method public actionStopOrReload()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3731
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionStopOrReload2()Z

    .line 3732
    return-void
.end method

.method public actionStopOrReload2()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3738
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3739
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->stopLoading()V

    .line 3748
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3741
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3742
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3743
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->reload()V

    .line 3746
    :cond_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aH()V

    goto :goto_0
.end method

.method public actionSubscribeRSS()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4076
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSubscribeRSS2()Z

    .line 4077
    return-void
.end method

.method public actionSubscribeRSS2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4090
    const/4 v0, 0x1

    return v0
.end method

.method public actionSwitchTheme()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 4050
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4051
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4052
    const/4 v0, 0x1

    return v0
.end method

.method public actionSwitchToLeftTab()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4444
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 4445
    if-lez v0, :cond_0

    .line 4446
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->switchToTab(I)Z

    .line 4447
    const/4 v0, 0x0

    .line 4450
    :goto_0
    return v0

    .line 4449
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e032c

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4450
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public actionSwitchToRightTab()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4458
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 4459
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 4460
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->switchToTab(I)Z

    .line 4461
    const/4 v0, 0x0

    .line 4464
    :goto_0
    return v0

    .line 4463
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e032d

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4464
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public actionToggleAdBlock()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6857
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v2

    .line 6861
    if-nez v2, :cond_0

    .line 6862
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setAdBlockEnabled(Z)V

    .line 6863
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05f2

    invoke-static {p0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 6879
    :goto_0
    return v0

    .line 6869
    :cond_0
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getAdBlockEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 6870
    :cond_1
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setAdBlockEnabled(Z)V

    .line 6872
    if-eqz v0, :cond_2

    .line 6873
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N()Z

    .line 6874
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f1

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    :goto_1
    move v0, v1

    .line 6879
    goto :goto_0

    .line 6876
    :cond_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O()V

    .line 6877
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f0

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public actionToggleCompact()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4476
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionToggleCompact2()Z

    .line 4477
    return-void
.end method

.method public actionToggleCompact2(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5898
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5899
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e001e

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 5928
    :cond_0
    :goto_0
    return-void

    .line 5902
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 5903
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5904
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 5905
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->stopLoading()V

    .line 5906
    const-string v0, "http://www.google.com/gwt/x?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 5907
    invoke-direct {p0, p1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Ljava/lang/String;Z)Z

    move-result v3

    .line 5908
    if-eq v3, v0, :cond_0

    .line 5909
    if-eqz v0, :cond_2

    .line 5910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/gwt/x?u="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5912
    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 5914
    :cond_2
    const-string v0, "u="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 5915
    if-lez v3, :cond_0

    .line 5916
    const-string v0, "&"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 5917
    const/4 v4, -0x1

    if-ne v4, v0, :cond_3

    .line 5918
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 5920
    :cond_3
    const-string v4, "u="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5922
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5923
    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public actionToggleCompact2()Z
    .locals 5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4483
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4484
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e001e

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 4485
    const/4 v0, 0x1

    .line 4509
    :goto_0
    return v0

    .line 4487
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 4488
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4489
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 4490
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebView;->stopLoading()V

    .line 4491
    const-string v0, "http://www.google.com/gwt/x?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4492
    const-string v0, "u="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 4493
    if-lez v3, :cond_2

    .line 4494
    const-string v0, "&"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 4495
    const/4 v4, -0x1

    if-ne v4, v0, :cond_1

    .line 4496
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4498
    :cond_1
    const-string v4, "u="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4500
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4501
    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 4509
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4504
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/gwt/x?u="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4506
    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public actionToggleFullscreen()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4419
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionToggleFullscreen2()Z

    .line 4420
    return-void
.end method

.method public actionToggleFullscreen2()Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4426
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    .line 4427
    if-nez v0, :cond_0

    move v0, v1

    .line 4428
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZZ)V

    .line 4429
    return v1

    :cond_0
    move v0, v2

    .line 4427
    goto :goto_0
.end method

.method public actionToggleNightMode()Z
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6788
    const/4 v0, 0x0

    .line 6789
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6790
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M()V

    .line 6795
    :goto_0
    return v0

    .line 6792
    :cond_0
    const/4 v0, 0x1

    .line 6793
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L()Z

    goto :goto_0
.end method

.method public actionUpdateUserAgent(I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 5984
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 5985
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aN()V

    .line 5987
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;I)V

    .line 5988
    return-void
.end method

.method public actionWindows()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3714
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionWindows2()Z

    .line 3715
    return-void
.end method

.method public actionWindows2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3721
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->B()V

    .line 3722
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 3723
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aJ()V

    .line 3724
    const/4 v0, 0x0

    return v0
.end method

.method public actionZoomIn()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4342
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionZoomIn2()Z

    .line 4343
    return-void
.end method

.method public actionZoomIn2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4349
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->zoomIn()Z

    .line 4350
    const/4 v0, 0x0

    return v0
.end method

.method public actionZoomOut()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4357
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionZoomOut2()Z

    .line 4358
    return-void
.end method

.method public actionZoomOut2()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4364
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->zoomOut()Z

    .line 4365
    const/4 v0, 0x0

    return v0
.end method

.method public ad()V
    .locals 1

    .prologue
    .line 7416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 7417
    return-void
.end method

.method public ae()V
    .locals 1

    .prologue
    .line 7462
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_0

    .line 7463
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->D()V

    .line 7465
    :cond_0
    return-void
.end method

.method public af()V
    .locals 1

    .prologue
    .line 7469
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_0

    .line 7470
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->b()V

    .line 7472
    :cond_0
    return-void
.end method

.method public ag()Z
    .locals 1

    .prologue
    .line 7481
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z:Z

    return v0
.end method

.method public ah()Z
    .locals 1

    .prologue
    .line 7486
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B:Z

    return v0
.end method

.method public ai()Z
    .locals 2

    .prologue
    .line 7504
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    return v0
.end method

.method public aj()V
    .locals 1

    .prologue
    .line 7511
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aZ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aQ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->an:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7513
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    if-eqz v0, :cond_1

    .line 7514
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/a;->b()V

    .line 7520
    :cond_1
    :goto_0
    return-void

    .line 7517
    :cond_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aY()V

    .line 7518
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/a;->a()V

    goto :goto_0
.end method

.method public ak()V
    .locals 1

    .prologue
    .line 7667
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    if-eqz v0, :cond_0

    .line 7668
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->a()V

    .line 7670
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 4910
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201dc

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4914
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ei;->c()V

    .line 4915
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bd()V

    .line 4916
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    if-eqz v0, :cond_0

    .line 4917
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/MainScreen;->a()V

    .line 4919
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    if-eqz v0, :cond_1

    .line 4920
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/v;->c()V

    .line 4922
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    if-eqz v0, :cond_2

    .line 4923
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/x;->d()V

    .line 4925
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    if-eqz v0, :cond_3

    .line 4926
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/d/c;->a()V

    .line 4928
    :cond_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_4

    .line 4929
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->E()V

    .line 4931
    :cond_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    if-eqz v0, :cond_5

    .line 4932
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->d()V

    .line 4934
    :cond_5
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    if-eqz v0, :cond_6

    .line 4935
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/c;->a()V

    .line 4937
    :cond_6
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    if-eqz v0, :cond_7

    .line 4938
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/MenuBar;->a()V

    .line 4941
    :cond_7
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    if-eqz v0, :cond_8

    .line 4942
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/a;->updateTheme()V

    .line 4945
    :cond_8
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c()Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 4954
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n:Lcom/dolphin/browser/theme/data/a;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n:Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/theme/data/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4955
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e(Z)V

    .line 4957
    :cond_9
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->n:Lcom/dolphin/browser/theme/data/a;

    .line 4959
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 4960
    if-eqz v1, :cond_b

    .line 4961
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v2

    .line 4962
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_b

    .line 4964
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 4965
    if-eqz v3, :cond_a

    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->isLoadingReceivedError()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4967
    invoke-static {v3}, Lcom/dolphin/browser/t/k;->b(Lcom/dolphin/browser/core/ITab;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4962
    :cond_a
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4976
    :cond_b
    const-string v0, "BrowserActivity"

    const-string v1, "update theme"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    return-void

    .line 4969
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 7476
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    .line 7477
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6102
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6104
    if-eqz p1, :cond_1

    .line 6106
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6107
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6108
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6110
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6112
    :cond_1
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 7491
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->setBottomBar(Landroid/view/View;)V

    .line 7492
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 4849
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 6218
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 6576
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->af:Lcom/dolphin/browser/extensions/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 6578
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aG()V

    .line 6580
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->enablePlatformNotifications()V

    .line 6582
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 6371
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6373
    if-nez p1, :cond_1

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6378
    :cond_0
    :goto_0
    return-void

    .line 6376
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->c()V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 6684
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    invoke-virtual {v0, p1}, Lcom/mgeek/android/ui/MainScreen;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public cancelFindOnPage()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 4064
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->H()V

    .line 4065
    return-void
.end method

.method public closeCurrentWindow()V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2381
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 2382
    return-void
.end method

.method public closeTab(I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7450
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->a(I)V

    .line 7451
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 6588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->an:Z

    .line 6589
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ba;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ba;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6598
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 6633
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0, p1}, Lmobi/mgeek/TunnyBrowser/fl;->d(Z)V

    .line 6634
    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6759
    invoke-virtual {p0, p1, v0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public dismissSubWindow(Lmobi/mgeek/TunnyBrowser/Tab;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2696
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x52

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 5500
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5501
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 5591
    :goto_0
    return v0

    .line 5504
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 5506
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/f/e/b;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_2

    .line 5510
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/f/e/b;->f()V

    goto :goto_0

    .line 5550
    :cond_2
    if-eq v1, v3, :cond_3

    .line 5551
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmobi/mgeek/TunnyBrowser/ei;->b(Z)V

    .line 5553
    :cond_3
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5554
    if-ne v1, v3, :cond_4

    .line 5555
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->U()V

    goto :goto_0

    .line 5559
    :cond_4
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    invoke-virtual {v2}, Lcom/dolphin/browser/d/c;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5560
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e:Lcom/dolphin/browser/d/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/d/c;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 5563
    :cond_5
    const/16 v2, 0x19

    if-eq v1, v2, :cond_6

    const/16 v2, 0x18

    if-ne v1, v2, :cond_7

    .line 5565
    :cond_6
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 5567
    :cond_7
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aQ()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5568
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/menu/v;->a(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 5570
    :cond_8
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/TabListView;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5571
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/tablist/TabListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 5573
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v3, v1, :cond_b

    .line 5574
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aZ()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5575
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bb()V

    goto/16 :goto_0

    .line 5578
    :cond_a
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5580
    invoke-virtual {p0, v5}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    goto/16 :goto_0

    .line 5584
    :cond_b
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aL()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 5585
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c

    .line 5586
    invoke-virtual {p0, v4, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 5587
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_d

    .line 5588
    invoke-virtual {p0, v4, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 5591
    :cond_d
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5468
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5469
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 5494
    :goto_0
    return v1

    .line 5471
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5472
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->f()V

    .line 5474
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 5475
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 5476
    :cond_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aq:Lcom/dolphin/browser/menu/i;

    invoke-direct {p0, v3, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5477
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->U()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 5474
    goto :goto_1

    .line 5480
    :cond_4
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->as:Lcom/mgeek/android/ui/a;

    invoke-virtual {v3}, Lcom/mgeek/android/ui/a;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    .line 5482
    :goto_2
    if-eqz v3, :cond_5

    .line 5483
    if-eqz v0, :cond_8

    .line 5484
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Z)V

    .line 5490
    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 5491
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5493
    :cond_6
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/ei;->b(Z)V

    .line 5494
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_7
    move v3, v2

    .line 5480
    goto :goto_2

    .line 5486
    :cond_8
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Z)V

    goto :goto_3
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 5370
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5371
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5374
    :goto_0
    return v0

    .line 5373
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ei;->b(Z)V

    .line 5374
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 6603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->an:Z

    .line 6604
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/bb;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/bb;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6613
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 6896
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_0

    .line 6897
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/f/e/b;->a(Z)V

    .line 6899
    :cond_0
    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 4058
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->e(Ljava/lang/String;)V

    .line 4059
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1235
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1236
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finishFromChild(Landroid/app/Activity;)V

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->getActivityTab(Landroid/app/Activity;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1240
    if-eqz v0, :cond_0

    .line 1242
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 1243
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    goto :goto_0
.end method

.method public g()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBrowserSettings()Lmobi/mgeek/TunnyBrowser/BrowserSettings;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5079
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 5265
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .prologue
    .line 5271
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 5283
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 5277
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5353
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSense()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5354
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 5355
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 5356
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 5357
    aget-object v0, v0, v2

    .line 5358
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.webkit.WebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5359
    const-string v0, "com.android.browser"

    .line 5360
    const-string v0, "com.android.browser"

    .line 5364
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3366
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3367
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getTabControl()Lmobi/mgeek/TunnyBrowser/TabControl;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2136
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/TabControl;->a(Lcom/dolphin/browser/core/TabManager;)Lmobi/mgeek/TunnyBrowser/TabControl;

    move-result-object v0

    return-object v0
.end method

.method public getTextFromClipboard()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4657
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 4658
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTopWindow()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2118
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5174
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 1212
    const-string v0, "initHomePageView"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    .line 1214
    if-eqz v1, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1217
    :cond_0
    new-instance v1, Lcom/dolphin/browser/f/e/b;

    invoke-static {}, Lcom/dolphin/browser/util/dm;->a()Lcom/dolphin/browser/f/e/g;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/f/e/b;-><init>(Landroid/content/Context;Lcom/dolphin/browser/f/e/g;)V

    .line 1219
    new-instance v2, Lmobi/mgeek/TunnyBrowser/br;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmobi/mgeek/TunnyBrowser/br;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/x;)V

    .line 1220
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/f/e/b;->a(Lcom/dolphin/browser/f/e/i;)V

    .line 1221
    invoke-virtual {v1}, Lcom/dolphin/browser/f/e/b;->D()V

    .line 1222
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/f/e/b;->c(Landroid/view/View;)V

    .line 1223
    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    .line 1224
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    return-object v0
.end method

.method public isFullScreen()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5087
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public k()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 2457
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08040f

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    .line 2458
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2716
    const-string v0, "BrowserActivity"

    const-string v1, "goBackOnePageOrQuit"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2718
    if-nez v0, :cond_1

    .line 2726
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 2789
    :cond_0
    :goto_0
    return-void

    .line 2731
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->l()Lcom/dolphin/browser/extensions/IKeyEventExtension;

    move-result-object v1

    .line 2733
    invoke-interface {v1, v0}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onBackButton(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2738
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2739
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, p0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;)Z

    .line 2743
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->goBack()V

    .line 2744
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aI()V

    goto :goto_0

    .line 2748
    :cond_2
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 2749
    if-eqz v1, :cond_3

    .line 2750
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    goto :goto_0

    .line 2752
    :cond_3
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->closeOnExit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2756
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearInLoad()V

    .line 2757
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 2758
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->finish()V

    goto :goto_0

    .line 2778
    :cond_4
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aF()V

    .line 2780
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 2781
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 2784
    :cond_5
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->J:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/ei;->a(Z)V

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 2793
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V:Z

    return v0
.end method

.method o()V
    .locals 2

    .prologue
    .line 3261
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3297
    :goto_0
    return-void

    .line 3267
    :cond_0
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08040f

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    .line 3268
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3269
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3270
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    .line 3271
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->O:Landroid/widget/FrameLayout;

    .line 3272
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 3273
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->P:Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;->onCustomViewHidden()V

    .line 3276
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3277
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 3281
    :cond_2
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 3288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 3290
    :cond_3
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->G:I

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setRequestedOrientation(I)V

    .line 3291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3292
    :catch_0
    move-exception v0

    .line 3294
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0xa

    const/4 v3, 0x0

    .line 3396
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3397
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3488
    :cond_0
    :goto_0
    return-void

    .line 3401
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3484
    :cond_2
    :goto_1
    :sswitch_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3485
    if-eqz v0, :cond_0

    .line 3486
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->requestFocus()Z

    goto :goto_0

    .line 3403
    :sswitch_1
    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 3404
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3405
    if-eqz v0, :cond_3

    .line 3406
    invoke-virtual {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 3408
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3409
    if-eqz v1, :cond_4

    const-string v2, "new_tab"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3411
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v1, v0, v3}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;Z)Lcom/dolphin/browser/core/ITab;

    goto :goto_1

    .line 3413
    :cond_4
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 3414
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3416
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto :goto_1

    .line 3422
    :sswitch_2
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/q;->e()V

    .line 3424
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZ)V

    .line 3425
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    .line 3426
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aU()V

    .line 3427
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Q:Z

    if-nez v0, :cond_5

    .line 3428
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->updateActivityOrientation(Landroid/app/Activity;)V

    .line 3431
    :cond_5
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/q;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 3432
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->setBottomBar(Landroid/view/View;)V

    .line 3434
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3435
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aV()V

    .line 3437
    :cond_6
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/k;->b()V

    goto/16 :goto_1

    .line 3443
    :sswitch_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    if-eqz v0, :cond_2

    .line 3446
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    invoke-virtual {v0, p2, p3}, Lmobi/mgeek/TunnyBrowser/hu;->a(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 3449
    :sswitch_4
    if-ne p2, v1, :cond_2

    .line 3450
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3452
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3456
    :sswitch_5
    if-ne p2, v2, :cond_2

    .line 3457
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b()V

    goto/16 :goto_1

    .line 3465
    :sswitch_6
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/cc;->a()Lcom/dolphin/browser/DolphinService/ui/cc;

    move-result-object v0

    .line 3467
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/DolphinService/ui/cc;->a(Z)V

    .line 3468
    if-ne p2, v1, :cond_2

    .line 3469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/cc;->a(J)V

    goto/16 :goto_1

    .line 3475
    :sswitch_7
    if-ne p2, v1, :cond_2

    goto/16 :goto_1

    .line 3401
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x9 -> :sswitch_5
        0x14 -> :sswitch_7
        0x16 -> :sswitch_4
        0x65 -> :sswitch_6
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1911
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->f()V

    .line 1916
    :cond_0
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A:Z

    .line 1917
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1918
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1985
    :goto_0
    return-void

    .line 1922
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1923
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/fl;->e()V

    .line 1926
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/util/DisplayManager;->onConfigurationChanged()V

    .line 1927
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->a(Landroid/content/res/Configuration;)V

    .line 1928
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/res/Configuration;)V

    .line 1930
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1931
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;I)V

    .line 1935
    :cond_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    if-eqz v0, :cond_4

    .line 1936
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj:Lcom/dolphin/browser/menu/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->b()Landroid/view/View;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;I)V

    .line 1943
    :cond_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    if-eqz v0, :cond_5

    .line 1944
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ap:Lcom/dolphin/browser/tablist/TabListView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;I)V

    .line 1951
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/dolphin/browser/util/at;->a(I)V

    .line 1953
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1954
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isSelectingText()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/mgeek/android/util/i;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_6

    .line 1957
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->cancelSelectText()V

    .line 1960
    :cond_6
    invoke-static {}, Lcom/dolphin/browser/m/d;->a()Lcom/dolphin/browser/m/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/m/d;->b()V

    .line 1962
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_7

    .line 1963
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->C()V

    .line 1966
    :cond_7
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    if-eqz v0, :cond_8

    .line 1967
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sidebar/v;->a(Landroid/content/res/Configuration;)V

    .line 1970
    :cond_8
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    if-eqz v0, :cond_9

    .line 1971
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g:Lcom/dolphin/browser/sidebar/x;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sidebar/x;->a(Landroid/content/res/Configuration;)V

    .line 1974
    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_d

    .line 1975
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1976
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aa()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gv;->g()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1977
    :cond_b
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bc()V

    .line 1984
    :cond_c
    :goto_1
    const-string v0, "BrowserActivity"

    const-string v1, "new orientation %d"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1980
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1981
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .prologue
    const v9, 0x7f080425

    const v8, 0x7f080424

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2156
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 2247
    :goto_0
    return v2

    .line 2161
    :cond_0
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a:Z

    .line 2162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 2165
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080448

    if-ne v3, v0, :cond_4

    .line 2166
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2167
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e001e

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 2246
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a:Z

    goto :goto_0

    .line 2169
    :cond_2
    const-string v0, "address bar"

    const-string v3, "longpress"

    const-string v4, "copypageurl"

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2173
    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    .line 2178
    goto :goto_1

    .line 2176
    :cond_3
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->copy(Ljava/lang/CharSequence;Landroid/content/Context;)V

    move v0, v2

    goto :goto_2

    .line 2179
    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-eq v3, v9, :cond_5

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-eq v3, v8, :cond_5

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080426

    if-eq v3, v0, :cond_5

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08040c

    if-eq v3, v0, :cond_5

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080427

    if-ne v3, v0, :cond_a

    .line 2185
    :cond_5
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v4

    .line 2186
    if-nez v4, :cond_6

    move v2, v1

    .line 2187
    goto :goto_1

    .line 2189
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2190
    const-string v5, "webview"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2201
    const/4 v0, 0x0

    .line 2202
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;

    move-result-object v6

    .line 2203
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getType()I

    move-result v7

    if-ne v7, v2, :cond_9

    .line 2205
    invoke-virtual {v6}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 2206
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2207
    const-string v7, "url"

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2209
    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2218
    :cond_7
    :goto_3
    invoke-static {v4, v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-eq v3, v9, :cond_8

    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-ne v3, v8, :cond_1

    .line 2220
    :cond_8
    invoke-static {v4}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;)V

    goto/16 :goto_1

    .line 2211
    :cond_9
    invoke-interface {v4, v5}, Lcom/dolphin/browser/core/ITab;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 2212
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 2213
    if-eqz v5, :cond_7

    .line 2214
    const-string v0, "url"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 2223
    :cond_a
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08043d

    if-ne v3, v0, :cond_b

    .line 2224
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 2225
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/t/l;->a(I)V

    .line 2226
    const-string v0, "tab bar"

    const-string v3, "longpress"

    const-string v4, "closetab"

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2228
    :cond_b
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08043e

    if-ne v3, v0, :cond_c

    .line 2229
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 2230
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/t/l;->c(I)V

    .line 2231
    const-string v0, "tab bar"

    const-string v3, "longpress"

    const-string v4, "closeothertab"

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2233
    :cond_c
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08043f

    if-ne v3, v0, :cond_d

    .line 2234
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->f()V

    .line 2235
    const-string v0, "tab bar"

    const-string v3, "longpress"

    const-string v4, "closealltab"

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2237
    :cond_d
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080440

    if-ne v3, v0, :cond_e

    .line 2238
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->e()V

    .line 2239
    const-string v0, "tab bar"

    const-string v3, "longpress"

    const-string v4, "reopen"

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2241
    :cond_e
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/mgeek/TunnyBrowser/eu;->b(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2244
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 1758
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1759
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1763
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->A()V

    .line 1765
    :cond_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aT()V

    .line 1766
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1767
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->c(Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->d(Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1769
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 464
    const-string v2, "BrowserActivity.onCreate"

    invoke-static {v2}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v4

    .line 465
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 467
    sget-object v2, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v2, 0x7f040004

    sget-object v5, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v5, 0x7f040005

    invoke-virtual {p0, v2, v5}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->overridePendingTransition(II)V

    .line 470
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v5

    .line 471
    iput-object v5, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 473
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->al()Z

    move-result v6

    .line 475
    const-string v2, "App Start, stage two: init data and view in BrowserActivity"

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 476
    sput-object p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 477
    sget-object v2, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v2, "BrowserActivity"

    const-string v7, "Instance count: %d (new instance %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object p0, v8, v0

    invoke-static {v2, v7, v8}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 480
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    .line 481
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p:Landroid/os/Bundle;

    .line 483
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/hf;->a()Lmobi/mgeek/TunnyBrowser/hf;

    move-result-object v7

    .line 484
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->r:Lmobi/mgeek/TunnyBrowser/hj;

    invoke-virtual {v7, v2}, Lmobi/mgeek/TunnyBrowser/hf;->a(Lmobi/mgeek/TunnyBrowser/hj;)V

    .line 485
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fs;->a()Lmobi/mgeek/TunnyBrowser/fs;

    move-result-object v2

    .line 486
    iget-boolean v8, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->s:Z

    if-nez v8, :cond_0

    .line 487
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/fs;->c()V

    .line 491
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v8

    const-string v9, "showSplashScreen"

    invoke-virtual {v8, v9, v1}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v8

    .line 494
    invoke-virtual {v5, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.MAIN"

    iget-object v10, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v8, :cond_4

    .line 497
    invoke-virtual {v2, p0}, Lmobi/mgeek/TunnyBrowser/fs;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v9

    .line 498
    if-eqz v9, :cond_4

    .line 499
    new-instance v2, Lmobi/mgeek/TunnyBrowser/SplashParentView;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/SplashParentView;-><init>(Landroid/content/Context;)V

    .line 500
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    invoke-virtual {v2, v10}, Lmobi/mgeek/TunnyBrowser/SplashParentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-virtual {v2, v9}, Lmobi/mgeek/TunnyBrowser/SplashParentView;->addView(Landroid/view/View;)V

    .line 505
    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/SplashParentView;->setOrientation(I)V

    .line 509
    :goto_0
    if-eqz v2, :cond_3

    .line 511
    iput-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p:Landroid/os/Bundle;

    .line 512
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    const-string v8, "ignore_saved_state"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 514
    invoke-virtual {v7, v2}, Lmobi/mgeek/TunnyBrowser/hf;->a(Landroid/view/View;)V

    move-object v0, v2

    .line 518
    :goto_2
    invoke-virtual {v7, v0}, Lmobi/mgeek/TunnyBrowser/hf;->a(Landroid/view/View;)V

    .line 521
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 523
    new-instance v0, Lmobi/mgeek/TunnyBrowser/gv;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/gv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j:Lmobi/mgeek/TunnyBrowser/gv;

    .line 525
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g(Landroid/content/Intent;)V

    .line 526
    invoke-virtual {v5}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ad()V

    .line 527
    if-nez v6, :cond_1

    .line 530
    invoke-static {}, Lcom/dolphin/browser/util/ae;->c()V

    .line 532
    :cond_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->am()V

    .line 533
    invoke-virtual {v4}, Lcom/dolphin/browser/util/cw;->a()J

    .line 534
    return-void

    :cond_2
    move v0, v1

    .line 513
    goto :goto_1

    .line 516
    :cond_3
    invoke-direct {p0, v8}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2503
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2504
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2688
    :cond_0
    :goto_0
    return-void

    .line 2507
    :cond_1
    instance-of v0, p2, Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_a

    .line 2508
    iput v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    .line 2509
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 2511
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v3

    .line 2515
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080447

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2517
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2518
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    move v0, v1

    .line 2522
    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2524
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080411

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2526
    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2528
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080448

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2530
    if-nez v3, :cond_5

    move v0, v1

    :goto_3
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2532
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080449

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2533
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getTextFromClipboard()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 2534
    :goto_4
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2536
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08044a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2538
    if-nez v3, :cond_7

    move v0, v1

    :goto_5
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2540
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080413

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_8

    move v0, v2

    .line 2544
    :goto_6
    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2546
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080415

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2548
    if-nez v3, :cond_9

    :goto_7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 2518
    goto :goto_1

    :cond_4
    move v0, v2

    .line 2526
    goto :goto_2

    :cond_5
    move v0, v2

    .line 2530
    goto :goto_3

    :cond_6
    move v0, v2

    .line 2533
    goto :goto_4

    :cond_7
    move v0, v2

    .line 2538
    goto :goto_5

    :cond_8
    move v0, v1

    .line 2542
    goto :goto_6

    :cond_9
    move v1, v2

    .line 2548
    goto :goto_7

    .line 2551
    :cond_a
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 2552
    invoke-static {p2}, Lcom/dolphin/browser/core/WebViewFactory;->getIWebViewFromView(Landroid/view/View;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v4

    .line 2553
    if-eqz v4, :cond_0

    .line 2554
    iput v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    .line 2555
    invoke-interface {v4}, Lcom/dolphin/browser/core/IWebView;->getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;

    move-result-object v5

    .line 2559
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 2560
    :goto_8
    invoke-static {v4, v5, p1}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;Landroid/view/ContextMenu;)Z

    .line 2562
    if-eqz v5, :cond_0

    .line 2566
    invoke-virtual {v5}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getType()I

    move-result v6

    .line 2567
    if-nez v6, :cond_c

    .line 2570
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getEnableLongPressMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2572
    invoke-interface {v4}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->canQuickSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2574
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSelectText2()Z

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 2559
    goto :goto_8

    .line 2584
    :cond_c
    const/16 v4, 0x9

    if-eq v6, v4, :cond_0

    if-eqz v0, :cond_0

    .line 2593
    sget-object v0, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v0, 0x7f100002

    invoke-virtual {v3, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2596
    invoke-virtual {v5}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    .line 2597
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080419

    const/4 v0, 0x2

    if-ne v6, v0, :cond_10

    move v0, v1

    :goto_9
    invoke-interface {p1, v4, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2599
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f08041d

    const/4 v0, 0x4

    if-ne v6, v0, :cond_11

    move v0, v1

    :goto_a
    invoke-interface {p1, v4, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2601
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080420

    const/4 v0, 0x3

    if-ne v6, v0, :cond_12

    move v0, v1

    :goto_b
    invoke-interface {p1, v4, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2603
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f080428

    if-eq v6, v7, :cond_d

    if-ne v6, v9, :cond_13

    :cond_d
    move v0, v1

    :goto_c
    invoke-interface {p1, v4, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2607
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080423

    if-eq v6, v8, :cond_e

    if-ne v6, v9, :cond_f

    :cond_e
    move v2, v1

    :cond_f
    invoke-interface {p1, v0, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2613
    packed-switch v6, :pswitch_data_0

    .line 2684
    :pswitch_0
    const-string v0, "BrowserActivity"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 2597
    goto :goto_9

    :cond_11
    move v0, v2

    .line 2599
    goto :goto_a

    :cond_12
    move v0, v2

    .line 2601
    goto :goto_b

    :cond_13
    move v0, v2

    .line 2603
    goto :goto_c

    .line 2615
    :pswitch_1
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2616
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08041a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2621
    const-string v1, "phone"

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2622
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2623
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08041b

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2625
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08041c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/a;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/menu/a/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2630
    :pswitch_2
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2631
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08041e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2634
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08041f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/a;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/menu/a/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2639
    :pswitch_3
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2640
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080421

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2644
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080422

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/a;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/menu/a/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2650
    :pswitch_4
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2651
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080424

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2654
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2655
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08040c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    .line 2657
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2658
    if-eqz v0, :cond_14

    .line 2659
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->F:Landroid/os/Handler;

    const/16 v2, 0x4d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2660
    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 2662
    :cond_14
    if-eq v6, v8, :cond_0

    .line 2667
    :pswitch_5
    if-ne v6, v7, :cond_15

    .line 2668
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2670
    :cond_15
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080429

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/d;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/menu/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2672
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08042b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/e;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/menu/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2674
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08042a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/b;

    invoke-direct {v1, v3}, Lcom/dolphin/browser/menu/a/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2676
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08042c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/menu/a/c;

    invoke-direct {v1, p0, v3}, Lcom/dolphin/browser/menu/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2613
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2142
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2150
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1846
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_0

    .line 1847
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fs;->a()Lmobi/mgeek/TunnyBrowser/fs;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v0, 0x4

    new-array v4, v0, [Lmobi/mgeek/TunnyBrowser/ft;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Z()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ft;

    aput-object v0, v4, v7

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    aput-object v0, v4, v8

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i:Lcom/dolphin/browser/titlebar/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->c()Lcom/dolphin/browser/titlebar/k;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x3

    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ak:Lcom/dolphin/browser/menu/MenuBar;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lmobi/mgeek/TunnyBrowser/fs;->a(II[Lmobi/mgeek/TunnyBrowser/ft;)V

    .line 1853
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/ae;->a()Lcom/dolphin/browser/core/INetworkPLO;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/INetworkPLO;->updatePloData()V

    .line 1855
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1856
    const-string v0, "BrowserActivity"

    const-string v1, "Instance count: %d (releasing instance %s)"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p0, v2, v8

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1858
    invoke-static {}, Lcom/dolphin/browser/a/c;->a()Lcom/dolphin/browser/a/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/a/c;->a(Ljava/lang/Object;)V

    .line 1859
    const-string v0, "BrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onDestroy: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 1861
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1862
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    invoke-virtual {v0, v7, v6}, Lmobi/mgeek/TunnyBrowser/hu;->a(ILandroid/content/Intent;)V

    .line 1863
    iput-object v6, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->H:Lmobi/mgeek/TunnyBrowser/hu;

    .line 1865
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/ab;->a()Lcom/dolphin/browser/core/ab;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->v:Lcom/dolphin/browser/core/ad;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/ab;->b(Lcom/dolphin/browser/core/ad;)V

    .line 1866
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 1867
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1871
    invoke-static {}, Lcom/dolphin/browser/core/af;->a()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/INetworkPredictor;->stop()V

    .line 1879
    :cond_2
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1880
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1881
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebIconDatabase;->close()V

    .line 1884
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/core/ah;->a()Lcom/dolphin/browser/core/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/ah;->b(Landroid/content/Context;)V

    .line 1886
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->c()V

    .line 1888
    invoke-static {}, Lcom/dolphin/browser/core/UIManager;->getInstance()Lcom/dolphin/browser/core/UIManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/core/UIManager;->a(Lcom/dolphin/browser/core/IUI;)V

    .line 1890
    :cond_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    if-eqz v0, :cond_5

    .line 1891
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w:Lcom/dolphin/browser/f/e/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->destroyDrawingCache()V

    .line 1894
    :cond_5
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    if-eqz v0, :cond_6

    .line 1895
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/extensions/ThemeManager;->b(Lcom/dolphin/browser/theme/aq;)V

    .line 1897
    :cond_6
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->af:Lcom/dolphin/browser/extensions/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->removeListener(Ljava/lang/Object;)V

    .line 1899
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    if-eqz v0, :cond_7

    .line 1900
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y:Lcom/mgeek/android/ui/MainScreen;

    invoke-virtual {v0, p0}, Lcom/mgeek/android/ui/MainScreen;->b(Lcom/mgeek/android/ui/ai;)V

    .line 1902
    :cond_7
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/hf;->a()Lmobi/mgeek/TunnyBrowser/hf;

    move-result-object v0

    invoke-virtual {v0, v6}, Lmobi/mgeek/TunnyBrowser/hf;->a(Lmobi/mgeek/TunnyBrowser/hj;)V

    .line 1903
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t:Lmobi/mgeek/TunnyBrowser/bq;

    if-eqz v0, :cond_8

    .line 1904
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t:Lmobi/mgeek/TunnyBrowser/bq;

    invoke-virtual {v0, v8}, Lmobi/mgeek/TunnyBrowser/bq;->b(Z)Z

    .line 1906
    :cond_8
    return-void
.end method

.method public onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3358
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/t/a;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3360
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 2801
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2802
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2912
    :cond_0
    :goto_0
    return v0

    .line 2804
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2809
    :cond_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->J()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f:Lcom/dolphin/browser/sidebar/v;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    if-ne v1, p1, :cond_3

    .line 2811
    const-string v1, "bookmark bar"

    const-string v2, "hardkey"

    const-string v3, "back"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    :cond_3
    const/16 v1, 0x52

    if-ne v1, p1, :cond_5

    .line 2818
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V:Z

    .line 2819
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2820
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->E:Z

    .line 2824
    :cond_4
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2829
    :cond_5
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V:Z

    if-nez v1, :cond_0

    .line 2833
    sparse-switch p1, :sswitch_data_0

    .line 2912
    :cond_6
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2838
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2839
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/dolphin/browser/core/ITab;->pageUp(Z)Z

    goto :goto_0

    .line 2841
    :cond_7
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/dolphin/browser/core/ITab;->pageDown(Z)Z

    goto :goto_0

    .line 2845
    :sswitch_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aK()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2847
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonScrollPage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2848
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2849
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoBottom2()Z

    goto :goto_0

    .line 2852
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 2854
    :cond_9
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonSwtichTab()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2855
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2856
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchToRightTab()Z

    goto/16 :goto_0

    .line 2859
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto/16 :goto_0

    .line 2864
    :sswitch_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aK()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2866
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonScrollPage()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2867
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2868
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGotoTop2()Z

    goto/16 :goto_0

    .line 2871
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto/16 :goto_0

    .line 2873
    :cond_c
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonSwtichTab()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2874
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2875
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchToLeftTab()Z

    goto/16 :goto_0

    .line 2878
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto/16 :goto_0

    .line 2884
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 2885
    const-string v1, "home"

    const-string v2, "hardkey"

    const-string v3, "back"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto/16 :goto_0

    .line 2889
    :cond_e
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-nez v1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2891
    const-string v1, "exit"

    const-string v2, "launch"

    const-string v3, "longpress"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->J:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-virtual {v1, v4}, Lmobi/mgeek/TunnyBrowser/ei;->c(Z)V

    goto/16 :goto_0

    .line 2898
    :sswitch_4
    const-string v1, "home"

    const-string v2, "hardkey"

    const-string v3, "search"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 2902
    if-eqz v1, :cond_6

    .line 2903
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/y;->l()Lcom/dolphin/browser/extensions/IKeyEventExtension;

    move-result-object v2

    .line 2905
    invoke-interface {v2, v1}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onSearchButton(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 2833
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x3e -> :sswitch_0
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2918
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2919
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2994
    :cond_0
    :goto_0
    return v0

    .line 2921
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2924
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 2994
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2926
    :sswitch_0
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V:Z

    .line 2930
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v1

    invoke-interface {v1}, Lmobi/mgeek/TunnyBrowser/fl;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2931
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 2933
    :cond_4
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->E:Z

    if-eqz v0, :cond_5

    .line 2934
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->E:Z

    .line 2941
    :goto_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "hardkeyonhome"

    .line 2943
    :goto_3
    const-string v1, "menu"

    const-string v2, "clickbtn"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2936
    :cond_5
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2937
    invoke-static {}, Lcom/dolphin/browser/util/b/a;->a()V

    .line 2939
    :cond_6
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B()V

    goto :goto_2

    .line 2941
    :cond_7
    const-string v0, "hardkeyonweb"

    goto :goto_3

    .line 2947
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2948
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aK()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2951
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonScrollPage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2952
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/ITab;->pageDown(Z)Z

    goto :goto_0

    .line 2954
    :cond_8
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonSwtichTab()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2955
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchToRightTab()Z

    goto :goto_0

    .line 2961
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2962
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aK()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2965
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonScrollPage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2966
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/ITab;->pageUp(Z)Z

    goto/16 :goto_0

    .line 2968
    :cond_9
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonSwtichTab()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2969
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchToLeftTab()Z

    goto/16 :goto_0

    .line 2975
    :sswitch_3
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 2977
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o()V

    .line 2978
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/ei;->b(Z)V

    goto/16 :goto_0

    .line 2981
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2982
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2983
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab()V

    .line 2984
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/ei;->b(Z)V

    goto/16 :goto_0

    .line 2986
    :cond_b
    invoke-static {v3}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 2987
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m()V

    .line 2988
    invoke-static {v3}, Lcom/dolphin/browser/test/c;->b(I)V

    goto/16 :goto_0

    .line 2924
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 2025
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onLowMemory()V

    .line 2026
    const-string v0, "BrowserActivity"

    const-string v1, "Receive low memory warning."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2036
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    if-eqz v0, :cond_0

    .line 2033
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->k()V

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1695
    const-string v0, "home"

    const-string v1, "hardkey"

    const-string v2, "menu"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->B()V

    .line 1699
    if-nez p1, :cond_4

    .line 1700
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    .line 1701
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->U:I

    .line 1702
    const/4 v0, 0x3

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    .line 1703
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z:Z

    if-eqz v0, :cond_3

    .line 1704
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A:Z

    if-eqz v0, :cond_1

    .line 1708
    iput-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A:Z

    .line 1732
    :cond_0
    :goto_0
    return v3

    .line 1710
    :cond_1
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B:Z

    if-eqz v0, :cond_2

    .line 1713
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 1714
    iput-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B:Z

    goto :goto_0

    .line 1718
    :cond_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bc()V

    .line 1719
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B:Z

    goto :goto_0

    .line 1724
    :cond_3
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bc()V

    .line 1725
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z:Z

    .line 1726
    iput-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A:Z

    .line 1727
    iput-boolean v3, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B:Z

    goto :goto_0

    .line 1729
    :cond_4
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1408
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1409
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g(Landroid/content/Intent;)V

    .line 1413
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f(Landroid/content/Intent;)V

    .line 1414
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Landroid/content/Intent;)V

    .line 1415
    invoke-static {p1}, Lcom/mgeek/android/util/u;->a(Landroid/content/Intent;)V

    .line 1417
    :try_start_0
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    if-nez v0, :cond_2

    .line 1423
    const-string v0, "TabControl is null, ignore onNewIntent"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1426
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1429
    if-nez v0, :cond_3

    .line 1431
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1432
    if-eqz v0, :cond_0

    .line 1436
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    :cond_3
    move-object v1, v0

    .line 1438
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1439
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 1440
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x100000

    and-int/2addr v0, v5

    if-nez v0, :cond_0

    .line 1446
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 1452
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 1453
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-gt v0, v6, :cond_4

    .line 1455
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 1457
    :cond_4
    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 1459
    :cond_5
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1461
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.SEARCH"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v0, :cond_9

    .line 1473
    :cond_6
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Intent;Landroid/content/ContentResolver;)Lcom/dolphin/browser/util/al;

    move-result-object v6

    .line 1476
    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v0

    .line 1477
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v7

    const-string v8, "desktop_shortcut"

    invoke-virtual {v7, v0, v8}, Lcom/dolphin/browser/search/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    invoke-virtual {v6, v0}, Lcom/dolphin/browser/util/al;->a(Ljava/lang/String;)V

    .line 1484
    const-string v0, "com.android.browser.post_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 1486
    invoke-virtual {v6, v7}, Lcom/dolphin/browser/util/al;->a([B)V

    .line 1488
    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1489
    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v0

    .line 1490
    invoke-static {}, Lcom/dolphin/browser/f/b/d;->a()Lcom/dolphin/browser/f/b/d;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/dolphin/browser/f/b/d;->a(Ljava/lang/String;)V

    .line 1491
    iget-object v8, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    const-string v9, "eat_url"

    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v1, v0, v9}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    :cond_7
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "javascript:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1501
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, v6, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    goto/16 :goto_0

    .line 1504
    :cond_8
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/high16 v8, 0x400000

    and-int/2addr v5, v8

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1512
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, v6, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;Z)Lcom/dolphin/browser/core/ITab;

    .line 1535
    :cond_9
    :goto_1
    const-string v0, "com.dolphin.browser.action.CHILD_ACTIVITY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1536
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Landroid/content/Intent;)V

    .line 1538
    :cond_a
    const-string v0, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "android.intent.action.ASSIST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1540
    :cond_b
    invoke-direct {p0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h(Z)V

    .line 1542
    :cond_c
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/dolphin/browser/update/f;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 1515
    :cond_d
    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->c()I

    move-result v0

    .line 1516
    const/4 v5, 0x2

    if-eq v5, v0, :cond_f

    if-ne v3, v0, :cond_e

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string v0, "new_tab"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move v0, v3

    .line 1520
    :goto_2
    if-eqz v0, :cond_12

    .line 1521
    if-nez v7, :cond_11

    .line 1522
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v6}, Lcom/dolphin/browser/util/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;Z)Lcom/dolphin/browser/core/ITab;

    goto :goto_1

    :cond_10
    move v0, v2

    .line 1516
    goto :goto_2

    .line 1524
    :cond_11
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, v6, v2, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;ZZ)Lcom/dolphin/browser/core/ITab;

    goto :goto_1

    .line 1531
    :cond_12
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, v1, v6, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/util/al;Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2387
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2388
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 2452
    :cond_0
    :goto_0
    return v0

    .line 2390
    :cond_1
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a:Z

    if-eqz v1, :cond_0

    .line 2395
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V:Z

    if-eqz v1, :cond_2

    .line 2400
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->V:Z

    .line 2402
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2404
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080447

    if-ne v1, v2, :cond_4

    .line 2405
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->P()V

    .line 2451
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a:Z

    .line 2452
    const/4 v0, 0x1

    goto :goto_0

    .line 2406
    :cond_4
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080411

    if-ne v1, v2, :cond_5

    .line 2407
    const-string v1, "address bar"

    const-string v2, "longpress"

    const-string v3, "addbookmark"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddBookmark2()Z

    goto :goto_1

    .line 2411
    :cond_5
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080410

    if-ne v1, v2, :cond_6

    .line 2412
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u()Z

    goto :goto_1

    .line 2413
    :cond_6
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080418

    if-ne v1, v2, :cond_7

    .line 2414
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSettings2()Z

    goto :goto_1

    .line 2415
    :cond_7
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080412

    if-ne v1, v2, :cond_8

    .line 2416
    const-string v1, "address bar"

    const-string v2, "longpress"

    const-string v3, "findonpage"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionFind2()Z

    goto :goto_1

    .line 2420
    :cond_8
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080413

    if-ne v1, v2, :cond_9

    .line 2421
    const-string v1, "address bar"

    const-string v2, "longpress"

    const-string v3, "selecttext"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSelectText2()Z

    goto :goto_1

    .line 2425
    :cond_9
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080414

    if-ne v1, v2, :cond_a

    .line 2426
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionShare2()Z

    goto :goto_1

    .line 2427
    :cond_a
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080415

    if-ne v1, v2, :cond_b

    .line 2428
    const-string v1, "address bar"

    const-string v2, "longpress"

    const-string v3, "savepage"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSavePage2()Z

    goto :goto_1

    .line 2432
    :cond_b
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080416

    if-ne v1, v2, :cond_c

    .line 2433
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionToggleCompact2()Z

    goto :goto_1

    .line 2434
    :cond_c
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080417

    if-ne v1, v2, :cond_d

    .line 2435
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionDownload2()Z

    goto/16 :goto_1

    .line 2436
    :cond_d
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080449

    if-ne v1, v2, :cond_e

    .line 2437
    const-string v1, "address bar"

    const-string v2, "longpress"

    const-string v3, "paste"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionPasteAndGo()Z

    goto/16 :goto_1

    .line 2440
    :cond_e
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08044a

    if-ne v1, v2, :cond_f

    .line 2441
    const-string v1, "address bar"

    const-string v2, "longpress"

    const-string v3, "creategestureforthispage"

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionGesture()Z

    goto/16 :goto_1

    .line 2445
    :cond_f
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-static {v1, p1}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2447
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z:Z

    .line 1739
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1753
    :goto_0
    return-void

    .line 1743
    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 1744
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1752
    :cond_1
    :goto_1
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->U:I

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->T:I

    goto :goto_0

    .line 1746
    :cond_2
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z:Z

    if-nez v0, :cond_1

    .line 1750
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->A()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1798
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPause()V

    .line 1799
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    if-eqz v0, :cond_1

    .line 1800
    const-string v0, "BrowserActivity"

    const-string v1, "BrowserActivity is already paused."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    .line 1804
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1814
    :cond_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p()V

    .line 1818
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/core/af;->a()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/INetworkPredictor;->save()V

    .line 1820
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->v()V

    .line 1821
    iput-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    .line 1823
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aF()V

    .line 1825
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    if-eqz v0, :cond_4

    .line 1826
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab:Lcom/dolphin/browser/util/ch;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ch;->a()V

    .line 1829
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Z)V

    .line 1831
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->U()V

    .line 1833
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w()V

    .line 1835
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->h()V

    .line 1836
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->disablePlatformNotifications()V

    .line 1839
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/eu;->d()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f08040f

    const/4 v2, 0x1

    .line 2470
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a:Z

    .line 2474
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2475
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    packed-switch v0, :pswitch_data_0

    .line 2483
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->R:I

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    if-eq v0, v1, :cond_0

    .line 2484
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2485
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2494
    :cond_0
    :goto_0
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->R:I

    .line 2495
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/mgeek/TunnyBrowser/eu;->a(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)Z

    .line 2496
    return v2

    .line 2477
    :pswitch_0
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->R:I

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->S:I

    if-eq v0, v1, :cond_0

    .line 2478
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2479
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 2475
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1622
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onResume()V

    .line 1623
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    if-nez v0, :cond_1

    .line 1624
    const-string v0, "BrowserActivity"

    const-string v1, "BrowserActivity is already resumed."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    .line 1628
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aD()V

    .line 1633
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1780
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    :goto_0
    return-void

    .line 1783
    :cond_0
    const-string v0, "BrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onSaveInstanceState: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Landroid/os/Bundle;)V

    .line 1792
    invoke-static {}, Lcom/dolphin/browser/j/b/g;->a()Lcom/dolphin/browser/j/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/j/b/g;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2255
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2256
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onSearchRequested()Z

    move-result v0

    .line 2263
    :goto_0
    return v0

    .line 2258
    :cond_0
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z:Z

    if-eqz v0, :cond_1

    .line 2259
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->closeOptionsMenu()V

    .line 2261
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->C()Ljava/lang/String;

    move-result-object v0

    .line 2262
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v2

    .line 2263
    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1052
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStart()V

    .line 1053
    invoke-static {}, Lcom/dolphin/browser/core/ab;->a()Lcom/dolphin/browser/core/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/ab;->b(Landroid/content/Context;)V

    .line 1054
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1059
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onStop()V

    .line 1060
    invoke-static {}, Lcom/dolphin/browser/core/ab;->a()Lcom/dolphin/browser/core/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/ab;->c(Landroid/content/Context;)V

    .line 1061
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->G()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 5319
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onWindowFocusChanged(Z)V

    .line 5322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5323
    if-eqz p1, :cond_1

    .line 5324
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5327
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 5328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 5337
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 5338
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aC()V

    .line 5342
    :goto_1
    return-void

    .line 5331
    :cond_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5332
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    goto :goto_0

    .line 5340
    :cond_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aB()V

    goto :goto_1
.end method

.method public openTabAndShow(Lcom/dolphin/browser/util/al;ZLjava/lang/String;)Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7457
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/util/al;ZLjava/lang/String;)Lmobi/mgeek/TunnyBrowser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5164
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->d(Ljava/lang/String;)V

    .line 5165
    return-void
.end method

.method public openUrl(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5151
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;Z)V

    .line 5152
    return-void
.end method

.method p()V
    .locals 1

    .prologue
    .line 3301
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->P:Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;->onPauseCustomView()V

    .line 3309
    :cond_0
    :goto_0
    return-void

    .line 3307
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o()V

    goto :goto_0
.end method

.method q()V
    .locals 1

    .prologue
    .line 3313
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3316
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->P:Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;->onResumeCustomView()V

    .line 3319
    :cond_0
    return-void
.end method

.method r()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3323
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 3324
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W:Landroid/graphics/Bitmap;

    .line 3327
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method s()Landroid/view/View;
    .locals 3

    .prologue
    .line 3332
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3333
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3335
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03011a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X:Landroid/view/View;

    .line 3338
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X:Landroid/view/View;

    return-object v0
.end method

.method public setFullScreen(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5798
    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5799
    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZ)V

    .line 5806
    :goto_0
    return-void

    .line 5800
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5802
    invoke-virtual {p0, v1, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZ)V

    goto :goto_0

    .line 5804
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setFullScreen(ZZ)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5094
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZZ)V

    .line 5095
    return-void
.end method

.method public setFullScreen(ZZZ)V
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x1

    .line 5102
    const-string v2, "BrowserActivity"

    const-string v3, "setFullScreen %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5103
    if-eqz p1, :cond_1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getKeepStatusBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5104
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 5108
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/k/k;->a(Z)V

    .line 5112
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0, p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setFullScreen(Landroid/content/Context;ZZ)V

    .line 5113
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->m(Z)V

    .line 5114
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/k/c;->a(Z)V

    .line 5118
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->l(Z)V

    .line 5119
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 5120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5122
    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08011e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5123
    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080120

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5124
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5125
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 5126
    if-eqz p3, :cond_0

    .line 5127
    if-eqz p1, :cond_3

    .line 5128
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f5

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 5133
    :cond_0
    :goto_1
    return-void

    .line 5106
    :cond_1
    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 5130
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f7

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3388
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3389
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/ITab;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    return-void
.end method

.method public setTextToClipboard(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4665
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 4666
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 4667
    return-void
.end method

.method public showLeftPageView(Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 5021
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0, p1}, Lmobi/mgeek/TunnyBrowser/fl;->b(Z)V

    .line 5022
    return-void
.end method

.method public showMiddlePageView(Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 5009
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0, p1}, Lmobi/mgeek/TunnyBrowser/fl;->a_(Z)V

    .line 5010
    return-void
.end method

.method public showRightPageView(Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 5033
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->W()Lmobi/mgeek/TunnyBrowser/fl;

    move-result-object v0

    invoke-interface {v0, p1}, Lmobi/mgeek/TunnyBrowser/fl;->c(Z)V

    .line 5034
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 5657
    :try_start_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5658
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 5682
    :goto_0
    return-void

    .line 5661
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5662
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->isMeizu()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5664
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5665
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/t/l;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5675
    :catch_0
    move-exception v0

    .line 5676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5678
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03a9

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5668
    :cond_1
    :try_start_1
    const-string v0, "android.speech.action.WEB_SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5670
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ay()V

    .line 5671
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aM()V

    goto :goto_0

    .line 5674
    :cond_2
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 1276
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 1299
    :goto_0
    return-void

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/dolphin/browser/core/ActivityTab;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/dolphin/browser/core/ActivityTab;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/ActivityTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 1283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 1285
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1291
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1293
    :cond_1
    const-string v1, "com.dolphin.browser.action.SHOW_TABS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1294
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->bc()V

    .line 1298
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/16 v1, 0x400

    .line 2280
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2281
    invoke-super {p0, p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2312
    :goto_0
    return-void

    .line 2285
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 2286
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    if-nez v0, :cond_1

    .line 2287
    new-instance v0, Lcom/dolphin/browser/search/ui/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    .line 2288
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->D:Lcom/dolphin/browser/search/ui/x;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/x;)V

    .line 2289
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/af;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/af;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2298
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ag;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ag;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/c;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2307
    :cond_1
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2309
    :goto_1
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/c;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2311
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/ui/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2307
    goto :goto_1
.end method

.method public stopLoading()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7443
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->g()V

    .line 7444
    return-void
.end method

.method public switchToTab(I)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 2336
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2337
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->switchToTab(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    return v0
.end method

.method public switchToTab(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2369
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 2370
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2371
    :cond_0
    const/4 v0, 0x0

    .line 2374
    :goto_0
    return v0

    .line 2373
    :cond_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aX()V

    .line 2374
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->L:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    goto :goto_0
.end method

.method public switchToTab(Lmobi/mgeek/TunnyBrowser/Tab;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2353
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/Tab;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->switchToTab(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 3517
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3763
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 3764
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K:Lcom/dolphin/browser/t/l;

    invoke-virtual {v1}, Lcom/dolphin/browser/t/l;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3765
    invoke-interface {v0, v3}, Lcom/dolphin/browser/core/ITab;->setStoppedLoadingByUser(Z)V

    .line 3766
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->stopLoading()V

    .line 3767
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ba()V

    .line 3778
    :cond_0
    :goto_0
    return v3

    .line 3769
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3771
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v1

    const-string v2, "forward_back_refresh"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 3774
    :cond_2
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3775
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->reload()V

    goto :goto_0
.end method

.method public v()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3783
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 3784
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v2

    .line 3785
    if-nez v2, :cond_0

    .line 3790
    :goto_0
    return v0

    .line 3788
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;Z)V

    .line 3790
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public viewDownloads(Landroid/net/Uri;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3499
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3501
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3502
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3503
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 4738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Z)V

    .line 4740
    return-void
.end method

.method public x()Lcom/dolphin/browser/tabbar/i;
    .locals 1

    .prologue
    .line 4749
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ac:Lcom/dolphin/browser/tabbar/i;

    return-object v0
.end method

.method public y()V
    .locals 3

    .prologue
    .line 5038
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5039
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->M:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5040
    return-void
.end method

.method public z()Landroid/view/GestureDetector;
    .locals 3

    .prologue
    .line 5381
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ad:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 5382
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/bn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmobi/mgeek/TunnyBrowser/bn;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/x;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ad:Landroid/view/GestureDetector;

    .line 5384
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ad:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 5386
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ad:Landroid/view/GestureDetector;

    return-object v0
.end method
