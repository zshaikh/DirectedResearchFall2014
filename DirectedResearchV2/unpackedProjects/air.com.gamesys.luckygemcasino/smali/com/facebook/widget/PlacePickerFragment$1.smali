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
    .param p3, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    .line 356
    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;-><init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 2

    .prologue
    .line 385
    sget-object v0, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v1, "drawable.com_facebook_place_default_icon"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020019

    goto :goto_0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/model/GraphPlace;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphPlace;)I

    move-result v0

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphPlace;)I
    .locals 2
    .param p1, "graphObject"    # Lcom/facebook/model/GraphPlace;

    .prologue
    .line 379
    sget-object v0, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v1, "layout.com_facebook_placepickerfragment_list_row"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 380
    :cond_0
    const v0, 0x7f03000b

    goto :goto_0
.end method

.method protected bridge synthetic getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/model/GraphPlace;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$1;->getSubTitleOfGraphObject(Lcom/facebook/model/GraphPlace;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/model/GraphPlace;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "graphObject"    # Lcom/facebook/model/GraphPlace;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 360
    invoke-interface {p1}, Lcom/facebook/model/GraphPlace;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "category":Ljava/lang/String;
    const-string v3, "were_here_count"

    invoke-interface {p1, v3}, Lcom/facebook/model/GraphPlace;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 363
    .local v2, "wereHereCount":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 364
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 365
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    sget-object v3, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v5, "string.com_facebook_placepicker_subtitle_format"

    invoke-virtual {v3, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 366
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    .line 365
    invoke-virtual {v4, v3, v5}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 374
    :cond_0
    :goto_1
    return-object v1

    .line 366
    :cond_1
    const v3, 0x7f07000b

    goto :goto_0

    .line 367
    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 368
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    sget-object v3, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v5, "string.com_facebook_placepicker_subtitle_were_here_only_format"

    invoke-virtual {v3, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 369
    :goto_2
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 368
    invoke-virtual {v4, v3, v5}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 370
    goto :goto_1

    .line 369
    :cond_3
    const v3, 0x7f07000d

    goto :goto_2

    .line 370
    :cond_4
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 371
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    sget-object v3, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/facebook/widget/PlacePickerFragment$1;->asContext:Lcom/adobe/fre/FREContext;

    const-string v5, "string.com_facebook_placepicker_subtitle_catetory_only_format"

    invoke-virtual {v3, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 372
    :goto_3
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    .line 371
    invoke-virtual {v4, v3, v5}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 372
    :cond_5
    const v3, 0x7f07000c

    goto :goto_3
.end method
