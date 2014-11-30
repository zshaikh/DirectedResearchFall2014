.class public Landroid/view/CustomMenuListActivity;
.super Landroid/view/CustomMenuActivity;
.source "CustomMenuListActivity.java"


# instance fields
.field protected b:Landroid/widget/ListAdapter;

.field protected c:Landroid/widget/ListView;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/view/CustomMenuListActivity;->d:Landroid/os/Handler;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CustomMenuListActivity;->e:Z

    .line 192
    new-instance v0, Landroid/view/e;

    invoke-direct {v0, p0}, Landroid/view/e;-><init>(Landroid/view/CustomMenuListActivity;)V

    iput-object v0, p0, Landroid/view/CustomMenuListActivity;->f:Ljava/lang/Runnable;

    .line 323
    new-instance v0, Landroid/view/f;

    invoke-direct {v0, p0}, Landroid/view/f;-><init>(Landroid/view/CustomMenuListActivity;)V

    iput-object v0, p0, Landroid/view/CustomMenuListActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03009a

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/view/CustomMenuListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    invoke-direct {p0}, Landroid/view/CustomMenuListActivity;->c()V

    .line 271
    iput-object p1, p0, Landroid/view/CustomMenuListActivity;->b:Landroid/widget/ListAdapter;

    .line 272
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    monitor-exit p0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/view/CustomMenuListActivity;->c()V

    .line 305
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onContentChanged()V

    .line 247
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    .line 249
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    if-eqz v1, :cond_1

    .line 255
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 257
    :cond_1
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/view/CustomMenuListActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    iget-boolean v0, p0, Landroid/view/CustomMenuListActivity;->e:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuListActivity;->a(Landroid/widget/ListAdapter;)V

    .line 261
    :cond_2
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/CustomMenuListActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CustomMenuListActivity;->e:Z

    .line 263
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/view/CustomMenuListActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/CustomMenuListActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onDestroy()V

    .line 231
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/view/CustomMenuListActivity;->c()V

    .line 221
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method
