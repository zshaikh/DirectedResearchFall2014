.class Lcom/dolphin/browser/DolphinService/ui/ac;
.super Landroid/os/Handler;
.source "DialogActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DialogActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DialogActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ac;->a:Lcom/dolphin/browser/DolphinService/ui/DialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
