.class Ldolphin/webkit/hc;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/ViewManager$ChildView;


# direct methods
.method constructor <init>(Ldolphin/webkit/ViewManager$ChildView;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Ldolphin/webkit/hc;->a:Ldolphin/webkit/ViewManager$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/webkit/hc;->a:Ldolphin/webkit/ViewManager$ChildView;

    iget-object v0, v0, Ldolphin/webkit/ViewManager$ChildView;->f:Ldolphin/webkit/ViewManager;

    iget-object v1, p0, Ldolphin/webkit/hc;->a:Ldolphin/webkit/ViewManager$ChildView;

    invoke-static {v0, v1}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager;Ldolphin/webkit/ViewManager$ChildView;)V

    .line 74
    iget-object v0, p0, Ldolphin/webkit/hc;->a:Ldolphin/webkit/ViewManager$ChildView;

    iget-object v0, v0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Ldolphin/webkit/hc;->a:Ldolphin/webkit/ViewManager$ChildView;

    invoke-static {v0}, Ldolphin/webkit/ViewManager$ChildView;->a(Ldolphin/webkit/ViewManager$ChildView;)V

    .line 77
    :cond_0
    return-void
.end method
