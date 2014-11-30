.class Lcom/e/a/an;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SVGParser.java"


# instance fields
.field a:Lcom/e/a/ak;

.field b:Lcom/e/a/ai;

.field c:Lcom/e/a/aj;

.field d:Landroid/graphics/RectF;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/RectF;

.field g:Lcom/e/a/a;

.field h:Z

.field i:Z

.field j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/e/a/ah;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/e/a/ah;

.field private m:Z

.field private n:I

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/e/a/ak;Lcom/e/a/aj;)V
    .locals 5

    .prologue
    const/high16 v4, 0x7f800000

    const/high16 v3, -0x800000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 710
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 696
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    .line 697
    iput-object v2, p0, Lcom/e/a/an;->e:Landroid/graphics/RectF;

    .line 698
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    .line 700
    iput-object v2, p0, Lcom/e/a/an;->g:Lcom/e/a/a;

    .line 702
    iput-boolean v1, p0, Lcom/e/a/an;->h:Z

    .line 704
    iput-boolean v1, p0, Lcom/e/a/an;->i:Z

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    .line 707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/e/a/an;->k:Ljava/util/HashMap;

    .line 708
    iput-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    .line 880
    iput-boolean v1, p0, Lcom/e/a/an;->m:Z

    .line 881
    iput v1, p0, Lcom/e/a/an;->n:I

    .line 882
    iput-boolean v1, p0, Lcom/e/a/an;->o:Z

    .line 711
    iput-object p1, p0, Lcom/e/a/an;->a:Lcom/e/a/ak;

    .line 712
    iput-object p2, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    .line 713
    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/ak;Lcom/e/a/aj;Lcom/e/a/ag;)V
    .locals 0

    .prologue
    .line 690
    invoke-direct {p0, p1, p2}, Lcom/e/a/an;-><init>(Lcom/e/a/ak;Lcom/e/a/aj;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/e/a/an;->g:Lcom/e/a/a;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/e/a/an;->g:Lcom/e/a/a;

    invoke-interface {v0, p1}, Lcom/e/a/a;->a(I)I

    move-result p1

    .line 877
    :cond_0
    return p1
.end method

.method private a(ZLorg/xml/sax/Attributes;)Lcom/e/a/ah;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 814
    new-instance v1, Lcom/e/a/ah;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/e/a/ah;-><init>(Lcom/e/a/ag;)V

    .line 815
    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/e/a/ah;->a:Ljava/lang/String;

    .line 816
    iput-boolean p1, v1, Lcom/e/a/ah;->c:Z

    .line 817
    if-eqz p1, :cond_3

    .line 818
    const-string v0, "x1"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->d:F

    .line 819
    const-string v0, "x2"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->f:F

    .line 820
    const-string v0, "y1"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->e:F

    .line 821
    const-string v0, "y2"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->g:F

    .line 827
    :goto_0
    const-string v0, "gradientTransform"

    invoke-static {v0, p2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    .line 829
    invoke-static {v0}, Lcom/e/a/af;->b(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    .line 831
    :cond_0
    const-string v0, "href"

    invoke-static {v0, p2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_2

    .line 833
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_1
    iput-object v0, v1, Lcom/e/a/ah;->b:Ljava/lang/String;

    .line 838
    :cond_2
    return-object v1

    .line 823
    :cond_3
    const-string v0, "cx"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->h:F

    .line 824
    const-string v0, "cy"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->i:F

    .line 825
    const-string v0, "r"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/e/a/ah;->j:F

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/e/a/an;->i:Z

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-interface {v0}, Lcom/e/a/ai;->b()V

    .line 924
    :cond_0
    return-void
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 895
    iget-object v0, p0, Lcom/e/a/an;->f:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 897
    :cond_3
    return-void
.end method

.method private a(FFFF)V
    .locals 2

    .prologue
    .line 900
    invoke-direct {p0, p1, p2}, Lcom/e/a/an;->a(FF)V

    .line 901
    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-direct {p0, v0, v1}, Lcom/e/a/an;->a(FF)V

    .line 902
    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 906
    iget-object v0, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/e/a/an;->a(FF)V

    .line 907
    iget-object v0, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1}, Lcom/e/a/an;->a(FF)V

    .line 908
    return-void
.end method

.method private a(Lcom/e/a/am;Ljava/lang/Integer;Z)V
    .locals 3

    .prologue
    .line 843
    const v0, 0xffffff

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v0

    .line 844
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 845
    if-nez v0, :cond_0

    .line 846
    if-eqz p3, :cond_1

    const-string v0, "fill-opacity"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/e/a/am;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 849
    :cond_0
    if-nez v0, :cond_2

    .line 850
    const/16 v0, 0xff

    .line 855
    :goto_1
    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 856
    iget-object v1, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v1, v0}, Lcom/e/a/aj;->a(I)V

    .line 857
    return-void

    .line 846
    :cond_1
    const-string v0, "stroke-opacity"

    goto :goto_0

    .line 852
    :cond_2
    const/high16 v2, 0x437f0000

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 860
    const-string v0, "viewBox"

    invoke-static {v0, p1}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 861
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 862
    const-string v1, "[\\s,]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 863
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 864
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/e/a/af;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 865
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/e/a/af;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 866
    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_1

    .line 867
    :cond_0
    iget-object v2, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    neg-float v1, v1

    neg-float v0, v0

    invoke-interface {v2, v1, v0}, Lcom/e/a/ai;->a(FF)V

    .line 871
    :cond_1
    return-void
.end method

.method private a(Lcom/e/a/am;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 774
    iget-boolean v1, p0, Lcom/e/a/an;->h:Z

    if-eqz v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 778
    :cond_1
    const-string v1, "none"

    const-string v2, "display"

    invoke-virtual {p1, v2}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    const-string v1, "stroke"

    invoke-virtual {p1, v1}, Lcom/e/a/am;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_0

    .line 783
    invoke-direct {p0, p1, v1, v0}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/lang/Integer;Z)V

    .line 785
    const-string v0, "stroke-width"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_2

    .line 789
    iget-object v1, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/e/a/aj;->a(F)V

    .line 791
    :cond_2
    const-string v0, "stroke-linecap"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    const-string v1, "round"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 793
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Cap;)V

    .line 799
    :cond_3
    :goto_1
    const-string v0, "stroke-linejoin"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    const-string v1, "miter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 801
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Join;)V

    .line 807
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Style;)V

    .line 808
    const/4 v0, 0x1

    goto :goto_0

    .line 794
    :cond_5
    const-string v1, "square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 795
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 796
    :cond_6
    const-string v1, "butt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 802
    :cond_7
    const-string v1, "round"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 803
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 804
    :cond_8
    const-string v1, "bevel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 805
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Join;)V

    goto :goto_2
