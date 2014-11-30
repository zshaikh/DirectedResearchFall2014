.class public Lcom/redbox/android/activity/LandingActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "LandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;
    }
.end annotation


# instance fields
.field btnLogin:Landroid/widget/ImageButton;

.field headerView:Lcom/redbox/android/view/HeaderView;

.field inputMgr:Landroid/view/inputmethod/InputMethodManager;

.field public kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

.field listHeaderView:Landroid/view/View;

.field movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

.field moviesList:Landroid/widget/ListView;

.field private searchedit:Landroid/widget/EditText;

.field searchheader:Landroid/view/View;

.field selectedGenre:Ljava/lang/String;

.field private selectionView:Lcom/redbox/android/view/RBSelectionView;

.field serch:Lcom/redbox/android/view/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-direct {v0}, Lcom/redbox/android/adapter/MovieListAdapter;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    .line 65
    const-string v0, "0"

    iput-object v0, p0, Lcom/redbox/android/activity/LandingActivity;->selectedGenre:Ljava/lang/String;

    .line 431
    new-instance v0, Lcom/redbox/android/activity/LandingActivity$1;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/LandingActivity$1;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/LandingActivity;->kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/LandingActivity;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V

    return-void
.end method

.method static synthetic access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/redbox/android/activity/LandingActivity;)Lcom/redbox/android/view/RBSelectionView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    return-object v0
.end method

