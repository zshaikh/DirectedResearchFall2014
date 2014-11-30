.class Lcom/e/a/am;
.super Ljava/lang/Object;
.source "SVGParser.java"


# instance fields
.field a:Lcom/e/a/ao;

.field b:Lorg/xml/sax/Attributes;


# direct methods
.method private constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object v2, p0, Lcom/e/a/am;->a:Lcom/e/a/ao;

    .line 639
    iput-object p1, p0, Lcom/e/a/am;->b:Lorg/xml/sax/Attributes;

    .line 640
    const-string v0, "style"

    invoke-static {v0, p1}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_0

    .line 642
    new-instance v1, Lcom/e/a/ao;

    invoke-direct {v1, v0, v2}, Lcom/e/a/ao;-><init>(Ljava/lang/String;Lcom/e/a/ag;)V

    iput-object v1, p0, Lcom/e/a/am;->a:Lcom/e/a/ao;

    .line 644
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/xml/sax/Attributes;Lcom/e/a/ag;)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/e/a/am;-><init>(Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 647
    const/4 v0, 0x0

    .line 648
    iget-object v1, p0, Lcom/e/a/am;->a:Lcom/e/a/ao;

    if-eqz v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/e/a/am;->a:Lcom/e/a/ao;

    invoke-virtual {v0, p1}, Lcom/e/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    :cond_0
    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/e/a/am;->b:Lorg/xml/sax/Attributes;

    invoke-static {p1, v0}, Lcom/e/a/af;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Lcom/e/a/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 662
    invoke-virtual {p0, p1}, Lcom/e/a/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-object v0

    .line 667
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lcom/e/a/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/e/a/af;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