.end method

.method private a(Lcom/e/a/am;Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/e/a/am;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 734
    const-string v0, "none"

    const-string v3, "display"

    invoke-virtual {p1, v3}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 770
    :goto_0
    return v0

    .line 737
    :cond_0
    iget-boolean v0, p0, Lcom/e/a/an;->h:Z

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Style;)V

    .line 739
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(I)V

    move v0, v2

    .line 740
    goto :goto_0

    .line 742
    :cond_1
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_3

    const-string v3, "url(#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 745
    const-string v3, "url(#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Shader;

    .line 747
    if-eqz v0, :cond_2

    .line 749
    iget-object v1, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v1, v0}, Lcom/e/a/aj;->a(Landroid/graphics/Shader;)V

    .line 750
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Style;)V

    move v0, v2

    .line 751
    goto :goto_0

    :cond_2
    move v0, v1

    .line 754
    goto :goto_0

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/e/a/aj;->a(Landroid/graphics/Shader;)V

    .line 758
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_4

    .line 760
    invoke-direct {p0, p1, v0, v2}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/lang/Integer;Z)V

    .line 761
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Style;)V

    move v0, v2

    .line 762
    goto :goto_0

    .line 763
    :cond_4
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "stroke"

    invoke-virtual {p1, v0}, Lcom/e/a/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 765
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(Landroid/graphics/Paint$Style;)V

    .line 766
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    const/high16 v1, -0x1000000

    invoke-interface {v0, v1}, Lcom/e/a/aj;->a(I)V

    move v0, v2

    .line 767
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 770
    goto/16 :goto_0