.method private updateMoviesByKisok()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 313
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->isNew()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    const-string v2, "new Kisok , updating inventory"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->getInventoryMovies()Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    .local v0, "movieIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/redbox/android/adapter/MovieService;->getInstance()Lcom/redbox/android/adapter/MovieService;

    move-result-object v2

    .line 321
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity;->selectedGenre:Ljava/lang/String;

    .line 322
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {v2, v0, v3, v4}, Lcom/redbox/android/adapter/MovieService;->getMoviesByID(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 323
    .local v1, "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    if-nez v1, :cond_0

    .line 324
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/redbox/android/activity/LandingActivity$9;

    invoke-direct {v3, p0}, Lcom/redbox/android/activity/LandingActivity$9;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v2, v1}, Lcom/redbox/android/adapter/MovieListAdapter;->updateData(Ljava/util/List;)V

    .line 338
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v2}, Lcom/redbox/android/adapter/MovieListAdapter;->notifyDataSetChanged()V

    .line 339
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/LandingActivity;->removeDialog(I)V

    .line 426
    .end local v0    # "movieIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->isNew()Z

    move-result v2

    if-nez v2, :cond_4

    .line 344
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    const-string v2, "Old Kisok , refreshing inventory"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/model/SelectedKioskManager;->getInventoryMovies()Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    .restart local v0    # "movieIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/redbox/android/adapter/MovieService;->getInstance()Lcom/redbox/android/adapter/MovieService;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity;->selectedGenre:Ljava/lang/String;

    .line 350
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-virtual {v2, v0, v3, v4}, Lcom/redbox/android/adapter/MovieService;->getMoviesByID(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 351
    .restart local v1    # "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    if-nez v1, :cond_3

    .line 352
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/redbox/android/activity/LandingActivity$10;

    invoke-direct {v3, p0}, Lcom/redbox/android/activity/LandingActivity$10;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :cond_3
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v2, v1}, Lcom/redbox/android/adapter/MovieListAdapter;->updateData(Ljava/util/List;)V

    .line 366
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/redbox/android/activity/LandingActivity$11;

    invoke-direct {v3, p0}, Lcom/redbox/android/activity/LandingActivity$11;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 377
    .end local v0    # "movieIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    :cond_4
    invoke-static {p0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/adapter/LocalDataStore;->cacheExists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 378
    const-string v2, "Showing All Movies"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/redbox/android/adapter/MovieService;->getInstance()Lcom/redbox/android/adapter/MovieService;

    move-result-object v2

    .line 380
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->selectedGenre:Ljava/lang/String;

    .line 381
    iget-object v5, p0, Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/redbox/android/adapter/MovieService;->getMoviesFromTo(IILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 382
    .restart local v1    # "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    if-nez v1, :cond_5

    .line 383
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/redbox/android/activity/LandingActivity$12;

    invoke-direct {v3, p0}, Lcom/redbox/android/activity/LandingActivity$12;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :cond_5
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v2, v1}, Lcom/redbox/android/adapter/MovieListAdapter;->updateData(Ljava/util/List;)V

    .line 397
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/redbox/android/activity/LandingActivity$13;

    invoke-direct {v3, p0}, Lcom/redbox/android/activity/LandingActivity$13;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 411
    .end local v1    # "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    :cond_6
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 412
    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/LandingActivity;->removeDialog(I)V

    .line 414
    :cond_7
    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/LandingActivity;->showDialog(I)V

    .line 418
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 419
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 420
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v2

    .line 421
    new-instance v3, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    invoke-direct {v3, p0, v4}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;-><init>(Lcom/redbox/android/activity/LandingActivity;Z)V

    .line 420
    invoke-virtual {v2, v3}, Lcom/redbox/android/http/ServerCommunicationHandler;->getAllMovies(Lcom/redbox/android/http/ServerCommunicationListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v4, "Activity created"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->setContentView(I)V

    .line 79
    const v4, 0x7f07002d

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/redbox/android/view/SearchView;

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->serch:Lcom/redbox/android/view/SearchView;

    .line 80
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->serch:Lcom/redbox/android/view/SearchView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/redbox/android/view/SearchView;->setVisibility(I)V

    .line 81
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/redbox/android/view/HeaderView;

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    .line 82
    const v4, 0x7f07002f

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/redbox/android/view/RBSelectionView;

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    .line 83
    const v4, 0x7f07002e

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    .line 84
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 85
    const v5, 0x7f030013

    .line 84
    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->listHeaderView:Landroid/view/View;

    .line 86
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/redbox/android/activity/LandingActivity;->listHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 88
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->inputMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 93
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    new-instance v5, Lcom/redbox/android/activity/LandingActivity$2;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/LandingActivity$2;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    const v4, 0x7f07008a

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;

    .line 117
    const v4, 0x7f070089

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 118
    .local v2, "searchBtn":Landroid/widget/ImageButton;
    const v4, 0x7f07008b

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 119
    .local v3, "searchBtnCancel":Landroid/widget/ImageButton;
    new-instance v4, Lcom/redbox/android/activity/LandingActivity$3;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/LandingActivity$3;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->moviesList:Landroid/widget/ListView;

    new-instance v5, Lcom/redbox/android/activity/LandingActivity$4;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/LandingActivity$4;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    new-instance v4, Lcom/redbox/android/activity/LandingActivity$5;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/LandingActivity$5;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v4, p0, Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;

    new-instance v5, Lcom/redbox/android/activity/LandingActivity$6;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/LandingActivity$6;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    const v4, 0x7f070088

    invoke-virtual {p0, v4}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 206
    .local v1, "movieFilterSpinner":Landroid/widget/Spinner;
    const/high16 v4, 0x7f060000

    const v5, 0x7f030003

    .line 205
    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 210
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 211
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 212
    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 214
    new-instance v4, Lcom/redbox/android/activity/LandingActivity$7;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/LandingActivity$7;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 255
    invoke-static {p0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbox/android/adapter/LocalDataStore;->cacheExists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v4

    .line 258
    new-instance v5, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;-><init>(Lcom/redbox/android/activity/LandingActivity;Z)V

    .line 257
    invoke-virtual {v4, v5}, Lcom/redbox/android/http/ServerCommunicationHandler;->conditionalGetAllMovies(Lcom/redbox/android/http/ServerCommunicationListener;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 614
    sget-boolean v0, Lcom/redbox/android/utils/RBLogger;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 615
    sget-boolean v0, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    if-eqz v0, :cond_1

    .line 616
    const-string v0, "Switch to QA url"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 621
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 618
    :cond_1
    const-string v0, "Switch to Production url"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 626
    sget-boolean v0, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    .line 627
    invoke-static {p0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v0

    .line 628
    const-string v1, "PREFERENCES_URL_MODE"

    .line 629
    sget-boolean v2, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    .line 627
    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/adapter/LocalDataStore;->setBoolean(Ljava/lang/String;Z)V

    .line 630
    sget-boolean v0, Lcom/redbox/android/utils/Configuration;->useProductionURL:Z

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "Switch to QA url"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 635
    :goto_1
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 626
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const-string v0, "Switch to Production url"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 264
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 265
    const-string v2, "onResume--------------"

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/LandingActivity;->d(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v2

    .line 267
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity;->kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 266
    invoke-virtual {v2, v3}, Lcom/redbox/android/model/SelectedKioskManager;->kioskStateChangedListener(Lcom/redbox/android/adapter/KioskSelectedListener;)V

    .line 268
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    invoke-virtual {v2}, Lcom/redbox/android/view/RBSelectionView;->removeAllViews()V

    .line 269
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    invoke-virtual {v2}, Lcom/redbox/android/view/RBSelectionView;->refreshSelectedKiosk()V

    .line 270
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    invoke-virtual {v2}, Lcom/redbox/android/view/HeaderView;->updateButtons()V

    .line 274
    :cond_0
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/LandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 275
    .local v1, "toggle":Landroid/widget/ToggleButton;
    if-eqz v1, :cond_1

    .line 276
    new-instance v2, Lcom/redbox/android/activity/LandingActivity$8;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/LandingActivity$8;-><init>(Lcom/redbox/android/activity/LandingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 303
    :cond_1
    const-string v2, "Loading via onResume"

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/LandingActivity;->i(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/LandingActivity;->showDialog(I)V

    .line 305
    iget-object v2, p0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v3, "Updating selected Kiosk Inventory"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 306
    invoke-direct {p0}, Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V

    .line 307
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/LandingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 310
    return-void
.end method
