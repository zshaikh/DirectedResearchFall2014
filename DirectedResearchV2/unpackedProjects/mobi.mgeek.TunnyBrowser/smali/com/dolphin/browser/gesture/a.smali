.class public Lcom/dolphin/browser/gesture/a;
.super Ljava/lang/Object;
.source "ActionManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lmobi/mgeek/TunnyBrowser/BrowserActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/dolphin/browser/gesture/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dolphin/browser/gesture/a/d;

.field private d:Lcom/dolphin/browser/gesture/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sput-object v0, Lcom/dolphin/browser/gesture/a;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/dolphin/browser/gesture/a/d;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0011

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/a;->c:Lcom/dolphin/browser/gesture/a/d;

    .line 94
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/a;->a(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;
    .locals 3

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 187
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/gesture/a;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 188
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 189
    new-instance v0, Lcom/dolphin/browser/gesture/a/a;

    invoke-direct {v0, p0, p1, v2}, Lcom/dolphin/browser/gesture/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v0, "Exception when newAction in ActionManager."

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/gesture/a;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/dolphin/browser/gesture/a;->e:Lcom/dolphin/browser/gesture/a;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/dolphin/browser/gesture/a;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/gesture/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/gesture/a;->e:Lcom/dolphin/browser/gesture/a;

    .line 88
    :cond_0
    sget-object v0, Lcom/dolphin/browser/gesture/a;->e:Lcom/dolphin/browser/gesture/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/dolphin/browser/gesture/a/d;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v2, "add bookmark"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionAddBookmark2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "add speeddial"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionAddSpeeddial"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "back"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionBack"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "forward"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionForward"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "goto bottom"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGotoBottom2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "goto top"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGotoTop2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "share"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionShare2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "find on page"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionFind2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "select text"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSelectText2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "save page"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02df

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSavePage2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "refresh"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionStopOrReload2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "stop"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionStopOrReload2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "zoom in"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionZoomIn2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "zoom out"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionZoomOut2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "enable or disable swipe action"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionEnableOrDisableSwipe"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "go"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGo2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "paste"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionPaste"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "paste and go"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionPasteAndGo"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "exit"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionExit"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/dolphin/browser/gesture/a/d;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v2, "new tab"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionNewTab2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "close all tab"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionCloseAllTab2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "close other tab"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionCloseOtherTab2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "close tab"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionCloseCurrentTab2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "switch to left tab"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSwitchToLeftTab"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "switch to right tab"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSwitchToRightTab"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/dolphin/browser/gesture/a/d;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v2, "history"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGotoHistoryPage2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "most visit"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGotoMostVisitPage2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "add ons"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionAddOns2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "download"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionDownload2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "setting"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSettings2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "windows"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionWindows2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "show left bar"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGotoBookmarkPage2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "show right bar"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionShowRightBar"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "homepage speeddial"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionHomepageSpeeddial"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "home page"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionLoadHomepage2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/dolphin/browser/gesture/a/d;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v2, "desktop toggle"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionDesktopToggle"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "load images"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionLoadImages"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "toggel fullscreen"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e064b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionToggleFullscreen2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "switch theme"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSwitchTheme"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "lock or unlock orientation"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionLockOrUnlockOrientation"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "compact or restore page"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02bd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionToggleCompact2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "subscribe rss"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSubscribeRSS2"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "send feedback"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionSendFeedback"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "create gesture for current page"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionGesture"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "show zoom button"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionShowZoomButton"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/dolphin/browser/gesture/a/d;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/gesture/a/d;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v2, "backup data"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionBackupData"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "restore data"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionRestoreData"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "inprivate"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionInprivate"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "clear cache"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionClearCache"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "clear history"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionClearHistory"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "enable javascript"

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionEnableJavascript"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/a;->a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "help"

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "actionGestureHelp"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/a;->d:Lcom/dolphin/browser/gesture/a/a;

    .line 172
    return-void
.end method

.method private a(Lcom/dolphin/browser/gesture/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    invoke-static {p2, p3, p4}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/gesture/a/d;->a(Lcom/dolphin/browser/gesture/a/a;)V

    .line 181
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    const-string v1, "help"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a;->d:Lcom/dolphin/browser/gesture/a/a;

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/gesture/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a;->c:Lcom/dolphin/browser/gesture/a/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/a/d;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/dolphin/browser/gesture/a/e;

    sget v1, Lcom/dolphin/browser/gesture/a/e;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/gesture/a/e;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/dolphin/browser/gesture/a;->c:Lcom/dolphin/browser/gesture/a/d;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/a/d;->a(Lcom/dolphin/browser/gesture/a/a;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/d;

    .line 215
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/a/d;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/dolphin/browser/gesture/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    return-object v0
.end method

.method public c()Lcom/dolphin/browser/gesture/a/a;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/gesture/a;->d:Lcom/dolphin/browser/gesture/a/a;

    return-object v0
.end method
