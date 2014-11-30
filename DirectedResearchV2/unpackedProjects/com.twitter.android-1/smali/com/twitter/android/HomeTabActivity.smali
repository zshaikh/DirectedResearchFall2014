.class public Lcom/twitter/android/HomeTabActivity;
.super Landroid/app/TabActivity;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/twitter/android/dx;
.implements Lcom/twitter/android/widget/m;
.implements Lcom/twitter/android/widget/n;


# static fields
.field static final a:Ljava/util/HashMap;

.field private static g:[I

.field private static h:I


# instance fields
.field b:Lcom/twitter/android/client/e;

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:Z

.field private i:Z

.field private j:J

.field private k:Lcom/twitter/android/client/f;

.field private l:Lcom/twitter/android/cj;

.field private m:Lcom/twitter/android/cd;

.field private n:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/HomeTabActivity;->g:[I

    sput v2, Lcom/twitter/android/HomeTabActivity;->h:I

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    const-string v1, "home"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    const-string v1, "connect"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/HomeTabActivity;->a:Ljava/util/HashMap;

    const-string v1, "discover"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    const-string v0, "twitter"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mentions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "connect"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "home"

    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    const-string v1, "tag"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    const-string v2, "home_item"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v1, "ref_event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ref_event"

    const-string v3, "ref_event"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "ref_event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    const-string v1, "home_item"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;I)V

    const-string v2, "home"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "connect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v4, p2, :cond_2

    invoke-virtual {v0, v1, v5}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "discover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5, v3}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->d()V

    iput-boolean v3, p0, Lcom/twitter/android/HomeTabActivity;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->c()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/HomeTabActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method final a(IZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TabIndicator;

    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/TabIndicator;->a(Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->e:Z

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->p()V

    :cond_1
    iput-boolean p2, p0, Lcom/twitter/android/HomeTabActivity;->e:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->i:Z

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->r()V

    :cond_2
    iput-boolean p2, p0, Lcom/twitter/android/HomeTabActivity;->i:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/twitter/android/HomeTabActivity;->f:Z

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->q()V

    :cond_3
    iput-boolean p2, p0, Lcom/twitter/android/HomeTabActivity;->f:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final a(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/HomeActivity;->b(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    return-void
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/android/HomeTabActivity;->g:[I

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    invoke-virtual {p0, v5, v1}, Lcom/twitter/android/HomeTabActivity;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Lcom/twitter/android/cd;

    sget-object v3, Lcom/twitter/android/provider/k;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/provider/i;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/cd;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f07004a
        :pswitch_0
    .end packed-switch
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7

    const/4 v0, 0x0

    array-length v3, p1

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    const-string v5, "com.twitter.android.auth.login"

    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-lez v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->l:Lcom/twitter/android/cj;

    invoke-virtual {v1, v0}, Lcom/twitter/android/cj;->a(Landroid/accounts/Account;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const v8, 0x7f03001e

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTabActivity;->setContentView(I)V

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/m;)V

    iput-object v1, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    new-instance v0, Lcom/twitter/android/cj;

    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/twitter/android/cj;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/dx;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->l:Lcom/twitter/android/cj;

    invoke-virtual {p0, v3}, Lcom/twitter/android/HomeTabActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    const-string v1, "tag"

    const-string v2, "home"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    const-string v2, "home_item"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v6}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/db;

    invoke-direct {v0, p0, v4}, Lcom/twitter/android/db;-><init>(Lcom/twitter/android/HomeTabActivity;Lcom/twitter/android/fu;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->k:Lcom/twitter/android/client/f;

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->k:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v3}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    new-instance v0, Lcom/twitter/android/cd;

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/cd;-><init>(Lcom/twitter/android/HomeTabActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/HomeTabActivity;->m:Lcom/twitter/android/cd;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/IconTabHost;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/IconTabHost;->a(Lcom/twitter/android/widget/n;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "home"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "home_item"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v5, "home"

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f020109

    const v7, 0x7f0b0009

    invoke-static {v3, v8, v0, v6, v7}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/ConnectActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "connect"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "home_item"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string v5, "connect"

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f0200fb

    const v7, 0x7f0b0162

    invoke-static {v3, v8, v0, v6, v7}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "type"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "discover"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "home_item"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const-string v1, "discover"

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f020102

    const v5, 0x7f0b000a

    invoke-static {v3, v8, v0, v2, v5}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f020110

    const v4, 0x7f0b016d

    invoke-static {v3, v8, v0, v2, v4}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/HomeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/HomeTabActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->b()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->k:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->k:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/HomeTabActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/HomeTabActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "account"

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070018 -> :sswitch_0
        0x7f0700ab -> :sswitch_2
        0x7f0700d8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v0, "ver"

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tag"

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "home_item"

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->a()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "st"

    iget-wide v2, p0, Lcom/twitter/android/HomeTabActivity;->j:J

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v5, 0x2

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/HomeTabActivity;->b:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v1, Lcom/twitter/android/HomeTabActivity;->h:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    const-string v2, "ver"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->t()V

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/twitter/android/fu;

    invoke-direct {v1, p0}, Lcom/twitter/android/fu;-><init>(Lcom/twitter/android/HomeTabActivity;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "photo_service"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0200cf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b013e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_4
    sput v5, Lcom/twitter/android/HomeTabActivity;->h:I

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/twitter/android/HomeTabActivity;->n:Landroid/content/SharedPreferences;

    const-string v4, "st"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/HomeTabActivity;->j:J

    iget-wide v3, p0, Lcom/twitter/android/HomeTabActivity;->j:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->n()V

    iput-wide v1, p0, Lcom/twitter/android/HomeTabActivity;->j:J

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/HomeTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeActivity;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/HomeTabActivity;->b(Ljava/lang/String;I)V

    return-void
.end method
