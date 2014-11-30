.class public Lcom/twitter/android/AccountsDialogActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Lcom/twitter/android/util/j;


# instance fields
.field a:Lcom/twitter/android/client/e;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/twitter/android/co;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/co;

    invoke-virtual {v0}, Lcom/twitter/android/co;->notifyDataSetChanged()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string v0, "home"

    const-string v1, "account"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/AccountsDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "add_account"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/AccountsDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070017
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/e;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    new-array v5, v4, [Lcom/twitter/android/cm;

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    :try_start_0
    new-instance v6, Lcom/twitter/android/cm;

    aget-object v7, v3, v0

    aget-object v8, v3, v0

    const-string v9, "account_user_info"

    invoke-virtual {v1, v8, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/twitter/android/cm;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/c;)V

    aput-object v6, v5, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twitter/android/co;

    invoke-direct {v0, p0, p0, v5}, Lcom/twitter/android/co;-><init>(Lcom/twitter/android/AccountsDialogActivity;Landroid/content/Context;[Lcom/twitter/android/cm;)V

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/co;

    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/co;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-le v4, v10, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Ljava/lang/String;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0, v10, p0}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    return-void

    :cond_1
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Lcom/twitter/android/co;

    invoke-virtual {v0, p3}, Lcom/twitter/android/co;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    iget-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/twitter/android/cm;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/AccountsDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "account"

    iget-object v0, v0, Lcom/twitter/android/cm;->a:Landroid/accounts/Account;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/AccountsDialogActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
