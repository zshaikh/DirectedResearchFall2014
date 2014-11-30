.class public abstract Lcom/twitter/android/TabFragmentActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/twitter/android/widget/n;


# instance fields
.field private a:Landroid/widget/TabWidget;

.field private final b:Ljava/util/HashMap;

.field private c:Lcom/twitter/android/fk;

.field protected d:Lcom/twitter/android/widget/IconTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TabFragmentActivity;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public final a()V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->e()Z

    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Bundle;IZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/IconTabHost;

    invoke-virtual {v0}, Lcom/twitter/android/widget/IconTabHost;->setup()V

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/IconTabHost;->a(Lcom/twitter/android/widget/n;)V

    const v1, 0x1020013

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/IconTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    iput-object v1, p0, Lcom/twitter/android/TabFragmentActivity;->a:Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/twitter/android/TabFragmentActivity;->d:Lcom/twitter/android/widget/IconTabHost;

    return-void
.end method

.method public final a(Landroid/widget/TabHost$TabSpec;)V
    .locals 4

    new-instance v0, Lcom/twitter/android/j;

    invoke-direct {v0, p0}, Lcom/twitter/android/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/fk;

    invoke-direct {v1, v0}, Lcom/twitter/android/fk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/TabFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    iget-object v2, v1, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TabFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, v1, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iget-object v2, p0, Lcom/twitter/android/TabFragmentActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/TabFragmentActivity;->d:Lcom/twitter/android/widget/IconTabHost;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/IconTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/twitter/android/TabFragmentActivity;->d:Lcom/twitter/android/widget/IconTabHost;

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/twitter/android/TabFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e()Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TabFragmentActivity;->d:Lcom/twitter/android/widget/IconTabHost;

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/TabFragmentActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fk;

    iget-object v1, p0, Lcom/twitter/android/TabFragmentActivity;->c:Lcom/twitter/android/fk;

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/TabFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TabFragmentActivity;->c:Lcom/twitter/android/fk;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/twitter/android/TabFragmentActivity;->c:Lcom/twitter/android/fk;

    iget-object v3, v3, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/twitter/android/TabFragmentActivity;->c:Lcom/twitter/android/fk;

    iget-object v3, v3, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/twitter/android/TabFragmentActivity;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, v0, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    const v3, 0x7f07000b

    iget-object v4, v0, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    iget-object v5, v0, Lcom/twitter/android/fk;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/twitter/android/TabFragmentActivity;->c:Lcom/twitter/android/fk;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_2
    return-void

    :cond_3
    iget-object v3, v0, Lcom/twitter/android/fk;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
