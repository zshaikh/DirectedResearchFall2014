.class Lcom/example/calender1/EditCategoryActivity$1;
.super Ljava/lang/Object;
.source "EditCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/EditCategoryActivity;->setListenerForDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/EditCategoryActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/EditCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 56
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    #getter for: Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EditCategoryActivity;->access$0(Lcom/example/calender1/EditCategoryActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/calender1/DBAdapter;->deleteCategory(Ljava/lang/String;)Z

    .line 57
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    #calls: Lcom/example/calender1/EditCategoryActivity;->setCategories()V
    invoke-static {v1}, Lcom/example/calender1/EditCategoryActivity;->access$1(Lcom/example/calender1/EditCategoryActivity;)V

    .line 58
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    #getter for: Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/example/calender1/EditCategoryActivity;->access$0(Lcom/example/calender1/EditCategoryActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    #getter for: Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/example/calender1/EditCategoryActivity;->access$0(Lcom/example/calender1/EditCategoryActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    .line 70
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    invoke-virtual {v1}, Lcom/example/calender1/EditCategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    const/4 v3, 0x1

    .line 62
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object v1, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    iget-object v1, v1, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 66
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 67
    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$1;->this$0:Lcom/example/calender1/EditCategoryActivity;

    iget-object v2, v2, Lcom/example/calender1/EditCategoryActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v2}, Lcom/example/calender1/DBAdapter;->close()V

    .line 68
    throw v1
.end method
