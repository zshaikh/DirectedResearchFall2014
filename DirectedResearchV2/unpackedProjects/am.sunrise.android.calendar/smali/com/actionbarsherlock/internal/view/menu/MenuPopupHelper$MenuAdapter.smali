.class Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# instance fields
.field private mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 322
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 323
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 324
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 5

    .prologue
    .line 365
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$400(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_1

    .line 367
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$400(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 370
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 371
    if-ne v0, v2, :cond_0

    .line 372
    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 378
    :goto_1
    return-void

    .line 369
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$200(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 329
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 330
    :goto_0
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 333
    :goto_1
    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$200(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 338
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    :goto_0
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 340
    add-int/lit8 p1, p1, 0x1

    .line 342
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 348
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    if-nez p2, :cond_1

    .line 353
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->access$300(Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 356
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    .line 357
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-boolean v2, v2, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 358
    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V

    .line 361
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
