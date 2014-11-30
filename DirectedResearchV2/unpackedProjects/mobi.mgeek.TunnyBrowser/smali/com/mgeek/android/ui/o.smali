.class Lcom/mgeek/android/ui/o;
.super Ljava/lang/Object;
.source "DraggableListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/DraggableListView;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/DraggableListView;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/mgeek/android/ui/o;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/mgeek/android/ui/o;->a:Lcom/mgeek/android/ui/DraggableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/DraggableListView;Lcom/mgeek/android/ui/t;)Lcom/mgeek/android/ui/t;

    .line 816
    iget-object v0, p0, Lcom/mgeek/android/ui/o;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v0}, Lcom/mgeek/android/ui/DraggableListView;->g(Lcom/mgeek/android/ui/DraggableListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgeek/android/ui/aa;->a(Landroid/content/Context;)Lcom/mgeek/android/ui/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/aa;->a(Z)V

    .line 817
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 808
    return-void
.end method
