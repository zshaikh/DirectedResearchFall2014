.class Lcom/example/calender1/EventActivity$8;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/EventActivity;->addListenerOnButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/EventActivity;

.field private final synthetic val$date:Landroid/widget/TextView;

.field private final synthetic val$etDescreption:Landroid/widget/EditText;

.field private final synthetic val$etTitle:Landroid/widget/EditText;

.field private final synthetic val$spinner2:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/example/calender1/EventActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iput-object p2, p0, Lcom/example/calender1/EventActivity$8;->val$date:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/example/calender1/EventActivity$8;->val$etTitle:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/example/calender1/EventActivity$8;->val$etDescreption:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/example/calender1/EventActivity$8;->val$spinner2:Landroid/widget/Spinner;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v0, v0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 318
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v0, v0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v1, p0, Lcom/example/calender1/EventActivity$8;->val$date:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    #getter for: Lcom/example/calender1/EventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EventActivity;->access$1(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    iget-object v3, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    #getter for: Lcom/example/calender1/EventActivity;->endTimeView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/example/calender1/EventActivity;->access$0(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v0, v1, v2, v3}, Lcom/example/calender1/DBAdapter;->checkEventConflict(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 321
    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    const-string v1, "Please chose another time (Event conflict)"

    .line 327
    const/4 v2, 0x1

    .line 324
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v0, v0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->close()V

    .line 371
    :goto_1
    return-void

    .line 330
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v0, v0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 331
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v0, v0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 332
    iget-object v1, p0, Lcom/example/calender1/EventActivity$8;->val$date:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    #getter for: Lcom/example/calender1/EventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EventActivity;->access$1(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    iget-object v3, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    #getter for: Lcom/example/calender1/EventActivity;->endTimeView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/example/calender1/EventActivity;->access$0(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    iget-object v4, p0, Lcom/example/calender1/EventActivity$8;->val$etTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    iget-object v5, p0, Lcom/example/calender1/EventActivity$8;->val$etDescreption:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    iget-object v6, p0, Lcom/example/calender1/EventActivity$8;->val$spinner2:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-virtual/range {v0 .. v6}, Lcom/example/calender1/DBAdapter;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 341
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 349
    const-string v1, "Event has been added to your calender"

    .line 351
    const/4 v2, 0x1

    .line 341
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v7

    .line 356
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 357
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    const/4 v2, 0x1

    .line 356
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    iget-object v0, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v0, v0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->close()V

    goto/16 :goto_1

    .line 363
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 364
    iget-object v1, p0, Lcom/example/calender1/EventActivity$8;->this$0:Lcom/example/calender1/EventActivity;

    iget-object v1, v1, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    .line 365
    throw v0
.end method
