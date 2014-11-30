.class public Lcom/jayway/jsonpath/filter/ListIndexFilter;
.super Lcom/jayway/jsonpath/filter/JsonPathFilterBase;
.source "ListIndexFilter.java"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "\\[(\\s?\\d+\\s?,?)+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/filter/ListIndexFilter;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jayway/jsonpath/filter/JsonPathFilterBase;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jayway/jsonpath/filter/ListIndexFilter;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a(Ljava/util/List;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    if-gez p2, :cond_0

    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_1

    move v0, v1

    .line 51
    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_0
.end method

.method private a()[Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/jayway/jsonpath/filter/ListIndexFilter;->b:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 65
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    array-length v2, v0

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/jayway/jsonpath/filter/FilterOutput;)Lcom/jayway/jsonpath/filter/FilterOutput;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 28
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/jayway/jsonpath/filter/ListIndexFilter;->a()[Ljava/lang/Integer;

    move-result-object v1

    .line 31
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 32
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    .line 33
    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 34
    invoke-virtual {p1}, Lcom/jayway/jsonpath/filter/FilterOutput;->c()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/jayway/jsonpath/filter/ListIndexFilter;->a(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/jayway/jsonpath/filter/FilterOutput;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/jayway/jsonpath/filter/FilterOutput;->c()Ljava/util/List;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/jayway/jsonpath/filter/ListIndexFilter;->a(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/jayway/jsonpath/filter/FilterOutput;->c()Ljava/util/List;

    move-result-object v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 44
    :cond_2
    new-instance v1, Lcom/jayway/jsonpath/filter/FilterOutput;

    invoke-direct {v1, v0}, Lcom/jayway/jsonpath/filter/FilterOutput;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
