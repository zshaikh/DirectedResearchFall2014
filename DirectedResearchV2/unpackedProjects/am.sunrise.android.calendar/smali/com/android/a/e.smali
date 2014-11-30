.class Lcom/android/a/e;
.super Lcom/android/a/s;
.source "EventRecurrence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/a/s;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/c;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/a/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[I[II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 831
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 834
    if-lez v0, :cond_0

    .line 836
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 837
    const/16 v2, -0x35

    const/16 v3, 0x35

    invoke-static {v1, v2, v3, v4}, Lcom/android/a/e;->a(Ljava/lang/String;IIZ)I

    move-result v1

    .line 838
    aput v1, p2, p3

    .line 839
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    :goto_0
    invoke-static {}, Lcom/android/a/b;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 845
    if-nez v0, :cond_1

    .line 846
    new-instance v0, Lcom/android/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid BYDAY value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    .line 842
    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, p3

    .line 849
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/a/b;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 807
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 810
    new-array v2, v0, [I

    .line 811
    new-array v1, v0, [I

    .line 812
    invoke-static {p1, v2, v1, v3}, Lcom/android/a/e;->a(Ljava/lang/String;[I[II)V

    .line 823
    :cond_0
    iput-object v2, p2, Lcom/android/a/b;->m:[I

    .line 824
    iput-object v1, p2, Lcom/android/a/b;->n:[I

    .line 825
    iput v0, p2, Lcom/android/a/b;->o:I

    .line 826
    const/16 v0, 0x80

    return v0

    .line 814
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 815
    array-length v0, v4

    .line 817
    new-array v2, v0, [I

    .line 818
    new-array v1, v0, [I

    .line 819
    :goto_0
    if-ge v3, v0, :cond_0

    .line 820
    aget-object v5, v4, v3

    invoke-static {v5, v2, v1, v3}, Lcom/android/a/e;->a(Ljava/lang/String;[I[II)V

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
