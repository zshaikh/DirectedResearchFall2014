.class public Lcom/e/a/ap;
.super Lcom/e/a/t;
.source "SVGStateListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private final a:Lcom/e/a/ar;

.field private b:Z

.field private c:Lcom/e/a/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0}, Lcom/e/a/ap;-><init>(Lcom/e/a/ar;Landroid/content/res/Resources;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/e/a/ar;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/e/a/t;-><init>()V

    .line 279
    new-instance v0, Lcom/e/a/ar;

    invoke-direct {v0, p1, p0, p2}, Lcom/e/a/ar;-><init>(Lcom/e/a/ar;Lcom/e/a/ap;Landroid/content/res/Resources;)V

    .line 280
    iput-object v0, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    .line 281
    invoke-virtual {p0, v0}, Lcom/e/a/ap;->a(Lcom/e/a/u;)V

    .line 282
    invoke-virtual {p0}, Lcom/e/a/ap;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/e/a/ap;->onStateChange([I)Z

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/ar;Landroid/content/res/Resources;Lcom/e/a/aq;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/e/a/ap;-><init>(Lcom/e/a/ar;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/e/a/v;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0}, Lcom/e/a/ap;-><init>(Lcom/e/a/ar;Landroid/content/res/Resources;)V

    .line 65
    iput-object p1, p0, Lcom/e/a/ap;->c:Lcom/e/a/v;

    .line 66
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    .line 106
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 109
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v6, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    .line 110
    :cond_1
    if-ne v0, v10, :cond_0

    .line 114
    if-gt v1, v6, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    .line 123
    new-array v8, v7, [I

    move v1, v4

    move v5, v4

    move v3, v4

    .line 124
    :goto_1
    if-ge v5, v7, :cond_2

    .line 125
    invoke-interface {p3, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v0

    .line 126
    if-nez v0, :cond_3

    .line 135
    :cond_2
    invoke-static {v8, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    .line 138
    if-eqz v3, :cond_6

    .line 139
    iget-object v0, p0, Lcom/e/a/ap;->c:Lcom/e/a/v;

    invoke-virtual {v0, v3}, Lcom/e/a/v;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    :goto_2
    iget-object v2, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    invoke-virtual {v2, v1, v0}, Lcom/e/a/ar;->a([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 128
    :cond_3
    const v2, 0x1010199

    if-ne v0, v2, :cond_4

    .line 129
    invoke-interface {p3, v5, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 124
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 131
    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p3, v5, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_4
    aput v0, v8, v1

    move v0, v2

    move v1, v3

    goto :goto_3

    :cond_5
    neg-int v0, v0

    goto :goto_4

    .line 141
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    .line 143
    if-eq v0, v10, :cond_7

    .line 144
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/e/a/ap;->c:Lcom/e/a/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/e/a/v;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/e/a/ap;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/e/a/ap;->onStateChange([I)Z

    .line 155
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/e/a/ap;->b:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/e/a/t;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    invoke-static {v0}, Lcom/e/a/ar;->a(Lcom/e/a/ar;)[[I

    move-result-object v2

    .line 216
    array-length v3, v2

    .line 217
    iget-object v0, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    new-array v1, v3, [[I

    invoke-static {v0, v1}, Lcom/e/a/ar;->a(Lcom/e/a/ar;[[I)[[I

    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 219
    aget-object v0, v2, v1

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v4, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    invoke-static {v4}, Lcom/e/a/ar;->a(Lcom/e/a/ar;)[[I

    move-result-object v4

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v4, v1

    .line 218
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/ap;->b:Z

    .line 226
    :cond_2
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    invoke-static {v0, p1}, Lcom/e/a/ar;->a(Lcom/e/a/ar;[I)I

    move-result v0

    .line 91
    if-gez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/e/a/ap;->a:Lcom/e/a/ar;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-static {v0, v1}, Lcom/e/a/ar;->a(Lcom/e/a/ar;[I)I

    move-result v0

    .line 94
    :cond_0
    invoke-virtual {p0, v0}, Lcom/e/a/ap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/e/a/t;->onStateChange([I)Z

    move-result v0

    goto :goto_0
.end method
