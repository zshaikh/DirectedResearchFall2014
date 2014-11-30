.class Ldolphin/webkit/av;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Ldolphin/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldolphin/webkit/ValueCallback",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldolphin/webkit/ae;

.field private b:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ldolphin/webkit/ae;)V
    .locals 0

    .prologue
    .line 1892
    iput-object p1, p0, Ldolphin/webkit/av;->a:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ae;Ldolphin/webkit/af;)V
    .locals 0

    .prologue
    .line 1892
    invoke-direct {p0, p1}, Ldolphin/webkit/av;-><init>(Ldolphin/webkit/ae;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Ldolphin/webkit/av;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1895
    iput-object p1, p0, Ldolphin/webkit/av;->b:Landroid/net/Uri;

    .line 1896
    iget-object v1, p0, Ldolphin/webkit/av;->a:Ldolphin/webkit/ae;

    monitor-enter v1

    .line 1897
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/av;->a:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1898
    monitor-exit v1

    .line 1899
    return-void

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1892
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ldolphin/webkit/av;->a(Landroid/net/Uri;)V

    return-void
.end method
