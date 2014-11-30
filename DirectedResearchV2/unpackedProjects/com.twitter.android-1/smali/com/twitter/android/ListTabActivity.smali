.class public Lcom/twitter/android/ListTabActivity;
.super Lcom/twitter/android/TabFragmentActivity;


# static fields
.field private static h:[Ljava/lang/String;


# instance fields
.field a:J

.field b:J

.field c:I

.field private i:J

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/twitter/android/ft;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i_follow"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/ListTabActivity;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/TabFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ListTabActivity;->c:I

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "timeline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tag"

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/twitter/android/TimelineFragment;

    invoke-direct {v0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twitter/android/TimelineFragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    const-string v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "owner_id"

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tag"

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "follow"

    const-string v3, "follow"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "onboarding"

    const-string v3, "onboarding"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/twitter/android/UsersFragment;

    invoke-direct {v0}, Lcom/twitter/android/UsersFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twitter/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final c()V
    .locals 10

    const/4 v2, 0x0

    sget-object v0, Lcom/twitter/android/provider/aq;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v3, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->l:Lcom/twitter/android/ft;

    const/4 v1, 0x2

    sget-object v4, Lcom/twitter/android/ListTabActivity;->h:[Ljava/lang/String;

    const-string v5, "owner_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/twitter/android/ListTabActivity;->i:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/ft;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final d()V
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/ListTabActivity;->d:Lcom/twitter/android/widget/IconTabHost;

    iget-boolean v4, p0, Lcom/twitter/android/ListTabActivity;->j:Z

    if-nez v4, :cond_0

    const-string v4, "timeline"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x7f020117

    invoke-static {v0, v3, v5}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/twitter/android/ListTabActivity;->a(Landroid/widget/TabHost$TabSpec;)V

    const-string v4, "members"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x7f02011a

    invoke-static {v0, v3, v5}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->a(Landroid/widget/TabHost$TabSpec;)V

    iput-boolean v1, p0, Lcom/twitter/android/ListTabActivity;->j:Z

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "tab"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "tab"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_4

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->i:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->l:Lcom/twitter/android/ft;

    sget-object v3, Lcom/twitter/android/provider/aq;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ownerId"

    iget-object v5, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v5}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/ListTabActivity;->h:[Ljava/lang/String;

    const-string v5, "owner_id=?"

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/twitter/android/ListTabActivity;->i:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/ft;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->b:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    :cond_5
    const v0, 0x7f0b0075

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TabFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_description"

    const-string v3, "description"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_fullname"

    const-string v3, "full_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_mode"

    const-string v3, "mode"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-wide/16 v5, 0x0

    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/TabFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/gh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/gh;-><init>(Lcom/twitter/android/ListTabActivity;Lcom/twitter/android/fr;)V

    iput-object v0, p0, Lcom/twitter/android/ListTabActivity;->g:Lcom/twitter/android/client/f;

    new-instance v0, Lcom/twitter/android/ft;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/ft;-><init>(Lcom/twitter/android/ListTabActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ListTabActivity;->l:Lcom/twitter/android/ft;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "twitter"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "slug"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "screen_name"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "owner_id"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->i:J

    if-eqz p1, :cond_0

    const-string v3, "tab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/ListTabActivity;->k:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/twitter/android/ListTabActivity;->a(Z)V

    iget-object v3, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v3, v1, v0}, Lcom/twitter/android/client/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->d(Ljava/lang/String;)V

    :goto_1
    const-string v1, "list_name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const-string v0, "slug"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "creator_id"

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->b:J

    const-string v1, "list_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->d()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/TabFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/twitter/android/TabFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ListCreateEditActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "list_id"

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "name"

    const-string v4, "list_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "description"

    const-string v4, "list_description"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "full_name"

    const-string v4, "list_fullname"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mode"

    const-string v4, "list_mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/ListTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/twitter/android/fr;

    invoke-direct {v1, p0}, Lcom/twitter/android/fr;-><init>(Lcom/twitter/android/ListTabActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b006c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->b(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    iget-wide v2, p0, Lcom/twitter/android/ListTabActivity;->a:J

    iget-wide v4, p0, Lcom/twitter/android/ListTabActivity;->b:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->a(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListTabActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0700db
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/TabFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-wide v3, p0, Lcom/twitter/android/ListTabActivity;->b:J

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const v3, 0x7f0700db

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700dc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700dd

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    iget v3, p0, Lcom/twitter/android/ListTabActivity;->c:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700de

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/ListTabActivity;->c:I

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/android/ListTabActivity;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->f()Z

    move-result v0

    invoke-super {p0}, Lcom/twitter/android/TabFragmentActivity;->onResume()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ListTabActivity;->c:I

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/twitter/android/TabFragmentActivity;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TabFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/twitter/android/ListTabActivity;->e()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/twitter/android/TabFragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/ListTabActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->g:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method
