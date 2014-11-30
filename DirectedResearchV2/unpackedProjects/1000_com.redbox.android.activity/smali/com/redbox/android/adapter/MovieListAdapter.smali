.class public Lcom/redbox/android/adapter/MovieListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MovieListAdapter.java"


# static fields
.field public static final NORMAL_MODE:I = 0x2

.field public static final SEARCH_MODE:I = 0x1


# instance fields
.field allMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Movie;",
            ">;"
        }
    .end annotation
.end field

.field ctx:Landroid/content/Context;

.field mode:I

.field movieCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->allMovies:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->movieCount:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->mode:I

    .line 33
    return-void
.end method

.method private isInNormalMode()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSearchMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 114
    iget v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->mode:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->movieCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f070054

    const/4 v10, 0x0

    .line 63
    iget v8, p0, Lcom/redbox/android/adapter/MovieListAdapter;->movieCount:I

    if-lez v8, :cond_3

    .line 64
    iget-object v8, p0, Lcom/redbox/android/adapter/MovieListAdapter;->allMovies:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/redbox/android/model/Movie;

    .line 66
    .local v5, "movie":Lcom/redbox/android/model/Movie;
    if-eqz p2, :cond_2

    instance-of v8, p2, Lcom/redbox/android/view/MovieTitleView;

    if-eqz v8, :cond_2

    .line 67
    move-object v0, p2

    check-cast v0, Lcom/redbox/android/view/MovieTitleView;

    move-object v7, v0

    .line 75
    .local v7, "titleView":Lcom/redbox/android/view/MovieTitleView;
    :goto_0
    const v8, 0x7f070053

    invoke-virtual {v7, v8}, Lcom/redbox/android/view/MovieTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "dateLayout":Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 78
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v5}, Lcom/redbox/android/model/Movie;->getRelease()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 81
    .local v1, "d":Ljava/util/Date;
    const v8, 0x7f070054

    invoke-virtual {v7, v8}, Lcom/redbox/android/view/MovieTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 82
    const-string v9, "MMM d, yyyy"

    invoke-static {v9, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "d":Ljava/util/Date;
    :goto_1
    invoke-virtual {v7, v5}, Lcom/redbox/android/view/MovieTitleView;->setMovieObject(Lcom/redbox/android/model/Movie;)V

    .line 91
    invoke-direct {p0}, Lcom/redbox/android/adapter/MovieListAdapter;->isInNormalMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    if-lez p1, :cond_1

    .line 97
    iget-object v8, p0, Lcom/redbox/android/adapter/MovieListAdapter;->allMovies:Ljava/util/List;

    const/4 v9, 0x1

    sub-int v9, p1, v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/redbox/android/model/Movie;

    .line 99
    .local v6, "prevMovie":Lcom/redbox/android/model/Movie;
    invoke-virtual {v6}, Lcom/redbox/android/model/Movie;->getRelease()Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-virtual {v5}, Lcom/redbox/android/model/Movie;->getRelease()Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 101
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .end local v6    # "prevMovie":Lcom/redbox/android/model/Movie;
    :cond_1
    move-object v8, v7

    .line 109
    .end local v2    # "dateLayout":Landroid/view/View;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v5    # "movie":Lcom/redbox/android/model/Movie;
    .end local v7    # "titleView":Lcom/redbox/android/view/MovieTitleView;
    :goto_2
    return-object v8

    .line 70
    .restart local v5    # "movie":Lcom/redbox/android/model/Movie;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 69
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 70
    const v9, 0x7f03000e

    invoke-virtual {v8, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 69
    check-cast v7, Lcom/redbox/android/view/MovieTitleView;

    .restart local v7    # "titleView":Lcom/redbox/android/view/MovieTitleView;
    goto :goto_0

    .line 83
    .restart local v2    # "dateLayout":Landroid/view/View;
    .restart local v3    # "df":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 84
    .local v4, "e":Ljava/text/ParseException;
    const-string v8, "Problem parsing date"

    invoke-static {p0, v8}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7, v11}, Lcom/redbox/android/view/MovieTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 86
    invoke-virtual {v5}, Lcom/redbox/android/model/Movie;->getRelease()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v2    # "dateLayout":Landroid/view/View;
    .end local v3    # "df":Ljava/text/SimpleDateFormat;
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v5    # "movie":Lcom/redbox/android/model/Movie;
    .end local v7    # "titleView":Lcom/redbox/android/view/MovieTitleView;
    :cond_3
    move-object v8, v12

    .line 109
    goto :goto_2
.end method

.method public setNormalMode()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->mode:I

    .line 52
    return-void
.end method

.method public setSearchMode()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->mode:I

    .line 56
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Movie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    iput-object p1, p0, Lcom/redbox/android/adapter/MovieListAdapter;->allMovies:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->allMovies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/redbox/android/adapter/MovieListAdapter;->movieCount:I

    .line 124
    return-void
.end method
