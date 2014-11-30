.class public Landroid/view/CustomMenuExpandableListActivity;
.super Landroid/view/CustomMenuActivity;
.source "CustomMenuExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field b:Landroid/widget/ExpandableListAdapter;

.field c:Landroid/widget/ExpandableListView;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CustomMenuExpandableListActivity;->d:Z

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/view/CustomMenuExpandableListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    return-void
.end method

.method public a(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    invoke-direct {p0}, Landroid/view/CustomMenuExpandableListActivity;->c()V

    .line 251
    iput-object p1, p0, Landroid/view/CustomMenuExpandableListActivity;->b:Landroid/widget/ExpandableListAdapter;

    .line 252
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/view/CustomMenuExpandableListActivity;->c()V

    .line 264
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onContentChanged()V

    .line 225
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 226
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    .line 227
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    if-eqz v1, :cond_1

    .line 233
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 235
    :cond_1
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 236
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 237
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 239
    iget-boolean v0, p0, Landroid/view/CustomMenuExpandableListActivity;->d:Z

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Landroid/view/CustomMenuExpandableListActivity;->b:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuExpandableListActivity;->a(Landroid/widget/ExpandableListAdapter;)V

    .line 242
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CustomMenuExpandableListActivity;->d:Z

    .line 243
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/view/CustomMenuExpandableListActivity;->c()V

    .line 208
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method
