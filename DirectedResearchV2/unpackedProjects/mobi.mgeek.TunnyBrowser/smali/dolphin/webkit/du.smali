.class Ldolphin/webkit/du;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/dt;


# direct methods
.method constructor <init>(Ldolphin/webkit/dt;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Ldolphin/webkit/du;->a:Ldolphin/webkit/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 740
    iget-object v0, p0, Ldolphin/webkit/du;->a:Ldolphin/webkit/dt;

    invoke-static {v0}, Ldolphin/webkit/dt;->a(Ldolphin/webkit/dt;)Ldolphin/net/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Ldolphin/webkit/du;->a:Ldolphin/webkit/dt;

    invoke-static {v0}, Ldolphin/webkit/dt;->a(Ldolphin/webkit/dt;)Ldolphin/net/c/c;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/du;->a:Ldolphin/webkit/dt;

    invoke-static {v1}, Ldolphin/webkit/dt;->b(Ldolphin/webkit/dt;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/du;->a:Ldolphin/webkit/dt;

    invoke-static {v2}, Ldolphin/webkit/dt;->c(Ldolphin/webkit/dt;)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/net/c/c;->a(Ljava/lang/String;ILjava/util/Map;)Z

    .line 744
    :cond_0
    return-void
.end method
