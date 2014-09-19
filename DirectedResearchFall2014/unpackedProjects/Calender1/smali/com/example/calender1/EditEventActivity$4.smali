.class Lcom/example/calender1/EditEventActivity$4;
.super Ljava/lang/Object;
.source "EditEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/EditEventActivity;->addListernerOnDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/EditEventActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/EditEventActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v1, v1, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 125
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v1, v1, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->oldDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/example/calender1/EditEventActivity;->access$9(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/example/calender1/EditEventActivity;->access$1(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/example/calender1/EditEventActivity;->access$0(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v1, v2, v3, v4}, Lcom/example/calender1/DBAdapter;->deleteEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v1, v1, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    .line 155
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v1}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    const/4 v3, 0x1

    .line 140
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v1, v1, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 147
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 148
    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$4;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v2, v2, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    .line 149
    throw v1
.end method
