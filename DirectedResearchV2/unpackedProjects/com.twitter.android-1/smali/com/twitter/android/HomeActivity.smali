.class public Lcom/twitter/android/HomeActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/twitter/android/fx;
.implements Lcom/twitter/android/widget/e;


# instance fields
.field private a:Lcom/twitter/android/BaseListFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:[Lcom/twitter/android/eh;

.field private e:[Z

.field private f:I

.field private g:Lcom/twitter/android/widget/SegmentedControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/HomeActivity;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twitter/android/HomeActivity;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/twitter/android/HomeActivity;->d:[Lcom/twitter/android/eh;

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/twitter/android/HomeActivity;->e:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_0

    invoke-virtual {v0, p0}, Lcom/twitter/android/eh;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(J)V

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->c_()V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/android/HomeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->d:[Lcom/twitter/android/eh;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->d:[Lcom/twitter/android/eh;

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/twitter/android/eh;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/BaseListFragment;

    iget-object v4, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/BaseListFragment;

    iget-object v3, v3, Lcom/twitter/android/eh;->a:Ljava/lang/String;

    if-ne v4, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/HomeTabActivity;->a(I)V

    iput v2, p0, Lcom/twitter/android/HomeActivity;->f:I

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->e:[Z

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->g:Lcom/twitter/android/widget/SegmentedControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->g:Lcom/twitter/android/widget/SegmentedControl;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/twitter/android/BaseListFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->isDetached()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    const/16 v4, 0x1003

    invoke-virtual {v6, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/BaseListFragment;

    iput-object v3, p0, Lcom/twitter/android/HomeActivity;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p0}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/fx;)V

    const v4, 0x7f07003e

    invoke-virtual {v6, v4, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->b()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->onSearchRequested()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07007c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0b0086

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez p1, :cond_0

    const-string v1, "home_item"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->setContentView(I)V

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    packed-switch v2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "cur_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->b:Ljava/lang/String;

    const-string v0, "state_home_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/HomeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/BaseListFragment;

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/BaseListFragment;

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/fx;)V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->setContentView(I)V

    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/SegmentedControl;->a(Lcom/twitter/android/widget/e;)V

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->g:Lcom/twitter/android/widget/SegmentedControl;

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "empty_title"

    const v4, 0x7f0b017d

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "empty_desc"

    const v4, 0x7f0b017e

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v0, v7, [Lcom/twitter/android/eh;

    new-instance v4, Lcom/twitter/android/eh;

    const-class v5, Lcom/twitter/android/TimelineFragment;

    invoke-direct {v4, v3, v5, v2}, Lcom/twitter/android/eh;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v0, v6

    :goto_2
    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->d:[Lcom/twitter/android/eh;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->e:[Z

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeActivity;->b(I)V

    return-void

    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/eh;

    const v2, 0x7f0b0144

    invoke-virtual {p0, v2}, Lcom/twitter/android/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "activity_type"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "search_hint"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "empty_title"

    const v5, 0x7f0b017f

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "empty_desc"

    const v5, 0x7f0b0180

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/twitter/android/eh;

    const-class v5, Lcom/twitter/android/ActivityFragment;

    invoke-direct {v4, v3, v5, v2}, Lcom/twitter/android/eh;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v0, v6

    const v2, 0x7f0b001f

    invoke-virtual {p0, v2}, Lcom/twitter/android/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "type"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "search_hint"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "empty_title"

    const v5, 0x7f0b0181

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "empty_desc"

    const v5, 0x7f0b0182

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/twitter/android/eh;

    const-class v5, Lcom/twitter/android/TimelineFragment;

    invoke-direct {v4, v3, v5, v2}, Lcom/twitter/android/eh;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v0, v7

    goto :goto_2

    :pswitch_3
    const v0, 0x7f0b0160

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "refresh"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "search_hint"

    const v4, 0x7f0b0087

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v0, v7, [Lcom/twitter/android/eh;

    new-instance v4, Lcom/twitter/android/eh;

    const-class v5, Lcom/twitter/android/DiscoverFragment;

    invoke-direct {v4, v3, v5, v2}, Lcom/twitter/android/eh;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v0, v6

    goto/16 :goto_2

    :pswitch_4
    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "refresh"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-array v0, v7, [Lcom/twitter/android/eh;

    new-instance v4, Lcom/twitter/android/eh;

    const-class v5, Lcom/twitter/android/AccountFragment;

    invoke-direct {v4, v3, v5, v2}, Lcom/twitter/android/eh;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v0, v6

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cur_item"

    iget-object v1, p0, Lcom/twitter/android/HomeActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_home_item"

    iget v1, p0, Lcom/twitter/android/HomeActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
