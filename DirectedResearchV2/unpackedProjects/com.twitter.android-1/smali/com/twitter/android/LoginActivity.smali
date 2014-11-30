.class public Lcom/twitter/android/LoginActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/twitter/android/widget/m;


# instance fields
.field a:Z

.field private b:Lcom/twitter/android/client/e;

.field private c:Lcom/twitter/android/client/f;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0b0018

    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    const v0, 0x7f0b001c

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0017

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->f:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SignUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07004a
        :pswitch_0
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/LoginActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->showDialog(I)V

    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07005e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "add_account"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/LoginActivity;->a:Z

    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->setContentView(I)V

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/m;)V

    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/twitter/android/ao;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/ao;-><init>(Lcom/twitter/android/LoginActivity;Lcom/twitter/android/ej;)V

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/client/f;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "screen_name"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "screen_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Lcom/twitter/android/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    const/16 v1, 0x65

    const v2, 0x7f0b0015

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080041

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/AboutActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->b:Lcom/twitter/android/client/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginActivity;->b:Lcom/twitter/android/client/e;

    iget-object v0, p0, Lcom/twitter/android/LoginActivity;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->c:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    sget-object v0, Lcom/twitter/android/ej;->a:[I

    iget-object v1, p0, Lcom/twitter/android/LoginActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->i()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session$LoginStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tab"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/LoginActivity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
