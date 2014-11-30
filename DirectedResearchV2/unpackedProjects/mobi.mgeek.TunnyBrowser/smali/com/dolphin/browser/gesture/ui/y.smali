.class Lcom/dolphin/browser/gesture/ui/y;
.super Ljava/lang/Object;
.source "GesturePannelView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/y;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/y;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/y;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method
