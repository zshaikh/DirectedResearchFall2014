.class Ldolphin/webkit/gz;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/SurfaceView;

.field final synthetic b:Ldolphin/webkit/ViewManager;


# direct methods
.method constructor <init>(Ldolphin/webkit/ViewManager;Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Ldolphin/webkit/gz;->b:Ldolphin/webkit/ViewManager;

    iput-object p2, p0, Ldolphin/webkit/gz;->a:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Ldolphin/webkit/gz;->a:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 218
    return-void
.end method
