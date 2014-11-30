.class public Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->a:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->b:Ljava/util/List;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 26
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public postIfAttached(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->a:Landroid/os/Handler;

    new-instance v1, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;-><init>(Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method public postWhenAttached(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->a:Landroid/os/Handler;

    new-instance v1, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;

    invoke-direct {v1, p0, p1}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;-><init>(Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method
