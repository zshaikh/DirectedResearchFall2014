.class Ldolphin/webkit/n;
.super Ljava/lang/Object;
.source "BackgroundLoader.java"

# interfaces
.implements Ldolphin/webkit/DownloadListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/j;


# direct methods
.method private constructor <init>(Ldolphin/webkit/j;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Ldolphin/webkit/n;->a:Ldolphin/webkit/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ldolphin/webkit/n;-><init>(Ldolphin/webkit/j;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 80
    iget-object v0, p0, Ldolphin/webkit/n;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/n;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/n;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->g()Ldolphin/webkit/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Ldolphin/webkit/n;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->g()Ldolphin/webkit/ae;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 83
    :cond_0
    return-void
.end method
