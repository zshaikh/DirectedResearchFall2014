.class Ldolphin/webkit/p;
.super Ldolphin/webkit/WebChromeClient;
.source "BackgroundLoader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/j;


# direct methods
.method private constructor <init>(Ldolphin/webkit/j;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Ldolphin/webkit/p;->a:Ldolphin/webkit/j;

    invoke-direct {p0}, Ldolphin/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Ldolphin/webkit/p;-><init>(Ldolphin/webkit/j;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ldolphin/webkit/p;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/p;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/p;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Ldolphin/webkit/p;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V

    .line 197
    :cond_0
    return-void
.end method
