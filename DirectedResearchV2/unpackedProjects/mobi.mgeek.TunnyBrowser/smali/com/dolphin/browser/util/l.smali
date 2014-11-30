.class Lcom/dolphin/browser/util/l;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/util/g;)V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/dolphin/browser/util/l;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/util/k;

    .line 714
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 717
    :pswitch_0
    iget-object v1, v0, Lcom/dolphin/browser/util/k;->a:Lcom/dolphin/browser/util/f;

    iget-object v0, v0, Lcom/dolphin/browser/util/k;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/f;->c(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 720
    :pswitch_1
    iget-object v1, v0, Lcom/dolphin/browser/util/k;->a:Lcom/dolphin/browser/util/f;

    iget-object v0, v0, Lcom/dolphin/browser/util/k;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/f;->a_([Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
