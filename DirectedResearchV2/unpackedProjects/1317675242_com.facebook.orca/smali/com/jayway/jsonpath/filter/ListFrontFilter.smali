.class public Lcom/jayway/jsonpath/filter/ListFrontFilter;
.super Lcom/jayway/jsonpath/filter/JsonPathFilterBase;
.source "ListFrontFilter.java"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "\\[\\s?:(\\d+)\\s?\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/filter/ListFrontFilter;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jayway/jsonpath/filter/JsonPathFilterBase;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jayway/jsonpath/filter/ListFrontFilter;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private a(Ljava/util/List;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    if-gez p2, :cond_0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_1

    move v0, v1

    .line 62
    goto :goto_0

    :cond_1
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method private a()[Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    sget-object v0, Lcom/jayway/jsonpath/filter/ListFrontFilter;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/jayway/jsonpath/filter/ListFrontFilter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v2, v4

    .line 50
    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid list index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/jayway/jsonpath/filter/FilterOutput;)Lcom/jayway/jsonpath/filter/FilterOutput;
    .locals 6

    .prologue
    .line 30
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/jayway/jsonpath/filter/ListFrontFilter;->a()[Ljava/lang/Integer;

    move-result-object v1

    .line 33
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 34
    invoke-virtual {p1}, Lcom/jayway/jsonpath/filter/FilterOutput;->c()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/jayway/jsonpath/filter/ListFrontFilter;->a(Ljava/util/List;I)Z

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

    .line 38
    :cond_1
    new-instance v1, Lcom/jayway/jsonpath/filter/FilterOutput;

    invoke-direct {v1, v0}, Lcom/jayway/jsonpath/filter/FilterOutput;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
