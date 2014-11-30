.class public Lcom/e/a/af;
.super Ljava/lang/Object;
.source "SVGParser.java"


# static fields
.field private static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/e/a/af;->a:F

    return-void
.end method

.method static a(Ljava/io/InputStream;Lcom/e/a/a;)Lcom/e/a/c;
    .locals 4

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/e/a/b;->a()Lcom/e/a/c;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/e/a/an;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v1, v3}, Lcom/e/a/an;-><init>(Lcom/e/a/ak;Lcom/e/a/aj;Lcom/e/a/ag;)V

    .line 111
    invoke-virtual {v2, p1}, Lcom/e/a/an;->a(Lcom/e/a/a;)V

    .line 112
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 113
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/e/a/ae;

    invoke-direct {v1, v0}, Lcom/e/a/ae;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/e/a/af;->g(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/e/a/af;->e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFII)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/e/a/af;->e(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/e/a/af;->f(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 517
    invoke-static {p0, p1}, Lcom/e/a/af;->e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 518
    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-object p2

    :cond_0
    invoke-static {v0}, Lcom/e/a/af;->g(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/e/a/af;->f(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/e/a/al;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/e/a/af;->d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/e/a/al;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Lcom/e/a/al;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v0, v4

    move v2, v4

    .line 126
    :goto_0
    if-ge v3, v5, :cond_4

    .line 127
    if-eqz v0, :cond_0

    move v0, v4

    .line 126
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 132
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 169
    :sswitch_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 173
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 174
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const/16 v2, 0x2d

    if-ne v7, v2, :cond_2

    move v2, v3

    .line 176
    goto :goto_1

    .line 155
    :sswitch_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 158
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 159
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    new-instance v0, Lcom/e/a/al;

    invoke-direct {v0, v6, v3}, Lcom/e/a/al;-><init>(Ljava/util/ArrayList;I)V

    .line 198
    :goto_2
    return-object v0

    .line 178
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v2, v0

    move v0, v1

    .line 179
    goto :goto_1

    .line 182
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 192
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 198
    :cond_5
    new-instance v0, Lcom/e/a/al;

    invoke-direct {v0, v6, v2}, Lcom/e/a/al;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 193
    :catch_0
    move-exception v0

    goto :goto_3

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x56 -> :sswitch_1
        0x5a -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x76 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static d(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/e/a/al;
    .locals 3

    .prologue
    .line 492
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 493
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 494
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v0

    .line 498
    :goto_1
    return-object v0

    .line 493
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 202
    const-string v0, "matrix("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "matrix("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v3

    .line 204
    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 205
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    const/16 v0, 0x9

    new-array v4, v0, [F

    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v5

    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v6

    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v7

    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v8

    const/4 v5, 0x4

    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v5

    const/4 v5, 0x5

    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v5

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v1, v4, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000

    aput v1, v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setValues([F)V

    move-object v0, v2

    .line 279
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const-string v0, "translate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "translate("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v2

    .line 224
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 225
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 227
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_8

    .line 228
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 230
    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 231
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "scale("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    const-string v0, "scale("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v2

    .line 236
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 237
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 239
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 240
    invoke-static {v2}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 242
    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_0

    .line 246
    :cond_3
    const-string v0, "skewX("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const-string v0, "skewX("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 249
    invoke-static {v0}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 250
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 251
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto/16 :goto_0

    .line 254
    :cond_4
    const-string v0, "skewY("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    const-string v0, "skewY("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 257
    invoke-static {v0}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 258
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 259
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto/16 :goto_0

    .line 262
    :cond_5
    const-string v0, "rotate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    const-string v0, "rotate("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->d(Ljava/lang/String;)Lcom/e/a/al;

    move-result-object v3

    .line 264
    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 265
    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 268
    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_7

    .line 269
    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 270
    invoke-static {v3}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v0, v2

    .line 272
    :goto_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 274
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 275
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v0, v2

    .line 276
    goto/16 :goto_0

    .line 279
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method private static e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 503
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 504
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_1
    return-object v0

    .line 503
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 23

    .prologue
    .line 304
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    .line 305
    new-instance v20, Lcom/e/a/y;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/e/a/y;-><init>(Ljava/lang/CharSequence;I)V

    .line 306
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->a()V

    .line 307
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 308
    const/4 v9, 0x0

    .line 309
    const/4 v8, 0x0

    .line 310
    const/4 v7, 0x0

    .line 311
    const/4 v6, 0x0

    .line 312
    const/4 v5, 0x0

    .line 313
    const/4 v4, 0x0

    .line 314
    const/4 v3, 0x0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move v5, v3

    move v4, v8

    move v3, v9

    .line 315
    :goto_0
    move-object/from16 v0, v20

    iget v6, v0, Lcom/e/a/y;->a:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    .line 316
    move-object/from16 v0, v20

    iget v6, v0, Lcom/e/a/y;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 317
    packed-switch v6, :pswitch_data_0

    .line 341
    :cond_0
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->c()V

    move/from16 v18, v6

    move v12, v6

    .line 346
    :goto_1
    const/16 v17, 0x0

    .line 347
    sparse-switch v18, :sswitch_data_0

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    .line 478
    :goto_2
    if-nez v9, :cond_1

    move v5, v7

    move v6, v8

    .line 482
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->a()V

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v5, v12

    move v4, v7

    move v3, v8

    .line 483
    goto :goto_0

    .line 330
    :pswitch_1
    const/16 v7, 0x6d

    if-eq v5, v7, :cond_2

    const/16 v7, 0x4d

    if-ne v5, v7, :cond_3

    .line 331
    :cond_2
    add-int/lit8 v6, v5, -0x1

    int-to-char v6, v6

    move/from16 v18, v6

    move v12, v5

    .line 332
    goto :goto_1

    .line 333
    :cond_3
    const/16 v7, 0x63

    if-eq v5, v7, :cond_4

    const/16 v7, 0x43

    if-ne v5, v7, :cond_5

    :cond_4
    move/from16 v18, v5

    move v12, v5

    .line 335
    goto :goto_1

    .line 336
    :cond_5
    const/16 v7, 0x6c

    if-eq v5, v7, :cond_6

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_0

    :cond_6
    move/from16 v18, v5

    move v12, v5

    .line 338
    goto :goto_1

    .line 350
    :sswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v6

    .line 351
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v5

    .line 352
    const/16 v7, 0x6d

    move/from16 v0, v18

    if-ne v0, v7, :cond_7

    .line 353
    add-float/2addr v14, v6

    .line 354
    add-float/2addr v13, v5

    .line 355
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 356
    add-float/2addr v3, v6

    .line 357
    add-float/2addr v4, v5

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto :goto_2

    .line 361
    :cond_7
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v9, v17

    move v3, v5

    move v4, v6

    move v7, v5

    move v8, v6

    move v5, v15

    move/from16 v6, v16

    .line 365
    goto :goto_2

    .line 369
    :sswitch_1
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 370
    invoke-virtual {v2, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 375
    const/4 v3, 0x1

    move v9, v3

    move v4, v14

    move v5, v13

    move v6, v14

    move v7, v13

    move v8, v14

    move v3, v13

    .line 376
    goto :goto_2

    .line 380
    :sswitch_2
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v7

    .line 381
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v8

    .line 382
    const/16 v5, 0x6c

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    .line 383
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 384
    add-float/2addr v3, v7

    .line 385
    add-float/2addr v4, v8

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto/16 :goto_2

    .line 387
    :cond_8
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v9, v17

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v21, v8

    move v8, v7

    move/from16 v7, v21

    .line 391
    goto/16 :goto_2

    .line 395
    :sswitch_3
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v7

    .line 396
    const/16 v5, 0x68

    move/from16 v0, v18

    if-ne v0, v5, :cond_9

    .line 397
    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 398
    add-float/2addr v3, v7

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto/16 :goto_2

    .line 400
    :cond_9
    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v9, v17

    move v3, v13

    move v5, v15

    move/from16 v6, v16

    move v8, v7

    move v7, v4

    move v4, v14

    .line 403
    goto/16 :goto_2

    .line 407
    :sswitch_4
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v8

    .line 408
    const/16 v5, 0x76

    move/from16 v0, v18

    if-ne v0, v5, :cond_a

    .line 409
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 410
    add-float/2addr v4, v8

    move/from16 v9, v17

    move v5, v15

    move/from16 v6, v16

    move v7, v4

    move v8, v3

    move v3, v13

    move v4, v14

    goto/16 :goto_2

    .line 412
    :cond_a
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v9, v17

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move v7, v8

    move v8, v3

    move v3, v13

    .line 415
    goto/16 :goto_2

    .line 419
    :sswitch_5
    const/4 v11, 0x1

    .line 420
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v10

    .line 421
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v9

    .line 422
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v5

    .line 423
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v6

    .line 424
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v7

    .line 425
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v8

    .line 426
    const/16 v15, 0x63

    move/from16 v0, v18

    if-ne v0, v15, :cond_d

    .line 427
    add-float/2addr v10, v3

    .line 428
    add-float/2addr v5, v3

    .line 429
    add-float/2addr v7, v3

    .line 430
    add-float v3, v9, v4

    .line 431
    add-float/2addr v6, v4

    .line 432
    add-float/2addr v8, v4

    move v4, v3

    move v3, v10

    .line 434
    :goto_3
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v9, v11

    move v3, v13

    move v4, v14

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 439
    goto/16 :goto_2

    .line 443
    :sswitch_6
    const/4 v9, 0x1

    .line 444
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v5

    .line 445
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v6

    .line 446
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v7

    .line 447
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v8

    .line 448
    const/16 v10, 0x73

    move/from16 v0, v18

    if-ne v0, v10, :cond_b

    .line 449
    add-float/2addr v5, v3

    .line 450
    add-float/2addr v7, v3

    .line 451
    add-float/2addr v6, v4

    .line 452
    add-float/2addr v8, v4

    .line 454
    :cond_b
    const/high16 v10, 0x40000000

    mul-float/2addr v3, v10

    sub-float v3, v3, v16

    .line 455
    const/high16 v10, 0x40000000

    mul-float/2addr v4, v10

    sub-float/2addr v4, v15

    .line 456
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v3, v13

    move v4, v14

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 461
    goto/16 :goto_2

    .line 465
    :sswitch_7
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v7

    .line 466
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v8

    .line 467
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v9

    .line 468
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v5

    float-to-int v10, v5

    .line 469
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v5

    float-to-int v11, v5

    .line 470
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v5

    .line 471
    invoke-virtual/range {v20 .. v20}, Lcom/e/a/y;->e()F

    move-result v6

    .line 472
    invoke-static/range {v2 .. v11}, Lcom/e/a/af;->a(Landroid/graphics/Path;FFFFFFFII)V

    move/from16 v9, v17

    move v3, v13

    move v4, v14

    move v7, v6

    move v8, v5

    move v5, v15

    move/from16 v6, v16

    .line 475
    goto/16 :goto_2

    .line 484
    :cond_c
    return-object v2

    :cond_d
    move v4, v9

    move v3, v10

    goto :goto_3

    .line 317
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x53 -> :sswitch_6
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x73 -> :sswitch_6
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private static f(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 526
    if-nez p0, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 529
    :cond_0
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 540
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_2
    const-string v0, "dp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v1, Lcom/e/a/af;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_3
    const-string v0, "dip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v1, Lcom/e/a/af;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
