.class Ldolphin/webkit/cz;
.super Ljava/lang/Object;
.source "HTML5FakeVideoPlayer.java"

# interfaces
.implements Lcom/dolphin/player/bl;


# instance fields
.field final synthetic a:Ldolphin/webkit/cx;


# direct methods
.method constructor <init>(Ldolphin/webkit/cx;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ldolphin/webkit/cz;->a:Ldolphin/webkit/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ldolphin/webkit/cz;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/cz;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Ldolphin/webkit/cz;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    .line 82
    :cond_0
    return-void
.end method
