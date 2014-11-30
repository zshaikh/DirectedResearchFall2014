.class final Landroid/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>()V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method private indexOfStateSet([I)I
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v2

    .line 220
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 221
    aget-object v3, v1, v0

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    :goto_1
    return v0

    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 213
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 214
    return v0
.end method

.method public growArray(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 241
    new-array v0, p2, [[I

    .line 242
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 244
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/a;)V

    return-object v0
.end method
