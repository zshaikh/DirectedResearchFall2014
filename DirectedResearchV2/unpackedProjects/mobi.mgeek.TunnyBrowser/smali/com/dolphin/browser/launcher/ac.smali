.class Lcom/dolphin/browser/launcher/ac;
.super Lcom/g/a/c;
.source "DragLayer.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/DragLayer;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ac;->a:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ac;->a:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ac;->a:Lcom/dolphin/browser/launcher/DragLayer;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ac;->a:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/ag;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ac;->a:Lcom/dolphin/browser/launcher/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;Lcom/dolphin/browser/launcher/ag;)Lcom/dolphin/browser/launcher/ag;

    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ac;->a:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/DragLayer;->invalidate()V

    .line 484
    return-void
.end method
