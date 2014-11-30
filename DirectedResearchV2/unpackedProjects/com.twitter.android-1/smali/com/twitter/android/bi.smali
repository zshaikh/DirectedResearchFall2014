.class final Lcom/twitter/android/bi;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesThreadActivity;Lcom/twitter/android/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V
    .locals 6

    const v3, 0x7f0b00a7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v2, p2}, Lcom/twitter/android/MessagesThreadActivity;->d(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v2

    if-eqz v2, :cond_1

    sparse-switch p3, :sswitch_data_0

    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v2, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->f:Landroid/widget/Button;

    const/16 v3, 0xc8

    if-eq p3, v3, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_1
    :goto_2
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v2}, Lcom/twitter/android/MessagesThreadActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v2, p5, Lcom/twitter/android/api/c;->t:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    const-class v4, Lcom/twitter/android/DialogActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "username"

    iget-object v4, p5, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "user_id"

    iget-wide v4, p5, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v3, v2}, Lcom/twitter/android/MessagesThreadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method public final f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->d(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->d(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    const v1, 0x7f0b012e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_1
    return-void
.end method
