.class Lcom/appoxee/activities/Inbox$5;
.super Ljava/lang/Object;
.source "Inbox.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/Inbox;->inboxInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/Inbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v0, v0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v0, v0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v0, v0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    # invokes: Lcom/appoxee/activities/Inbox;->showDeleteButton(Landroid/view/View;I)V
    invoke-static {v0, p2, p3}, Lcom/appoxee/activities/Inbox;->access$6(Lcom/appoxee/activities/Inbox;Landroid/view/View;I)V

    .line 170
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    # invokes: Lcom/appoxee/activities/Inbox;->showDeleteButton(Landroid/view/View;I)V
    invoke-static {v0, p2, p3}, Lcom/appoxee/activities/Inbox;->access$6(Lcom/appoxee/activities/Inbox;Landroid/view/View;I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/appoxee/activities/Inbox$5;->this$0:Lcom/appoxee/activities/Inbox;

    # invokes: Lcom/appoxee/activities/Inbox;->showDeleteButton(Landroid/view/View;I)V
    invoke-static {v0, p2, p3}, Lcom/appoxee/activities/Inbox;->access$6(Lcom/appoxee/activities/Inbox;Landroid/view/View;I)V

    goto :goto_0
.end method
