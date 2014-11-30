.class public Lcom/dolphin/browser/theme/d/l;
.super Ljava/lang/Object;
.source "XmlResParser.java"

# interfaces
.implements Landroid/util/AttributeSet;
.implements Lorg/xmlpull/v1/XmlPullParser;


# instance fields
.field private a:Lorg/xmlpull/v1/XmlPullParser;

.field private b:Landroid/content/res/Resources;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 89
    iput-object p2, p0, Lcom/dolphin/browser/theme/d/l;->b:Landroid/content/res/Resources;

    .line 90
    iput-object p3, p0, Lcom/dolphin/browser/theme/d/l;->c:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/dolphin/browser/theme/d/m;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->a:Lcom/dolphin/browser/theme/d/m;

    .line 63
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v0, "@drawable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->b:Lcom/dolphin/browser/theme/d/m;

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "@color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->c:Lcom/dolphin/browser/theme/d/m;

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "@android:color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->e:Lcom/dolphin/browser/theme/d/m;

    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "@android:drawable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->d:Lcom/dolphin/browser/theme/d/m;

    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lcom/dolphin/browser/theme/d/m;->a:Lcom/dolphin/browser/theme/d/m;

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 68
    const-string v0, "state_pressed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/dolphin/browser/theme/d/k;->d()I

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v0, "state_focused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcom/dolphin/browser/theme/d/k;->a()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "state_enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-static {}, Lcom/dolphin/browser/theme/d/k;->b()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "state_selected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-static {}, Lcom/dolphin/browser/theme/d/k;->c()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "state_checked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-static {}, Lcom/dolphin/browser/theme/d/k;->e()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "color"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const v0, 0x10101a5

    goto :goto_0

    .line 80
    :cond_5
    const-string v0, "drawable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    const v0, 0x1010199

    goto :goto_0

    .line 83
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/l;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeIntValue(II)I
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/l;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return p2

    .line 165
    :cond_1
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameResource(I)I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/l;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/dolphin/browser/theme/d/l;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/d/l;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return p2

    .line 153
    :cond_1
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/l;->b:Landroid/content/res/Resources;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/theme/d/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount(I)I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v0

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    move-result v0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 235
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/l;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    return-void
.end method
