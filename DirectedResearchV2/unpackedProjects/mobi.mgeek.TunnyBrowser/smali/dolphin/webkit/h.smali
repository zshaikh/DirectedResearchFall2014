.class Ldolphin/webkit/h;
.super Ljava/util/TimerTask;
.source "BackForwardAnimationController.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/g;


# direct methods
.method constructor <init>(Ldolphin/webkit/g;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Ldolphin/webkit/h;->a:Ldolphin/webkit/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ldolphin/webkit/h;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->a(Ldolphin/webkit/g;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->postInvalidate()V

    .line 170
    iget-object v0, p0, Ldolphin/webkit/h;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->b(Ldolphin/webkit/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/h;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->c(Ldolphin/webkit/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/h;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->d(Ldolphin/webkit/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/h;->a:Ldolphin/webkit/g;

    invoke-static {v0}, Ldolphin/webkit/g;->e(Ldolphin/webkit/g;)V

    .line 173
    :cond_1
    return-void
.end method
