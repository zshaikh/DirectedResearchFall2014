.class Lcom/facebook/widget/PlacePickerFragment$1;
.super Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PlacePickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphPlace;",
        ">.PickerFragmentAdapter<",
        "Lcom/facebook/model/GraphPlace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    .line 343
    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;-><init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "drawable.com_facebook_place_default_icon"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/model/GraphPlace;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphPlace;)I

    move-result v0

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphPlace;)I
    .locals 2
    .parameter "graphObject"

    .prologue
    .line 363
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "layout.com_facebook_placepickerfragment_list_row"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/model/GraphPlace;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$1;->getSubTitleOfGraphObject(Lcom/facebook/model/GraphPlace;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/model/GraphPlace;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "graphObject"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    invoke-interface {p1}, Lcom/facebook/model/GraphPlace;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, category:Ljava/lang/String;
    const-string v3, "were_here_count"

    invoke-interface {p1, v3}, Lcom/facebook/model/GraphPlace;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 350
    .local v2, wereHereCount:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 351
    .local v1, result:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 352
    iget-object v3, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v5, "string.com_facebook_placepicker_subtitle_format"

    invoke-virtual {v4, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_0
    :goto_0
    return-object v1

    .line 353
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 354
    iget-object v3, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v5, "string.com_facebook_placepicker_subtitle_were_here_only_format"

    invoke-virtual {v4, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 355
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 356
    iget-object v3, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    sget-object v4, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v5, "string.com_facebook_placepicker_subtitle_catetory_only_format"

    invoke-virtual {v4, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
