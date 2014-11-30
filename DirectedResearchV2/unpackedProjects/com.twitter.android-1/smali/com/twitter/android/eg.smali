.class final Lcom/twitter/android/eg;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iput v1, v0, Lcom/twitter/android/SignUpActivity;->o:I

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->f()V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->o:I

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/util/i;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->a(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->f()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    const v5, 0x7f0b016a

    invoke-virtual {v4, v5}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->p:I

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/util/i;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3, v3}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/android/widget/PopupEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Lcom/twitter/android/widget/PopupEditText;

    iget-object v3, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    const v5, 0x7f0b016b

    invoke-virtual {v4, v5}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->q:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v4, v4, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Z)V

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iput v1, v0, Lcom/twitter/android/SignUpActivity;->r:I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v3, v3, Lcom/twitter/android/SignUpActivity;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    const v5, 0x7f0b016c

    invoke-virtual {v4, v5}, Lcom/twitter/android/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/twitter/android/SignUpActivity;->a(Landroid/widget/EditText;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/SignUpActivity;

    iput v2, v0, Lcom/twitter/android/SignUpActivity;->r:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
