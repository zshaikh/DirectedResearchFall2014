.class Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;
.super Ljava/lang/Object;
.source "AddCalendarEntryDialogBody.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->onCalendarClickedListener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->access$000(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;)Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;->this$0:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;

    # getter for: Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->onCalendarClickedListener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;
    invoke-static {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;->access$000(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody;)Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialogBody$1;
    check-cast p0, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    invoke-interface {v0, p0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;->onClick(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 168
    :cond_0
    return-void
.end method
