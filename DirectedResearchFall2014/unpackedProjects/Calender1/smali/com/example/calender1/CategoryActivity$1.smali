.class Lcom/example/calender1/CategoryActivity$1;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/CategoryActivity;->addListenerOnButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 63
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v2, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    #getter for: Lcom/example/calender1/CategoryActivity;->CatName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/CategoryActivity;->access$0(Lcom/example/calender1/CategoryActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/calender1/DBAdapter;->CheckCategoryConflict(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    invoke-virtual {v1}, Lcom/example/calender1/CategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    const-string v2, "Please chose another category Name (Category conflict)"

    .line 69
    const/4 v3, 0x1

    .line 66
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    .line 97
    :goto_1
    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 74
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v2, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    #getter for: Lcom/example/calender1/CategoryActivity;->CatName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/CategoryActivity;->access$0(Lcom/example/calender1/CategoryActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/calender1/DBAdapter;->insertCategory(Ljava/lang/String;)J

    .line 75
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    invoke-virtual {v1}, Lcom/example/calender1/CategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    const-string v2, "the category has been added to your calender"

    .line 78
    const/4 v3, 0x1

    .line 75
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    invoke-virtual {v1}, Lcom/example/calender1/CategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    const/4 v3, 0x1

    .line 88
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    iget-object v1, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_1

    .line 93
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 94
    iget-object v2, p0, Lcom/example/calender1/CategoryActivity$1;->this$0:Lcom/example/calender1/CategoryActivity;

    iget-object v2, v2, Lcom/example/calender1/CategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    .line 95
    throw v1
.end method
