.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/FragmentManagerImpl;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/support/v4/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    .line 107
    return-void
.end method


# virtual methods
.method a(IZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    .line 678
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 679
    if-nez v0, :cond_2

    .line 680
    if-eqz p3, :cond_1

    .line 681
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 682
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/HCSparseArray;->b(ILjava/lang/Object;)V

    .line 687
    :cond_1
    :goto_0
    return-object v0

    .line 685
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 536
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 651
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->e()V

    .line 654
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/HCSparseArray;->c(I)V

    .line 656
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 637
    if-ne p3, v0, :cond_0

    .line 638
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 645
    :goto_0
    return-void

    .line 641
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->m:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 573
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    if-nez v0, :cond_0

    .line 574
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 575
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->b(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method public b()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    .line 590
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 591
    if-nez p1, :cond_1

    .line 592
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->b()V

    .line 599
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Z)V

    .line 600
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->c()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 125
    shr-int/lit8 v0, p1, 0x10

    .line 126
    if-eqz v0, :cond_3

    .line 127
    add-int/lit8 v0, v0, -0x1

    .line 128
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 129
    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    .line 134
    if-nez p0, :cond_2

    .line 135
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 153
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/res/Configuration;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 179
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->d:Landroid/support/v4/app/HCSparseArray;

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    .line 182
    :cond_1
    if-eqz p1, :cond_2

    .line 183
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 184
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->c:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 186
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->i()V

    .line 187
    return-void

    .line 184
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 194
    if-nez p1, :cond_1

    .line 195
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 196
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 205
    :goto_0
    return v0

    .line 203
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 213
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 217
    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    sget-object v1, Landroid/support/v4/app/FragmentActivity$FragmentTag;->a:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 219
    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_1
    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 223
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    .line 228
    :goto_1
    if-ne v1, v5, :cond_3

    if-ne v2, v5, :cond_3

    if-nez v3, :cond_3

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v1, v5

    .line 227
    goto :goto_1

    .line 236
    :cond_3
    if-eq v2, v5, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 237
    :cond_4
    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    .line 238
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 240
    :cond_5
    if-nez v4, :cond_6

    if-eq v1, v5, :cond_6

    .line 241
    iget-object v4, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 244
    :cond_6
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v5, :cond_7

    const-string v5, "FragmentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView: id=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_7
    if-nez v4, :cond_9

    .line 248
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 249
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->u:Z

    .line 250
    if-eqz v2, :cond_8

    move v5, v2

    :goto_2
    iput v5, v4, Landroid/support/v4/app/Fragment;->B:I

    .line 251
    iput v1, v4, Landroid/support/v4/app/Fragment;->C:I

    .line 252
    iput-object v3, v4, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    .line 253
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->v:Z

    .line 254
    iput-object p0, v4, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 255
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->y:Landroid/support/v4/app/FragmentManager;

    .line 256
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 257
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 280
    :goto_3
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    if-nez v4, :cond_c

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move v5, v1

    .line 250
    goto :goto_2

    .line 259
    :cond_9
    iget-boolean v5, v4, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v5, :cond_a

    .line 262
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Duplicate id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", tag "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_a
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->v:Z

    .line 270
    iput-object p0, v4, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 274
    iget-boolean v1, v4, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v1, :cond_b

    .line 275
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 277
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    move-object v1, v4

    goto/16 :goto_3

    .line 284
    :cond_c
    if-eqz v2, :cond_d

    .line 285
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 287
    :cond_d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 288
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->L:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 302
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->o()V

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->e()V

    .line 306
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 319
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 331
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->p()V

    .line 332
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    .line 343
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 351
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_0

    .line 365
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 366
    return-void

    .line 362
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    .line 375
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->m()V

    .line 376
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 384
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->j()V

    .line 385
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 393
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->l()V

    .line 394
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->d()Z

    .line 395
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 403
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    if-eqz v0, :cond_0

    .line 404
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 405
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 406
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 408
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 409
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 410
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 410
    goto :goto_0

    .line 412
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    .line 422
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->d()Z

    .line 423
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0, v5}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->f()Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    const/4 v0, 0x0

    .line 437
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    if-eqz v2, :cond_3

    .line 440
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v2

    sub-int/2addr v2, v5

    move v3, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 441
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 442
    iget-boolean v4, v0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-eqz v4, :cond_1

    move v0, v5

    .line 440
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->e()V

    .line 446
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/HCSparseArray;->d(I)V

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    .line 450
    :cond_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    move-object v0, v6

    .line 459
    :goto_2
    return-object v0

    .line 454
    :cond_4
    new-instance v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 455
    iput-object v6, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->a:Ljava/lang/Object;

    .line 456
    iput-object v6, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->b:Ljava/util/HashMap;

    .line 457
    iput-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->c:Ljava/util/ArrayList;

    .line 458
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    iput-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->d:Landroid/support/v4/app/HCSparseArray;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 468
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Landroid/os/Parcelable;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 482
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 483
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->h()V

    .line 486
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->d()Z

    .line 489
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-nez v0, :cond_1

    .line 490
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    .line 491
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()V

    .line 496
    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    .line 500
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->k()V

    .line 501
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 503
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->d()V

    .line 502
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 493
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-nez v0, :cond_0

    .line 494
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_0

    .line 506
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 515
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 516
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->n()V

    .line 519
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 626
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    return-void
.end method
