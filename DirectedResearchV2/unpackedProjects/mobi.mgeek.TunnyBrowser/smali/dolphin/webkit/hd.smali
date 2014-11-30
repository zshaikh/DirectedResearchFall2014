.class Ldolphin/webkit/hd;
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
    .line 93
    iput-object p1, p0, Ldolphin/webkit/hd;->a:Ldolphin/webkit/ViewManager$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ldolphin/webkit/hd;->a:Ldolphin/webkit/ViewManager$ChildView;

    invoke-static {v0}, Ldolphin/webkit/ViewManager$ChildView;->b(Ldolphin/webkit/ViewManager$ChildView;)V

    .line 96
    return-void
.end method
