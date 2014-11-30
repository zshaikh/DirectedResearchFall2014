.class Lcom/dolphin/browser/launcher/x;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/v;

.field private b:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/v;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 632
    iput p1, p0, Lcom/dolphin/browser/launcher/x;->b:I

    .line 633
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    iget v0, p0, Lcom/dolphin/browser/launcher/x;->b:I

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/ae;->a()V

    .line 624
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/v;I)I

    .line 625
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/v;I)I

    .line 626
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/ae;->c()Z

    .line 627
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/DragLayer;->i()V

    .line 629
    :cond_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/x;->a:Lcom/dolphin/browser/launcher/v;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/ae;->b()V

    goto :goto_0
.end method
