.class Ldolphin/webkit/cv;
.super Ljava/lang/Object;
.source "HTML5Audio.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/HTML5Audio;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;

.field final synthetic c:Ldolphin/webkit/cu;


# direct methods
.method constructor <init>(Ldolphin/webkit/cu;Ldolphin/webkit/HTML5Audio;Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Ldolphin/webkit/cv;->c:Ldolphin/webkit/cu;

    iput-object p2, p0, Ldolphin/webkit/cv;->a:Ldolphin/webkit/HTML5Audio;

    iput-object p3, p0, Ldolphin/webkit/cv;->b:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Ldolphin/webkit/cv;->c:Ldolphin/webkit/cu;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/cv;->c:Ldolphin/webkit/cu;

    iget-object v2, p0, Ldolphin/webkit/cv;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-static {v0, v2}, Ldolphin/webkit/cu;->a(Ldolphin/webkit/cu;Z)Z

    .line 108
    iget-object v0, p0, Ldolphin/webkit/cv;->c:Ldolphin/webkit/cu;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ldolphin/webkit/cu;->b(Ldolphin/webkit/cu;Z)Z

    .line 109
    iget-object v0, p0, Ldolphin/webkit/cv;->c:Ldolphin/webkit/cu;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
