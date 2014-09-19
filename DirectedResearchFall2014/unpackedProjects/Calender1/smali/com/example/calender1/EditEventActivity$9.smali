.class Lcom/example/calender1/EditEventActivity$9;
.super Ljava/lang/Object;
.source "EditEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/EditEventActivity;->addListenerOnButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/EditEventActivity;

.field private final synthetic val$date:Landroid/widget/TextView;

.field private final synthetic val$etDescreption:Landroid/widget/EditText;

.field private final synthetic val$etTitle:Landroid/widget/EditText;

.field private final synthetic val$spinner2:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/example/calender1/EditEventActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iput-object p2, p0, Lcom/example/calender1/EditEventActivity$9;->val$date:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/example/calender1/EditEventActivity$9;->val$etTitle:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/example/calender1/EditEventActivity$9;->val$etDescreption:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/example/calender1/EditEventActivity$9;->val$spinner2:Landroid/widget/Spinner;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 372
    :try_start_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm"

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
    .local v11, sdf:Ljava/text/SimpleDateFormat;
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/example/calender1/EditEventActivity;->access$1(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EditEventActivity;->access$0(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    const-string v1, "the start time must be before the end time "

    .line 380
    const/4 v2, 0x1

    .line 377
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->close()V

    .line 444
    .end local v11           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 385
    .restart local v11       #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 386
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$9;->val$date:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EditEventActivity;->access$1(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    iget-object v3, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/example/calender1/EditEventActivity;->access$0(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {v0, v1, v2, v3}, Lcom/example/calender1/DBAdapter;->checkEventConflict(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 389
    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 393
    const-string v1, "Please choose another time (Event Conflict)"

    .line 395
    const/4 v2, 0x1

    .line 392
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 398
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 399
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 401
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$9;->val$date:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/example/calender1/EditEventActivity;->access$1(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/example/calender1/EditEventActivity;->access$0(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity$9;->val$etTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    iget-object v5, p0, Lcom/example/calender1/EditEventActivity$9;->val$etDescreption:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    iget-object v6, p0, Lcom/example/calender1/EditEventActivity$9;->val$spinner2:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 407
    iget-object v7, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->oldDate:Ljava/lang/String;
    invoke-static {v7}, Lcom/example/calender1/EditEventActivity;->access$9(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->oldStartTime:Ljava/lang/String;
    invoke-static {v8}, Lcom/example/calender1/EditEventActivity;->access$10(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    #getter for: Lcom/example/calender1/EditEventActivity;->oldEndTime:Ljava/lang/String;
    invoke-static {v9}, Lcom/example/calender1/EditEventActivity;->access$11(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;

    move-result-object v9

    .line 399
    invoke-virtual/range {v0 .. v9}, Lcom/example/calender1/DBAdapter;->updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    const-string v1, "Event has been updated on your calender"

    .line 424
    const/4 v2, 0x1

    .line 414
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 427
    .end local v11           #sdf:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v10

    .line 429
    .local v10, ex:Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    invoke-virtual {v0}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    const/4 v2, 0x1

    .line 429
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v0, v0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v0}, Lcom/example/calender1/DBAdapter;->close()V

    goto/16 :goto_0

    .line 436
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 437
    iget-object v1, p0, Lcom/example/calender1/EditEventActivity$9;->this$0:Lcom/example/calender1/EditEventActivity;

    iget-object v1, v1, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v1}, Lcom/example/calender1/DBAdapter;->close()V

    .line 438
    throw v0
.end method
