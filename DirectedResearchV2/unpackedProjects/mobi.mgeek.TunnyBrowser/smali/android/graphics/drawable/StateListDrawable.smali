.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private final mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 248
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 249
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 250
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 251
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/a;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 92
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 94
    :cond_0
    return-void
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    # invokes: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v2, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 181
    array-length v3, v2

    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    new-array v1, v3, [[I

    iput-object v1, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 184
    aget-object v0, v2, v1

    .line 185
    if-eqz v0, :cond_0

    .line 186
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v4, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v4, v1

    .line 183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 191
    :cond_2
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    # invokes: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 106
    if-gez v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    # invokes: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method
