.class public Lcom/facebook/widget/PlacePickerFragment;
.super Lcom/facebook/widget/PickerFragment;
.source "PlacePickerFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;,
        Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DEFAULT_RADIUS_IN_METERS:I = 0x3e8

.field public static final DEFAULT_RESULTS_LIMIT:I = 0x64

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.Location"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final RADIUS_IN_METERS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

.field public static final RESULTS_LIMIT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ResultsLimit"

.field public static final SEARCH_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.SearchText"

.field public static final SHOW_SEARCH_BOX_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

.field private static final TAG:Ljava/lang/String; = "PlacePickerFragment"

.field private static final WERE_HERE_COUNT:Ljava/lang/String; = "were_here_count"

.field private static final searchTextTimerDelayInMilliseconds:I = 0x7d0


# instance fields
.field private hasSearchTextChangedSinceLastQuery:Z

.field private location:Landroid/location/Location;

.field private radiusInMeters:I

.field private resultsLimit:I

.field private searchBox:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private searchTextTimer:Ljava/util/Timer;

.field private showSearchBox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;-><init>(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const-class v1, Lcom/facebook/model/GraphPlace;

    sget-object v0, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v2, "layout.com_facebook_placepickerfragment"

    invoke-virtual {v0, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 123
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 101
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    .line 102
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 124
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 125
    return-void

    .line 123
    :cond_0
    const v0, 0x7f03000a

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/facebook/widget/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V

    return-void
.end method

.method private createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 12
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p6, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    .line 406
    .local p5, "extraFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v1, p6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v10

    .line 408
    .local v10, "request":Lcom/facebook/Request;
    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 409
    .local v7, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x5

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v11, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v11, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v11, v1

    const/4 v1, 0x3

    const-string v2, "category"

    aput-object v2, v11, v1

    const/4 v1, 0x4

    const-string v2, "were_here_count"

    aput-object v2, v11, v1

    .line 410
    .local v11, "requiredFields":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 412
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "pictureField":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 414
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_0
    invoke-virtual {v10}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v8

    .line 418
    .local v8, "parameters":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, ","

    invoke-static {v2, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v10, v8}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 421
    return-object v10
.end method

.method private createSearchTextTimer()Ljava/util/Timer;
    .locals 6

    .prologue
    .line 441
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 442
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$2;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    .line 448
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    .line 442
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 450
    return-object v0
.end method

.method private onSearchTextTimerTriggered()V
    .locals 2

    .prologue
    .line 454
    iget-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    if-eqz v1, :cond_0

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 456
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$3;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    if-eqz p1, :cond_2

    .line 427
    const-string v1, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 428
    const-string v1, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    .line 429
    const-string v1, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 432
    :cond_0
    const-string v1, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const-string v1, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 434
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 436
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    const-string v1, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    iget-boolean v2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 438
    :cond_2
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$1;

    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$1;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    .line 389
    .local v0, "adapter":Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;, "Lcom/facebook/widget/PickerFragment<Lcom/facebook/model/GraphPlace;>.PickerFragmentAdapter<Lcom/facebook/model/GraphPlace;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    .line 391
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    sget-object v0, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v1, "string.com_facebook_nearby"

    invoke-virtual {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f070010

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getRadiusInMeters()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    return v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 7
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    iget v3, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment;->extraFields:Ljava/util/HashSet;

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/widget/PlacePickerFragment;->createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResultsLimit()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Lcom/facebook/model/GraphPlace;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "selection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/model/GraphPlace;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphPlace;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method logAppEvents(Z)V
    .locals 5
    .param p1, "doneButtonClicked"    # Z

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 342
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v2, "parameters":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v1, "Completed"

    .line 348
    .local v1, "outcome":Ljava/lang/String;
    :goto_0
    const-string v3, "fb_dialog_outcome"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v4, "num_places_picked"

    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSelection()Lcom/facebook/model/GraphPlace;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string v3, "fb_place_picker_usage"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 352
    return-void

    .line 347
    .end local v1    # "outcome":Ljava/lang/String;
    :cond_0
    const-string v1, "Unknown"

    goto :goto_0

    .line 349
    .restart local v1    # "outcome":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 297
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 299
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 301
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 305
    invoke-super {p0}, Lcom/facebook/widget/PickerFragment;->onDetach()V

    .line 307
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 309
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 311
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 254
    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "styleable.com_facebook_place_picker_fragment"

    invoke-virtual {v1, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/facebook/widget/PlacePickerFragment;->obtainStyledAttributes(Landroid/util/AttributeSet;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 256
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "styleable.com_facebook_place_picker_fragment_radius_in_meters"

    invoke-virtual {v1, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 257
    :goto_0
    iget v3, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    .line 256
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 258
    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "styleable.com_facebook_place_picker_fragment_results_limit"

    invoke-virtual {v1, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 259
    :goto_1
    iget v3, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    .line 258
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    .line 260
    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v2, "styleable.com_facebook_place_picker_fragment_results_limit"

    invoke-virtual {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 261
    if-eqz v1, :cond_1

    .line 262
    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v2, "styleable.com_facebook_place_picker_fragment_search_text"

    invoke-virtual {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 265
    :cond_1
    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v2, "styleable.com_facebook_place_picker_fragment_show_search_box"

    invoke-virtual {v1, v2}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 266
    :goto_3
    iget-boolean v2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    return-void

    .line 257
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 259
    goto :goto_1

    .line 263
    :cond_4
    const/4 v1, 0x2

    goto :goto_2

    .line 266
    :cond_5
    const/4 v1, 0x3

    goto :goto_3
.end method

.method onLoadingData()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 327
    return-void
.end method

.method public onSearchBoxTextChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "forceReloadEventIfSameText"    # Z

    .prologue
    .line 216
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    const/4 p1, 0x0

    .line 223
    :cond_2
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 230
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 317
    const-string v0, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v0, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 321
    const-string v0, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    iget-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    .line 143
    return-void
.end method

.method public setRadiusInMeters(I)V
    .locals 0
    .param p1, "radiusInMeters"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    .line 161
    return-void
.end method

.method public setResultsLimit(I)V
    .locals 0
    .param p1, "resultsLimit"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    .line 179
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 p1, 0x0

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 273
    iget-boolean v2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    if-eqz v2, :cond_0

    .line 274
    sget-object v2, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "id.com_facebook_picker_list_view"

    invoke-virtual {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 277
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 278
    sget-object v2, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "layout.com_facebook_picker_search_box"

    invoke-virtual {v2, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 277
    :goto_1
    invoke-virtual {v3, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 281
    .local v1, "searchHeaderView":Landroid/view/View;
    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 283
    sget-object v2, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/facebook/widget/PlacePickerFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "id.com_facebook_picker_search_text"

    invoke-virtual {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    .line 286
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    new-instance v3, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;

    invoke-direct {v3, p0, v6}, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "searchHeaderView":Landroid/view/View;
    :cond_0
    return-void

    .line 275
    :cond_1
    const v2, 0x7f040003

    goto :goto_0

    .line 278
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    const v2, 0x7f030007

    goto :goto_1

    .line 284
    .restart local v1    # "searchHeaderView":Landroid/view/View;
    :cond_3
    const v2, 0x7f040014

    goto :goto_2
.end method
