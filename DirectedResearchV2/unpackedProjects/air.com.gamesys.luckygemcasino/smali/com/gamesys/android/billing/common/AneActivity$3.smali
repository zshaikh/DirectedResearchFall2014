.class Lcom/gamesys/android/billing/common/AneActivity$3;
.super Landroid/os/CountDownTimer;
.source "AneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/common/AneActivity;->setAutoProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/common/AneActivity;

.field private final synthetic val$maxForAttempt:I

.field private final synthetic val$pmax:I


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/common/AneActivity;JJII)V
    .locals 0
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iput p6, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->val$pmax:I

    iput p7, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->val$maxForAttempt:I

    .line 123
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    # getter for: Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I
    invoke-static {v0}, Lcom/gamesys/android/billing/common/AneActivity;->access$2(Lcom/gamesys/android/billing/common/AneActivity;)I

    move-result v1

    iget v2, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->val$pmax:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/AneActivity;->access$3(Lcom/gamesys/android/billing/common/AneActivity;I)V

    .line 135
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    # getter for: Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I
    invoke-static {v1}, Lcom/gamesys/android/billing/common/AneActivity;->access$2(Lcom/gamesys/android/billing/common/AneActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "remainigTime"    # J

    .prologue
    .line 127
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    # getter for: Lcom/gamesys/android/billing/common/AneActivity;->currentProgressValue:I
    invoke-static {v1}, Lcom/gamesys/android/billing/common/AneActivity;->access$2(Lcom/gamesys/android/billing/common/AneActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->val$pmax:I

    int-to-float v2, v2

    iget v3, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->val$maxForAttempt:I

    int-to-long v3, v3

    sub-long/2addr v3, p1

    long-to-float v3, v3

    iget v4, p0, Lcom/gamesys/android/billing/common/AneActivity$3;->val$maxForAttempt:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 130
    :cond_0
    return-void
.end method
