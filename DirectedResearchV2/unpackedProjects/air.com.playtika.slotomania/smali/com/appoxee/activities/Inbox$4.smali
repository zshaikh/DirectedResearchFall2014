.class Lcom/appoxee/activities/Inbox$4;
.super Ljava/lang/Object;
.source "Inbox.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/Inbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "inbox_message_description"

    const-string v4, "inbox_message_date"

    const-string v7, "inbox_message_content_read_color"

    .line 117
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v3, v3, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v3, v3, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const-string v3, "inbox_message_title"

    invoke-static {v3}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 119
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "title":Landroid/widget/TextView;
    const-string v3, "inbox_message_description"

    invoke-static {v8}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 121
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, "description":Landroid/widget/TextView;
    const-string v3, "inbox_message_date"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, "date":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    const-string v4, "inbox_message_read_color"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 127
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 128
    const-string v4, "inbox_message_content_read_color"

    invoke-static {v7}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 127
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 130
    const-string v4, "inbox_message_unread_color"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 129
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3, p3}, Lcom/appoxee/activities/Inbox;->openInboxItem(I)V

    .line 149
    .end local v0    # "date":Landroid/widget/TextView;
    .end local v1    # "description":Landroid/widget/TextView;
    .end local v2    # "title":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    iget-object v3, v3, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_1
    const-string v3, "inbox_message_title"

    invoke-static {v3}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .restart local v2    # "title":Landroid/widget/TextView;
    const-string v3, "inbox_message_description"

    invoke-static {v8}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 137
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    .restart local v1    # "description":Landroid/widget/TextView;
    const-string v3, "inbox_message_date"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    .restart local v0    # "date":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    const-string v4, "inbox_message_read_color"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 144
    const-string v4, "inbox_message_content_read_color"

    invoke-static {v7}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 143
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3}, Lcom/appoxee/activities/Inbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    const-string v4, "inbox_message_unread_color"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 145
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v3, p0, Lcom/appoxee/activities/Inbox$4;->this$0:Lcom/appoxee/activities/Inbox;

    invoke-virtual {v3, p3}, Lcom/appoxee/activities/Inbox;->openInboxItem(I)V

    goto/16 :goto_0
.end method
