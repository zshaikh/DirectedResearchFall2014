.class Lcom/dolphin/browser/gesture/ui/ab;
.super Ljava/lang/Object;
.source "GesturePannelView.java"

# interfaces
.implements Lcom/dolphin/browser/gesture/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ab;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/GestureOverlayView;Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ab;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->c(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/ag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/gesture/ui/ag;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 164
    return-void
.end method
