.class Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;
.super Ljava/lang/Object;
.source "AdvancedButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 86
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->state:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$400(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;->DEPRESSED:Lcom/nativex/monetization/dialogs/custom/AdvancedButton$STATE;

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # invokes: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->buttonDepressed()V
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$200(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$500(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AdvancedButton$2;->this$0:Lcom/nativex/monetization/dialogs/custom/AdvancedButton;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->userFocusListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AdvancedButton;->access$500(Lcom/nativex/monetization/dialogs/custom/AdvancedButton;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 98
    :cond_1
    return-void
.end method
