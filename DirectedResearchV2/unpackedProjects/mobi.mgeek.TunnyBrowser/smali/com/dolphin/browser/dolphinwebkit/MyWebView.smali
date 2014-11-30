.class public abstract Lcom/dolphin/browser/dolphinwebkit/MyWebView;
.super Ldolphin/webkit/WebView;
.source "MyWebView.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView;


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final FEARUTES:I = -0x1

.field private static final INITIAL_PROGRESS:I = 0xa

.field protected static final LOGTAG:Ljava/lang/String; = "MyWebView"

.field static final TAG:Ljava/lang/String; = "MyWebView"

.field private static sTimerPaused:Z


# instance fields
.field private getUserPasswordFieldMethod:Ljava/lang/reflect/Method;

.field private hasPasswordFieldMethod:Ljava/lang/reflect/Method;

.field private mActionDetector:Lcom/dolphin/browser/ui/ActionDetector;

.field private mBrowserframe:Ljava/lang/Object;

.field private mCachedUrl:Ljava/lang/String;

.field mClipboardManager:Landroid/text/ClipboardManager;

.field private mDatabase:Lcom/dolphin/browser/l/l;

.field private mDestroyed:Z

.field private mLastUrl:Ljava/lang/String;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnScrollListener:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

.field private mSelectTextListener:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

.field private mTouchSlopSquare:I

.field private mWebSettings:Lcom/dolphin/browser/core/IWebSettings;

.field private mWebViewCallback:Lcom/dolphin/browser/core/IWebViewCallback;

.field private mWebviewcore:Ljava/lang/Object;