.end method

.method private b(Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 911
    const-string v0, "transform"

    invoke-static {v0, p1}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/e/a/an;->i:Z

    .line 913
    iget-boolean v0, p0, Lcom/e/a/an;->i:Z

    if-eqz v0, :cond_0

    .line 914
    invoke-static {v1}, Lcom/e/a/af;->b(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-interface {v1}, Lcom/e/a/ai;->a()V

    .line 916
    iget-object v1, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-interface {v1, v0}, Lcom/e/a/ai;->a(Landroid/graphics/Matrix;)V

    .line 918
    :cond_0
    return-void

    .line 912
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/e/a/a;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/e/a/an;->g:Lcom/e/a/a;

    .line 717
    return-void
.end method

.method public characters([CII)V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 731
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1124
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/e/a/an;->a:Lcom/e/a/ak;

    invoke-interface {v0}, Lcom/e/a/ak;->c()V

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1127
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1129
    iget-object v0, p0, Lcom/e/a/an;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/ah;

    .line 1130
    if-eqz v0, :cond_2

    .line 1131
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    invoke-virtual {v0, v1}, Lcom/e/a/ah;->a(Lcom/e/a/ah;)Lcom/e/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 1135
    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 1135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1138
    :cond_3
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [F

    .line 1139
    :goto_2
    array-length v0, v6

    if-ge v2, v0, :cond_4

    .line 1140
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v6, v2

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1142
    :cond_4
    array-length v0, v5

    if-nez v0, :cond_5

    .line 1143
    const-string v0, "BAD"

    const-string v1, "BAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_5
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v1, v1, Lcom/e/a/ah;->d:F

    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v2, v2, Lcom/e/a/ah;->e:F

    iget-object v3, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v3, v3, Lcom/e/a/ah;->f:F

    iget-object v4, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v4, v4, Lcom/e/a/ah;->g:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1146
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_6

    .line 1147
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1149
    :cond_6
    iget-object v1, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v2, v2, Lcom/e/a/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v0, p0, Lcom/e/a/an;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1152
    :cond_7
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1153
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1155
    iget-object v0, p0, Lcom/e/a/an;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/ah;

    .line 1156
    if-eqz v0, :cond_8

    .line 1157
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    invoke-virtual {v0, v1}, Lcom/e/a/ah;->a(Lcom/e/a/ah;)Lcom/e/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    .line 1160
    :cond_8
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    .line 1161
    :goto_3
    array-length v0, v4

    if-ge v1, v0, :cond_9

    .line 1162
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 1161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1164
    :cond_9
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [F

    .line 1165
    :goto_4
    array-length v0, v5

    if-ge v2, v0, :cond_a

    .line 1166
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    .line 1165
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1168
    :cond_a
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v0, v0, Lcom/e/a/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1169
    iget-object v0, p0, Lcom/e/a/an;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/ah;

    .line 1170
    if-eqz v0, :cond_b

    .line 1171
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    invoke-virtual {v0, v1}, Lcom/e/a/ah;->a(Lcom/e/a/ah;)Lcom/e/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    .line 1174
    :cond_b
    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v1, v1, Lcom/e/a/ah;->h:F

    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v2, v2, Lcom/e/a/ah;->i:F

    iget-object v3, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget v3, v3, Lcom/e/a/ah;->j:F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1175
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_c

    .line 1176
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1178
    :cond_c
    iget-object v1, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v2, v2, Lcom/e/a/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v0, p0, Lcom/e/a/an;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1181
    :cond_d
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    iget-boolean v0, p0, Lcom/e/a/an;->o:Z

    if-eqz v0, :cond_e

    .line 1183
    iput-boolean v2, p0, Lcom/e/a/an;->o:Z

    .line 1186
    :cond_e
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-eqz v0, :cond_f

    .line 1187
    iget v0, p0, Lcom/e/a/an;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/e/a/an;->n:I

    .line 1189
    iget v0, p0, Lcom/e/a/an;->n:I

    if-nez v0, :cond_f

    .line 1190
    iput-boolean v2, p0, Lcom/e/a/an;->m:Z

    .line 1194
    :cond_f
    iget-object v0, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11

    .prologue
    .line 929
    iget-object v0, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lcom/e/a/aj;->b(I)V

    .line 931
    iget-boolean v0, p0, Lcom/e/a/an;->o:Z

    if-eqz v0, :cond_3

    .line 932
    const-string v0, "rect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 933
    const-string v0, "x"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    .line 934
    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 937
    :cond_0
    const-string v1, "y"

    invoke-static {v1, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 938
    if-nez v1, :cond_1

    .line 939
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 941
    :cond_1
    const-string v2, "width"

    invoke-static {v2, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 942
    const-string v3, "height"

    invoke-static {v3, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 943
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/e/a/an;->e:Landroid/graphics/RectF;

    .line 1114
    :cond_2
    :goto_0
    return-void

    .line 947
    :cond_3
    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    const-string v0, "width"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 949
    const-string v1, "height"

    invoke-static {v1, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 950
    iget-object v2, p0, Lcom/e/a/an;->a:Lcom/e/a/ak;

    invoke-interface {v2, v0, v1}, Lcom/e/a/ak;->a(II)Lcom/e/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    .line 951
    invoke-direct {p0, p4}, Lcom/e/a/an;->a(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 952
    :cond_4
    const-string v0, "defs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 954
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 955
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lcom/e/a/an;->a(ZLorg/xml/sax/Attributes;)Lcom/e/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    goto :goto_0

    .line 956
    :cond_5
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lcom/e/a/an;->a(ZLorg/xml/sax/Attributes;)Lcom/e/a/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    goto :goto_0

    .line 958
    :cond_6
    const-string v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 959
    iget-object v0, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    if-eqz v0, :cond_2

    .line 960
    const-string v0, "offset"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 961
    const-string v0, "style"

    invoke-static {v0, p4}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 962
    new-instance v2, Lcom/e/a/ao;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/e/a/ao;-><init>(Ljava/lang/String;Lcom/e/a/ag;)V

    .line 963
    const-string v0, "stop-color"

    invoke-virtual {v2, v0}, Lcom/e/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 964
    const/high16 v0, -0x1000000

    .line 965
    if-eqz v3, :cond_7

    .line 966
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 967
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 972
    :cond_7
    :goto_1
    invoke-direct {p0, v0}, Lcom/e/a/an;->a(I)I

    move-result v0

    .line 973
    const-string v3, "stop-opacity"

    invoke-virtual {v2, v3}, Lcom/e/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 974
    if-eqz v2, :cond_9

    .line 975
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 976
    const/high16 v3, 0x437f0000

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 977
    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 981
    :goto_2
    iget-object v2, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v2, v2, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v1, p0, Lcom/e/a/an;->l:Lcom/e/a/ah;

    iget-object v1, v1, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 969
    :cond_8
    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 979
    :cond_9
    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    goto :goto_2

    .line 984
    :cond_a
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 986
    const-string v0, "bounds"

    const-string v1, "id"

    invoke-static {v1, p4}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/an;->o:Z

    .line 989
    :cond_b
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-eqz v0, :cond_c

    .line 990
    iget v0, p0, Lcom/e/a/an;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/e/a/an;->n:I

    .line 994
    :cond_c
    const-string v0, "none"

    const-string v1, "display"

    invoke-static {v1, p4}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_2

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/an;->m:Z

    .line 997
    const/4 v0, 0x1

    iput v0, p0, Lcom/e/a/an;->n:I

    goto/16 :goto_0

    .line 1001
    :cond_d
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_10

    const-string v0, "rect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1002
    const-string v0, "x"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    .line 1003
    if-nez v0, :cond_22

    .line 1004
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v6, v0

    .line 1006
    :goto_3
    const-string v0, "y"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    .line 1007
    if-nez v0, :cond_21

    .line 1008
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v7, v0

    .line 1010
    :goto_4
    const-string v0, "width"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v8

    .line 1011
    const-string v0, "height"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v9

    .line 1012
    invoke-direct {p0, p4}, Lcom/e/a/an;->b(Lorg/xml/sax/Attributes;)V

    .line 1013
    new-instance v10, Lcom/e/a/am;

    const/4 v0, 0x0

    invoke-direct {v10, p4, v0}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V

    .line 1014
    iget-object v0, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    invoke-direct {p0, v10, v0}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1015
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/e/a/an;->a(FFFF)V

    .line 1016
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface/range {v0 .. v5}, Lcom/e/a/ai;->a(FFFFLcom/e/a/aj;)V

    .line 1018
    :cond_e
    invoke-direct {p0, v10}, Lcom/e/a/an;->a(Lcom/e/a/am;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1019
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface/range {v0 .. v5}, Lcom/e/a/ai;->a(FFFFLcom/e/a/aj;)V

    .line 1021
    :cond_f
    invoke-direct {p0}, Lcom/e/a/an;->a()V

    goto/16 :goto_0

    .line 1022
    :cond_10
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_11

    const-string v0, "line"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1023
    const-string v0, "x1"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1024
    const-string v0, "x2"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1025
    const-string v0, "y1"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1026
    const-string v0, "y2"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1027
    new-instance v0, Lcom/e/a/am;

    const/4 v5, 0x0

    invoke-direct {v0, p4, v5}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V

    .line 1028
    invoke-direct {p0, v0}, Lcom/e/a/an;->a(Lcom/e/a/am;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1029
    invoke-direct {p0, p4}, Lcom/e/a/an;->b(Lorg/xml/sax/Attributes;)V

    .line 1030
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/e/a/an;->a(FF)V

    .line 1031
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/e/a/an;->a(FF)V

    .line 1032
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface/range {v0 .. v5}, Lcom/e/a/ai;->b(FFFFLcom/e/a/aj;)V

    .line 1033
    invoke-direct {p0}, Lcom/e/a/an;->a()V

    goto/16 :goto_0

    .line 1035
    :cond_11
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_14

    const-string v0, "circle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1036
    const-string v0, "cx"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    .line 1037
    const-string v1, "cy"

    invoke-static {v1, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1038
    const-string v2, "r"

    invoke-static {v2, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1039
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1040
    invoke-direct {p0, p4}, Lcom/e/a/an;->b(Lorg/xml/sax/Attributes;)V

    .line 1041
    new-instance v3, Lcom/e/a/am;

    const/4 v4, 0x0

    invoke-direct {v3, p4, v4}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V

    .line 1042
    iget-object v4, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    invoke-direct {p0, v3, v4}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/e/a/an;->a(FF)V

    .line 1044
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/e/a/an;->a(FF)V

    .line 1045
    iget-object v4, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/e/a/ai;->a(FFFLcom/e/a/aj;)V

    .line 1047
    :cond_12
    invoke-direct {p0, v3}, Lcom/e/a/an;->a(Lcom/e/a/am;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1048
    iget-object v3, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/e/a/ai;->a(FFFLcom/e/a/aj;)V

    .line 1050
    :cond_13
    invoke-direct {p0}, Lcom/e/a/an;->a()V

    goto/16 :goto_0

    .line 1052
    :cond_14
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_17

    const-string v0, "ellipse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1053
    const-string v0, "cx"

    invoke-static {v0, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v0

    .line 1054
    const-string v1, "cy"

    invoke-static {v1, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1055
    const-string v2, "rx"

    invoke-static {v2, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1056
    const-string v3, "ry"

    invoke-static {v3, p4}, Lcom/e/a/af;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1057
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1058
    invoke-direct {p0, p4}, Lcom/e/a/an;->b(Lorg/xml/sax/Attributes;)V

    .line 1059
    new-instance v4, Lcom/e/a/am;

    const/4 v5, 0x0

    invoke-direct {v4, p4, v5}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V

    .line 1060
    iget-object v5, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1061
    iget-object v5, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    invoke-direct {p0, v4, v5}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/e/a/an;->a(FF)V

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/e/a/an;->a(FF)V

    .line 1064
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    iget-object v1, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v0, v1, v2}, Lcom/e/a/ai;->a(Landroid/graphics/RectF;Lcom/e/a/aj;)V

    .line 1066
    :cond_15
    invoke-direct {p0, v4}, Lcom/e/a/an;->a(Lcom/e/a/am;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1067
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    iget-object v1, p0, Lcom/e/a/an;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v0, v1, v2}, Lcom/e/a/ai;->a(Landroid/graphics/RectF;Lcom/e/a/aj;)V

    .line 1069
    :cond_16
    invoke-direct {p0}, Lcom/e/a/an;->a()V

    goto/16 :goto_0

    .line 1071
    :cond_17
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_1d

    const-string v0, "polygon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "polyline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1072
    :cond_18
    const-string v0, "points"

    invoke-static {v0, p4}, Lcom/e/a/af;->c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/e/a/al;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_2

    .line 1074
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1075
    invoke-static {v0}, Lcom/e/a/al;->a(Lcom/e/a/al;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1076
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1077
    invoke-direct {p0, p4}, Lcom/e/a/an;->b(Lorg/xml/sax/Attributes;)V

    .line 1078
    new-instance v4, Lcom/e/a/am;

    const/4 v0, 0x0

    invoke-direct {v4, p4, v0}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V

    .line 1079
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1080
    const/4 v0, 0x2

    move v1, v0

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 1081
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1082
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1083
    invoke-virtual {v2, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1080
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_5

    .line 1086
    :cond_19
    const-string v0, "polygon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1087
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1089
    :cond_1a
    iget-object v0, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    invoke-direct {p0, v4, v0}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1090
    invoke-direct {p0, v2}, Lcom/e/a/an;->a(Landroid/graphics/Path;)V

    .line 1091
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    iget-object v1, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v0, v2, v1}, Lcom/e/a/ai;->a(Landroid/graphics/Path;Lcom/e/a/aj;)V

    .line 1093
    :cond_1b
    invoke-direct {p0, v4}, Lcom/e/a/an;->a(Lcom/e/a/am;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1094
    iget-object v0, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    iget-object v1, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v0, v2, v1}, Lcom/e/a/ai;->a(Landroid/graphics/Path;Lcom/e/a/aj;)V

    .line 1096
    :cond_1c
    invoke-direct {p0}, Lcom/e/a/an;->a()V

    goto/16 :goto_0

    .line 1099
    :cond_1d
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_20

    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1100
    const-string v0, "d"

    invoke-static {v0, p4}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/af;->c(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    .line 1101
    invoke-direct {p0, p4}, Lcom/e/a/an;->b(Lorg/xml/sax/Attributes;)V

    .line 1102
    new-instance v1, Lcom/e/a/am;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V

    .line 1103
    iget-object v2, p0, Lcom/e/a/an;->j:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/e/a/an;->a(Lcom/e/a/am;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1104
    invoke-direct {p0, v0}, Lcom/e/a/an;->a(Landroid/graphics/Path;)V

    .line 1105
    iget-object v2, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    iget-object v3, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v2, v0, v3}, Lcom/e/a/ai;->a(Landroid/graphics/Path;Lcom/e/a/aj;)V

    .line 1107
    :cond_1e
    invoke-direct {p0, v1}, Lcom/e/a/an;->a(Lcom/e/a/am;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1108
    iget-object v1, p0, Lcom/e/a/an;->b:Lcom/e/a/ai;

    iget-object v2, p0, Lcom/e/a/an;->c:Lcom/e/a/aj;

    invoke-interface {v1, v0, v2}, Lcom/e/a/ai;->a(Landroid/graphics/Path;Lcom/e/a/aj;)V

    .line 1110
    :cond_1f
    invoke-direct {p0}, Lcom/e/a/an;->a()V

    goto/16 :goto_0

    .line 1111
    :cond_20
    iget-boolean v0, p0, Lcom/e/a/an;->m:Z

    if-nez v0, :cond_2

    .line 1112
    const-string v0, "SVGAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNRECOGNIZED SVG COMMAND: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    move-object v7, v0

    goto/16 :goto_4

    :cond_22
    move-object v6, v0

    goto/16 :goto_3
.end method
