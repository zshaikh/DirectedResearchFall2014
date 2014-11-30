.class public Lcom/twitter/android/AccountsFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/twitter/android/util/j;


# instance fields
.field private a:Lcom/twitter/android/d;

.field private b:Lcom/twitter/android/ci;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/cm;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/twitter/android/cm;

    const-string v1, "account_user_info"

    invoke-virtual {p0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/cm;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/twitter/android/cm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/cm;-><init>(Landroid/accounts/Account;Lcom/twitter/android/api/c;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a([Landroid/accounts/Account;)[Lcom/twitter/android/cm;
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    array-length v3, p1

    new-array v0, v3, [Lcom/twitter/android/cm;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    invoke-static {v2, v4}, Lcom/twitter/android/AccountsFragment;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/cm;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/AccountsFragment;->o:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, v0, Lcom/twitter/android/cm;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->a:Lcom/twitter/android/d;

    invoke-interface {v1, v0}, Lcom/twitter/android/d;->a(Lcom/twitter/android/cm;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    invoke-virtual {v0}, Lcom/twitter/android/ci;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v4, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    iget v6, p0, Lcom/twitter/android/AccountsFragment;->d:I

    if-eqz v5, :cond_1

    array-length v0, v5

    iput v0, p0, Lcom/twitter/android/AccountsFragment;->d:I

    array-length v7, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v8, v5, v3

    if-nez v0, :cond_0

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/twitter/android/AccountsFragment;->d:I

    move v0, v2

    :cond_2
    if-nez v0, :cond_5

    iget v0, p0, Lcom/twitter/android/AccountsFragment;->d:I

    if-lez v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    invoke-direct {p0, v5}, Lcom/twitter/android/AccountsFragment;->a([Landroid/accounts/Account;)[Lcom/twitter/android/cm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ci;->a([Lcom/twitter/android/cm;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-ne v6, v1, :cond_3

    iget v0, p0, Lcom/twitter/android/AccountsFragment;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    array-length v1, v5

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, v5, v0

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->a:Lcom/twitter/android/d;

    invoke-static {v4, v2}, Lcom/twitter/android/AccountsFragment;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/cm;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/d;->a(Lcom/twitter/android/cm;)V

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitter/android/AccountsFragment;->a([Landroid/accounts/Account;)[Lcom/twitter/android/cm;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    iput v3, p0, Lcom/twitter/android/AccountsFragment;->d:I

    :goto_0
    new-instance v3, Lcom/twitter/android/ci;

    iget-object v4, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/twitter/android/ci;-><init>(Landroid/content/Context;Lcom/twitter/android/client/e;[Lcom/twitter/android/cm;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/twitter/android/AccountsFragment;->d:I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/twitter/android/d;

    iput-object p1, p0, Lcom/twitter/android/AccountsFragment;->a:Lcom/twitter/android/d;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/AccountsFragment;->o:J

    invoke-virtual {p0, v2, p0}, Lcom/twitter/android/AccountsFragment;->a(ILcom/twitter/android/util/j;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/AccountsFragment;->b(ILcom/twitter/android/util/j;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountsFragment;->b:Lcom/twitter/android/ci;

    iget-object v1, p0, Lcom/twitter/android/AccountsFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ci;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