.field private setUserNamePasswordMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->sTimerPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDestroyed:Z

    .line 672
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    .line 673
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 674
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 676
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mLastUrl:Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->initWebView(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDestroyed:Z

    .line 672
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    .line 673
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 674
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 676
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mLastUrl:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->initWebView(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Z)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDestroyed:Z

    .line 672
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    .line 673
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 674
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 676
    iput-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mLastUrl:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->initWebView(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->onRetrievedUsernamePasswordField(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    return-void
.end method

.method private getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 744
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 745
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 746
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 750
    :goto_0
    return-object v0

    .line 747
    :catch_0
    move-exception v1

    .line 748
    const-string v2, "MyWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsernamePassword()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 726
    const/4 v1, 0x0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 729
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    const-string v2, "mBrowserFrame"

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getUsernamePassword"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUserPasswordFieldMethod:Ljava/lang/reflect/Method;

    .line 733
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUserPasswordFieldMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 734
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUserPasswordFieldMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-object v0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    const-string v2, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private hasPasswordField()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 708
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 711
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    const-string v2, "mBrowserFrame"

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "hasPasswordField"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->hasPasswordFieldMethod:Ljava/lang/reflect/Method;

    .line 715
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->hasPasswordFieldMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 716
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->hasPasswordFieldMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-object v0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    const-string v2, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private onRetrievedUsernamePasswordField(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V
    .locals 2

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-direct {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->hasPasswordField()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 659
    if-eqz p2, :cond_0

    .line 660
    invoke-virtual {p2, p1, v1}, Lcom/dolphin/browser/dolphinwebkit/j;->a(Ldolphin/webkit/WebView;Z)V

    .line 661
    invoke-virtual {p2, p1, v0}, Lcom/dolphin/browser/dolphinwebkit/j;->a(Ldolphin/webkit/WebView;[Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method private setUserNamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 691
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 693
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 694
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 696
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 697
    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUsernamePassword"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setUserNamePasswordMethod:Ljava/lang/reflect/Method;

    .line 698
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setUserNamePasswordMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 699
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setUserNamePasswordMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    const-string v1, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelSelectText()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->selectionDone()V

    .line 143
    return-void
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 788
    invoke-super {p0, p1, p2, p3}, Ldolphin/webkit/WebView;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 790
    :cond_0
    return-object v0
.end method

.method public copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;

    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->copyBackForwardList()Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;-><init>(Ldolphin/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getIViewImpl()Ldolphin/webkit/WebView$IViewImpl;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebView$IViewImpl;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 167
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 170
    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getIViewImpl()Ldolphin/webkit/WebView$IViewImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebView$IViewImpl;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 174
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->view()Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->view()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 180
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 184
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 187
    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 192
    invoke-super {p0}, Ldolphin/webkit/WebView;->destroy()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDestroyed:Z

    .line 195
    :cond_0
    return-void
.end method

.method public doCopySelection()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->copySelection()Z

    move-result v0

    return v0
.end method

.method public doSelectTextDone()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mSelectTextListener:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mSelectTextListener:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/core/IWebView$SelectTextListener;->onSelectTextDone(Lcom/dolphin/browser/core/IWebView;)V

    .line 156
    :cond_0
    return-void
.end method

.method public fillUsernamePasswordIfNeeded()V
    .locals 5

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->hasPasswordField()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    iget-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    if-nez v2, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    if-eqz v2, :cond_2

    .line 602
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v2

    .line 604
    invoke-virtual {v2}, Lcom/dolphin/browser/l/e;->h()V

    .line 605
    iget-object v3, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDatabase:Lcom/dolphin/browser/l/l;

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/l/l;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 606
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    iget-object v4, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebViewCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    if-eqz v4, :cond_1

    .line 612
    invoke-virtual {v2, p0}, Lcom/dolphin/browser/l/e;->a(Ljava/lang/Object;)V

    .line 613
    iget-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebViewCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-interface {v2, p0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onRequestUsernamePassword(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 617
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/dolphinwebkit/i;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 618
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    aget-object v0, v3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object v0, v3, v0

    if-eqz v0, :cond_2

    .line 619
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setUserNamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_2
    :goto_0
    return-void

    .line 623
    :cond_3
    if-eqz v3, :cond_2

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 624
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v3, v1

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    const-string v1, "MyWebView"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fillUsernamePasswordIfNeededAsync()V
    .locals 5

    .prologue
    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 563
    new-instance v2, Lcom/dolphin/browser/dolphinwebkit/f;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/dolphinwebkit/f;-><init>(Lcom/dolphin/browser/dolphinwebkit/MyWebView;)V

    .line 569
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    :cond_2
    :goto_0
    return-void

    .line 575
    :cond_3
    const/4 v1, 0x0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getHostHandler"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 578
    iget-object v3, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_1
    if-eqz v0, :cond_4

    .line 583
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    const-string v3, "MyWebView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 585
    :cond_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->findAll(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/dolphin/browser/core/IWebView$FindResultListener;->onReceiveFindResult(II)V

    .line 554
    return-void
.end method

.method protected getBrowserSettings()Lcom/dolphin/browser/core/IBrowserSettings;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getHitTestResult()Ldolphin/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/HitTestResultWrapper;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/dolphinwebkit/HitTestResultWrapper;-><init>(Ldolphin/webkit/WebView$HitTestResult;)V

    .line 218
    :cond_0
    return-object v0
.end method

.method public getLastUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mLastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mCachedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 484
    const/16 v0, 0xa

    .line 486
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebView;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    .line 472
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mCachedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mCachedUrl:Ljava/lang/String;

    .line 477
    :goto_0
    return-object v0

    .line 475
    :cond_0
    invoke-super {p0}, Ldolphin/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsernamePasswordIfNeeded()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 667
    invoke-direct {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->hasPasswordField()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v0

    .line 670
    :cond_0
    return-object v0
.end method

.method public getUsernamePasswordIfNeededAsync(Lcom/dolphin/browser/dolphinwebkit/j;)V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 636
    :cond_0
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebviewcore:Ljava/lang/Object;

    const-string v1, "mBrowserFrame"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getPrivate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mBrowserframe:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/dolphinwebkit/g;

    invoke-direct {v1, p0, p0, p1}, Lcom/dolphin/browser/dolphinwebkit/g;-><init>(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    :cond_2
    :goto_0
    return-void

    .line 651
    :cond_3
    invoke-direct {p0, p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->onRetrievedUsernamePasswordField(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    goto :goto_0
.end method

.method public getView(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebSettings:Lcom/dolphin/browser/core/IWebSettings;

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getSettings()Ldolphin/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->getWebSettings(Ljava/lang/Object;)Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebSettings:Lcom/dolphin/browser/core/IWebSettings;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebSettings:Lcom/dolphin/browser/core/IWebSettings;

    return-object v0
.end method

.method public getWebView()Ldolphin/webkit/WebView;
    .locals 0

    .prologue
    .line 423
    return-object p0
.end method

.method public bridge synthetic getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebView()Ldolphin/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebViewCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method

.method getWebViewCore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->o()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getWebViewCore()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 759
    :cond_0
    const-string v1, "mWebViewCore"

    .line 761
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebViewCore"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 766
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 767
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v1

    .line 769
    const-string v2, "MyWebView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasFeature(I)Z
    .locals 1

    .prologue
    .line 236
    and-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideTitleBar()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getVisibleTitleHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getTitleHeight()I

    move-result v0

    .line 243
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->scrollTo(II)V

    .line 245
    :cond_0
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 1

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getBrowserSettings()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->showZoomButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->dismissZoomControl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected initWebView(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/dolphin/browser/dolphinwebkit/a;->a()Ldolphin/util/Tracker$Delegate;

    .line 267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 269
    mul-int/2addr v0, v0

    iput v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mTouchSlopSquare:I

    .line 270
    new-instance v0, Lcom/dolphin/browser/ui/ActionDetector;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/ActionDetector;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mActionDetector:Lcom/dolphin/browser/ui/ActionDetector;

    .line 272
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget v0, Lcom/dolphin/browser/util/bu;->a:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setBackgroundColor(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtRightEdge()Z
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->computeHorizontalScrollRange()I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getViewWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mDestroyed:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    const-string v0, "dolphin://ncrash"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->nativeDrawGL(IIILandroid/graphics/Rect;)Z

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->isDolphinGameUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->getOriginUrlOfGameUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 435
    :cond_2
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/dolphin/browser/provider/FileContentProvider;->BASE_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 440
    :cond_3
    const-string v0, "MyWebView"

    const-string v1, "dolphinwebkit MyWebView.loadUrl(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 442
    invoke-super {p0, p1}, Ldolphin/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 443
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->postPageStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyFindDialogDismissed2()V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->notifyFindDialogDismissed()V

    .line 510
    return-void
.end method

.method notifyUrlUpdated()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mCachedUrl:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 300
    instance-of v0, p1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 301
    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebView;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 312
    instance-of v0, p1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 313
    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 315
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    invoke-super {p0, p1}, Ldolphin/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v1, "MyWebView"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebView;->onScrollChanged(IIII)V

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mActionDetector:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-virtual {v0, p2, p4}, Lcom/dolphin/browser/ui/ActionDetector;->onScrollChanged(II)V

    .line 546
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mOnScrollListener:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mOnScrollListener:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    invoke-interface {v0, p2, p4}, Lcom/dolphin/browser/core/IWebView$OnScrollListener;->onScrollChanged(II)V

    .line 549
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 530
    if-nez v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mActionDetector:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/ActionDetector;->onTouchDown()V

    .line 533
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mActionDetector:Lcom/dolphin/browser/ui/ActionDetector;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/ActionDetector;->onTouchUp()V

    .line 537
    :cond_1
    invoke-super {p0, p1}, Ldolphin/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 491
    sget-boolean v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->sTimerPaused:Z

    if-nez v0, :cond_0

    .line 492
    sput-boolean v2, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->sTimerPaused:Z

    .line 493
    const/4 v0, 0x0

    const-string v1, "pauseTimers, view=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 494
    invoke-super {p0}, Ldolphin/webkit/WebView;->pauseTimers()V

    .line 496
    :cond_0
    return-void
.end method

.method postPageStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mCachedUrl:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0, p1, p2}, Ldolphin/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 451
    invoke-static {p1}, Ldolphin/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->postPageStart(Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method public restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->restoreState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;-><init>(Ldolphin/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method public resumeTimers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    sget-boolean v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->sTimerPaused:Z

    if-eqz v0, :cond_0

    .line 501
    sput-boolean v3, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->sTimerPaused:Z

    .line 502
    const/4 v0, 0x0

    const-string v1, "resumeTimers, view=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 503
    invoke-super {p0}, Ldolphin/webkit/WebView;->resumeTimers()V

    .line 505
    :cond_0
    return-void
.end method

.method public saveLastUrl()V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mLastUrl:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->saveState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/dolphinwebkit/WebBackForwardListWrapper;-><init>(Ldolphin/webkit/WebBackForwardList;)V

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/e;

    invoke-direct {v0, p0, p3}, Lcom/dolphin/browser/dolphinwebkit/e;-><init>(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-super {p0, p1, p2, v0}, Ldolphin/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLdolphin/webkit/ValueCallback;)V

    .line 525
    return-void
.end method

.method public selectionDone()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Ldolphin/webkit/WebView;->selectionDone()V

    .line 148
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->doSelectTextDone()V

    .line 149
    return-void
.end method

.method public setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0, p1}, Ldolphin/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 348
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 349
    return-void
.end method

.method public setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mOnScrollListener:Lcom/dolphin/browser/core/IWebView$OnScrollListener;

    .line 364
    return-void
.end method

.method public setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/c;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/dolphinwebkit/c;-><init>(Lcom/dolphin/browser/core/IWebView$PictureListener;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setPictureListener(Ldolphin/webkit/WebView$PictureListener;)V

    .line 354
    return-void
.end method

.method public setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mSelectTextListener:Lcom/dolphin/browser/core/IWebView$SelectTextListener;

    .line 359
    return-void
.end method

.method public setTitleBar(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mTitleBar:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 377
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 378
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mTitleBar:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "MyWebView"

    const-string v2, "setTitleBar"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 385
    :cond_2
    if-eqz p1, :cond_1

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 387
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->view()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 389
    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 394
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mTitleBar:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 395
    :catch_1
    move-exception v0

    .line 396
    const-string v1, "MyWebView"

    const-string v2, "setTitleBar"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;-><init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setWebChromeClient(Ldolphin/webkit/WebChromeClient;)V

    .line 406
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebViewClient;-><init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setWebViewClient(Ldolphin/webkit/WebViewClient;)V

    .line 407
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/b;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/dolphinwebkit/b;-><init>(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->setDownloadListener(Ldolphin/webkit/DownloadListener;)V

    .line 408
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->mWebViewCallback:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 409
    return-void
.end method

.method public showTitleBar()V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getVisibleTitleHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->scrollTo(II)V

    .line 252
    :cond_0
    return-void
.end method

.method public startSelectText()V
    .locals 0

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->selectText()Z

    .line 414
    return-void
.end method
