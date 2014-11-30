.class Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;
.super Ljava/lang/Object;
.source "AddCalendarEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x424a19

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->access$000(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->access$000(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->dismiss()V

    .line 56
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x108a

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userCloseListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->access$100(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->userCloseListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->access$100(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
