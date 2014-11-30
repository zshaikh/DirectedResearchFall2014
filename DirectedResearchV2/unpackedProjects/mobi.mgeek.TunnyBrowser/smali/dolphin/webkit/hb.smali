.class Ldolphin/webkit/hb;
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
    .line 276
    iput-object p1, p0, Ldolphin/webkit/hb;->a:Ldolphin/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Ldolphin/webkit/hb;->a:Ldolphin/webkit/ViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;Z)Z

    .line 279
    iget-object v0, p0, Ldolphin/webkit/hb;->a:Ldolphin/webkit/ViewManager;

    invoke-static {v0}, Ldolphin/webkit/ViewManager;->b(Ldolphin/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ViewManager$ChildView;

    .line 280
    iget-object v0, v0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method
