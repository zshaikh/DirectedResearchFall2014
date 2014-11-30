.class final Lcom/twitter/android/cp;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SignUpActivity;Lcom/twitter/android/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/cp;-><init>(Lcom/twitter/android/SignUpActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    sparse-switch p3, :sswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->L:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->e()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->K:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "account"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const-class v3, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v3}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "password"

    iget-object v3, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->F:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p6}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p6, :cond_3

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->H:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    :cond_3
    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v5, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->G:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    :cond_4
    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v5, v5, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5, p7}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p7, :cond_6

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->I:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    const v2, 0x7f07007e

    invoke-virtual {v0, v2}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->L:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->e()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->J:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iput-object p8, v0, Lcom/twitter/android/SignUpActivity;->l:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/ff;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {v0, v1}, Lcom/twitter/android/ff;-><init>(Lcom/twitter/android/SignUpActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p9, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ff;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x193 -> :sswitch_2
        0x19c -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sparse-switch p3, :sswitch_data_0

    :goto_0
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->s:Lcom/twitter/android/fc;

    invoke-virtual {v0, p5}, Lcom/twitter/android/fc;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->c()V

    :cond_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, v1, v3}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iput v3, v0, Lcom/twitter/android/SignUpActivity;->q:I

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->q:I

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v2, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method public final h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iput v1, v0, Lcom/twitter/android/SignUpActivity;->p:I

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->c()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->p:I

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/twitter/android/cp;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method
