.class Ldolphin/webkit/ha;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/ViewManager;


# direct methods
.method constructor <init>(Ldolphin/webkit/ViewManager;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Ldolphin/webkit/ha;->a:Ldolphin/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Ldolphin/webkit/ha;->a:Ldolphin/webkit/ViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;Z)Z

    .line 271
    return-void
.end method
