.class Lcom/dolphin/browser/gesture/ui/j;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/GestureOverlayView;

.field final synthetic b:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Lcom/dolphin/browser/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/j;->b:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/j;->a:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/j;->a:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/j;->b:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->c(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 339
    return-void
.end method
