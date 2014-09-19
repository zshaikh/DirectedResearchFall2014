.class Lcom/example/calender1/EditCategoryActivity$3;
.super Ljava/lang/Object;
.source "EditCategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/EditCategoryActivity;->setListenerForItem()V
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
.field final synthetic this$0:Lcom/example/calender1/EditCategoryActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/EditCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EditCategoryActivity$3;->this$0:Lcom/example/calender1/EditCategoryActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$3;->this$0:Lcom/example/calender1/EditCategoryActivity;

    invoke-virtual {v2}, Lcom/example/calender1/EditCategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 135
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    const/4 v4, 0x1

    .line 134
    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$3;->this$0:Lcom/example/calender1/EditCategoryActivity;

    #getter for: Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EditCategoryActivity;->access$0(Lcom/example/calender1/EditCategoryActivity;)Landroid/widget/EditText;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$3;->this$0:Lcom/example/calender1/EditCategoryActivity;

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/example/calender1/EditCategoryActivity;->oldCategoryName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/example/calender1/EditCategoryActivity;->access$3(Lcom/example/calender1/EditCategoryActivity;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$3;->this$0:Lcom/example/calender1/EditCategoryActivity;

    #getter for: Lcom/example/calender1/EditCategoryActivity;->catName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EditCategoryActivity;->access$0(Lcom/example/calender1/EditCategoryActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 145
    .local v1, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/example/calender1/EditCategoryActivity$3;->this$0:Lcom/example/calender1/EditCategoryActivity;

    invoke-virtual {v2}, Lcom/example/calender1/EditCategoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
