.class Lcom/dolphin/browser/gesture/ui/v;
.super Landroid/os/Handler;
.source "GestureListActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/v;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Lcom/dolphin/browser/gesture/ui/s;)V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/v;-><init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/GestureView;)V
    .locals 3

    .prologue
    .line 675
    if-eqz p1, :cond_0

    .line 676
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/gesture/ui/v;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/gesture/ui/v;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v0, "GestureListAcitvity"

    const-string v1, "the image of the next animation cann\'t be null"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 659
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 660
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/gesture/GestureView;

    .line 661
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 662
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/v;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b()Landroid/widget/ListView;

    move-result-object v2

    .line 663
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 664
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 665
    if-lt v1, v3, :cond_0

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/v;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->h(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 669
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureView;->a()V

    goto :goto_0
.end method
