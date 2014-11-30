.class public Lcom/redbox/android/activity/MovieDetailActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "MovieDetailActivity.java"


# static fields
.field protected static final MOVIE_ID_KEY:Ljava/lang/String; = "movie_id"


# instance fields
.field currentMovie:Lcom/redbox/android/model/MovieDetail;

.field headerView:Lcom/redbox/android/view/HeaderView;

.field public kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

.field movieFile:Ljava/io/File;

.field movieId:I

.field selectionView:Lcom/redbox/android/view/RBSelectionView;

.field task:Lcom/redbox/android/model/ImageDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 292
    new-instance v0, Lcom/redbox/android/activity/MovieDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/MovieDetailActivity$1;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity;->kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MovieDetailActivity;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->modifyReserveFindButton()V

    return-void
.end method

.method private modifyReserveFindButton()V
    .locals 3

    .prologue
    .line 261
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 263
    .local v0, "btnRentFind":Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/redbox/android/activity/MovieDetailActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/redbox/android/activity/MovieDetailActivity$6;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method


# virtual methods
.method public getMovieDetail()V
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/redbox/android/activity/MovieDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/MovieDetailActivity$3;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;)V

    .line 198
    iget v2, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->getMovieDetail(Lcom/redbox/android/http/ServerCommunicationListener;I)V

    .line 199
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    packed-switch p2, :pswitch_data_0

    .line 342
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/redbox/android/activity/RBBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 343
    return-void

    .line 336
    :pswitch_0
    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->finish()V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v5, 0x7f03000d

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/MovieDetailActivity;->setContentView(I)V

    .line 67
    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/redbox/android/view/HeaderView;

    iput-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    .line 68
    const v5, 0x7f07002f

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/redbox/android/view/RBSelectionView;

    iput-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    .line 70
    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "movie_id"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    .line 71
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/MovieDetailActivity;->showDialog(I)V

    .line 73
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f05003d

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/MovieDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/redbox/android/activity/MovieDetailActivity$2;

    invoke-direct {v6, p0}, Lcom/redbox/android/activity/MovieDetailActivity$2;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 82
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".obj"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    .line 84
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    .line 87
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 86
    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 89
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Lcom/redbox/android/model/MovieDetail;

    if-eqz v5, :cond_0

    .line 90
    move-object v0, v3

    check-cast v0, Lcom/redbox/android/model/MovieDetail;

    move-object v2, v0

    .line 91
    .local v2, "m":Lcom/redbox/android/model/MovieDetail;
    iput-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity;->currentMovie:Lcom/redbox/android/model/MovieDetail;

    .line 92
    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/MovieDetailActivity;->updateView(Lcom/redbox/android/model/MovieDetail;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 117
    .end local v2    # "m":Lcom/redbox/android/model/MovieDetail;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    const-string v5, "Getting movie detail"

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getMovieDetail()V

    .line 123
    :cond_1
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v5

    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/redbox/android/utils/RBTracker;->setApplication(Landroid/app/Application;)V

    .line 124
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v5

    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/redbox/android/utils/RBTracker;->trackMovieDetail(Ljava/lang/Object;)V

    .line 125
    return-void

    .line 95
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 96
    .local v1, "e":Ljava/io/StreamCorruptedException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error reading object for movie: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    .line 98
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 100
    .local v1, "e":Ljava/io/OptionalDataException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error reading object for movie: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/OptionalDataException;->printStackTrace()V

    .line 102
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/io/OptionalDataException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 104
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error reading object for movie: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 106
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 107
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 108
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error reading object for movie: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 112
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error reading object for movie: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 114
    iget-object v5, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 204
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    invoke-virtual {v1}, Lcom/redbox/android/view/RBSelectionView;->removeAllViews()V

    .line 206
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->selectionView:Lcom/redbox/android/view/RBSelectionView;

    invoke-virtual {v1}, Lcom/redbox/android/view/RBSelectionView;->refreshSelectedKiosk()V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    invoke-virtual {v1}, Lcom/redbox/android/view/HeaderView;->updateButtons()V

    .line 211
    :cond_1
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 212
    .local v0, "toggle":Landroid/widget/ToggleButton;
    if-eqz v0, :cond_2

    .line 213
    new-instance v1, Lcom/redbox/android/activity/MovieDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/MovieDetailActivity$4;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    :cond_2
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/redbox/android/activity/MovieDetailActivity;->kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 239
    invoke-virtual {v1, v2}, Lcom/redbox/android/model/SelectedKioskManager;->kioskStateChangedListener(Lcom/redbox/android/adapter/KioskSelectedListener;)V

    .line 241
    invoke-direct {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->modifyReserveFindButton()V

    .line 243
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 244
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->showDialog(I)V

    .line 246
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f05003d

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/MovieDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/redbox/android/activity/MovieDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/MovieDetailActivity$5;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 255
    const-string v1, "Getting movie detail"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getMovieDetail()V

    .line 258
    :cond_3
    return-void
.end method

.method public updateView(Lcom/redbox/android/model/MovieDetail;)V
    .locals 13
    .param p1, "m"    # Lcom/redbox/android/model/MovieDetail;

    .prologue
    .line 347
    const v9, 0x7f070046

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 348
    .local v3, "img":Landroid/widget/ImageView;
    const v9, 0x7f070045

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 349
    .local v4, "name":Landroid/widget/TextView;
    const v9, 0x7f070049

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 350
    .local v6, "rating":Landroid/widget/TextView;
    const v9, 0x7f07004b

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 351
    .local v7, "runningTime":Landroid/widget/TextView;
    const v9, 0x7f07004d

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 352
    .local v1, "genre":Landroid/widget/TextView;
    const v9, 0x7f07004f

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 353
    .local v8, "starring":Landroid/widget/TextView;
    const v9, 0x7f070051

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 354
    .local v5, "plot":Landroid/widget/TextView;
    const v9, 0x7f070047

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 356
    .local v0, "btnRentFind":Landroid/widget/ImageButton;
    new-instance v9, Lcom/redbox/android/activity/MovieDetailActivity$7;

    invoke-direct {v9, p0}, Lcom/redbox/android/activity/MovieDetailActivity$7;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getRating()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getRunningTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getGenre()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getActors()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/redbox/android/activity/MovieDetailActivity;->getCacheDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "full_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getImg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 457
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 458
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getting from cache: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getImg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    :goto_0
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/redbox/android/activity/MovieDetailActivity;->removeDialog(I)V

    .line 510
    return-void

    .line 462
    :cond_0
    iget-object v9, p0, Lcom/redbox/android/activity/MovieDetailActivity;->task:Lcom/redbox/android/model/ImageDownloadTask;

    if-eqz v9, :cond_1

    .line 465
    invoke-static {}, Lcom/redbox/android/http/ImageDownloader;->getInstance()Lcom/redbox/android/http/ImageDownloader;

    move-result-object v9

    iget-object v10, p0, Lcom/redbox/android/activity/MovieDetailActivity;->task:Lcom/redbox/android/model/ImageDownloadTask;

    invoke-virtual {v9, v10}, Lcom/redbox/android/http/ImageDownloader;->removeTask(Lcom/redbox/android/model/ImageDownloadTask;)V

    .line 467
    :cond_1
    new-instance v9, Lcom/redbox/android/model/ImageDownloadTask;

    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://images.redbox.com/Images/Full/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/MovieDetail;->getImg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 469
    new-instance v11, Lcom/redbox/android/activity/MovieDetailActivity$8;

    invoke-direct {v11, p0, v3, v2}, Lcom/redbox/android/activity/MovieDetailActivity$8;-><init>(Lcom/redbox/android/activity/MovieDetailActivity;Landroid/widget/ImageView;Ljava/io/File;)V

    .line 505
    iget v12, p0, Lcom/redbox/android/activity/MovieDetailActivity;->movieId:I

    invoke-direct {v9, v10, v11, v12}, Lcom/redbox/android/model/ImageDownloadTask;-><init>(Ljava/lang/String;Lcom/redbox/android/http/ImageDownloadListener;I)V

    .line 467
    iput-object v9, p0, Lcom/redbox/android/activity/MovieDetailActivity;->task:Lcom/redbox/android/model/ImageDownloadTask;

    .line 506
    invoke-static {}, Lcom/redbox/android/http/ImageDownloader;->getInstance()Lcom/redbox/android/http/ImageDownloader;

    move-result-object v9

    iget-object v10, p0, Lcom/redbox/android/activity/MovieDetailActivity;->task:Lcom/redbox/android/model/ImageDownloadTask;

    invoke-virtual {v9, v10}, Lcom/redbox/android/http/ImageDownloader;->push(Lcom/redbox/android/model/ImageDownloadTask;)V

    goto :goto_0
.end method
