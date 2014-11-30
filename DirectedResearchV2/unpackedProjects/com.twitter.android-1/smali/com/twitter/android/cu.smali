.class final Lcom/twitter/android/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Z

.field private synthetic d:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;ZLandroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    iput-boolean p2, p0, Lcom/twitter/android/cu;->a:Z

    iput-object p3, p0, Lcom/twitter/android/cu;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/twitter/android/cu;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/twitter/android/cu;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/cu;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    iget-object v2, v2, Lcom/twitter/android/ProfileFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    iget-object v2, v2, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/cu;->a:Z

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/cu;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/ListsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    iget-object v3, v3, Lcom/twitter/android/ProfileFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "inquire_user_id"

    iget-object v3, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    iget-wide v3, v3, Lcom/twitter/android/ProfileFragment;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/cu;->c:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileFragment;->h(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileFragment;->h(I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/cu;->d:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileFragment;->h(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
