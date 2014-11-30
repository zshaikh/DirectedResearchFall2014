.class Lcom/dolphin/browser/launcher/aa;
.super Lcom/g/a/c;
.source "DragLayer.java"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/dolphin/browser/launcher/aa;->c:Lcom/dolphin/browser/launcher/DragLayer;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/aa;->a:Ljava/lang/Runnable;

    iput p3, p0, Lcom/dolphin/browser/launcher/aa;->b:I

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/g/a/a;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/launcher/aa;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/launcher/aa;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 434
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/launcher/aa;->b:I

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/aa;->c:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/DragLayer;->h()V

    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/aa;->c:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->d(Lcom/dolphin/browser/launcher/DragLayer;)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
