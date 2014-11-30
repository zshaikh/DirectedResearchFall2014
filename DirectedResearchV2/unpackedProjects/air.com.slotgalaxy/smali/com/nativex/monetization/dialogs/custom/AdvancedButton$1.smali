.class Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;
.super Ljava/lang/Object;
.source "AdvancedButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/dialogs/custom/AdvancedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # invokes: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$200(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    .line 79
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$300(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$300(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 82
    :goto_1
    return v0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # invokes: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonPressed()V
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$100(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
