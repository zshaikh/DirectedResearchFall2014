.class public Lcom/twitter/android/SULFragment;
.super Lcom/twitter/android/BaseListFragment;


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "query"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "query_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/SULFragment;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/SULFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/SULFragment;->c:Z

    return v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/SULFragment;->o:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/e;->e(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/SULFragment;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/SULFragment;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/SULFragment;->c(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SULFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 4

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->b:Landroid/content/SharedPreferences;

    const-string v1, "loc"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/twitter/android/SULFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->j()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/twitter/android/SULFragment;->f(I)V

    invoke-direct {p0, v3}, Lcom/twitter/android/SULFragment;->b(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/SULFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/twitter/android/SULFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->f()V

    goto :goto_0
.end method

.method protected final a_()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->a_()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/twitter/android/SULFragment;->b(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/av;

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/av;-><init>(Lcom/twitter/android/SULFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/twitter/android/SULFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SULFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/SULFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/SULFragment;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/twitter/android/SULFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v0, p0}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    new-instance v2, Lcom/twitter/android/df;

    invoke-direct {v2, p0}, Lcom/twitter/android/df;-><init>(Lcom/twitter/android/SULFragment;)V

    iput-object v2, p0, Lcom/twitter/android/SULFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "onboarding"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/SULFragment;->c:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/SULFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->j:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/ay;->a:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/twitter/android/SULFragment;->o:J

    invoke-static {v2, v5, v6}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/SULFragment;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SULFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/SULFragment;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loc"

    invoke-virtual {p0}, Lcom/twitter/android/SULFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SULFragment;->a(Z)V

    return-void
.end method
