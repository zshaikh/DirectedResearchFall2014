.class Lcom/dolphin/browser/gesture/ui/af;
.super Ljava/lang/Object;
.source "GesturePannelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/ae;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/ae;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/af;->a:Lcom/dolphin/browser/gesture/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/af;->a:Lcom/dolphin/browser/gesture/ui/ae;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/af;->a:Lcom/dolphin/browser/gesture/ui/ae;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/aj;->a()V

    .line 412
    return-void
.end method
