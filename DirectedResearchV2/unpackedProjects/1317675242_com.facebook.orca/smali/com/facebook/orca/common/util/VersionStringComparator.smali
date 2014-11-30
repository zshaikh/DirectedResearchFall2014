.class public Lcom/facebook/orca/common/util/VersionStringComparator;
.super Ljava/lang/Object;
.source "VersionStringComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "(\\d*)(\\D*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/util/VersionStringComparator;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)I
    .locals 1

    .prologue
    .line 79
    if-ge p1, p2, :cond_0

    .line 80
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    if-le p1, p2, :cond_1

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v0

    move v0, p2

    .line 91
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 28
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v10

    move v4, v10

    .line 36
    :goto_0
    if-nez v4, :cond_b

    if-ge v3, v2, :cond_b

    .line 37
    array-length v5, v0

    if-ge v3, v5, :cond_1

    aget-object v5, v0, v3

    .line 38
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    aget-object v6, v1, v3

    .line 41
    :goto_2
    sget-object v7, Lcom/facebook/orca/common/util/VersionStringComparator;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 42
    sget-object v7, Lcom/facebook/orca/common/util/VersionStringComparator;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 45
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 46
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 47
    if-nez v7, :cond_3

    if-nez v8, :cond_3

    .line 36
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 38
    :cond_2
    const-string v6, ""

    goto :goto_2

    .line 53
    :cond_3
    if-eqz v7, :cond_6

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v10}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(Ljava/lang/String;I)I

    move-result v4

    .line 54
    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v10}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(Ljava/lang/String;I)I

    move-result v9

    .line 60
    :goto_5
    invoke-virtual {p0, v4, v9}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(II)I

    move-result v4

    .line 61
    if-nez v4, :cond_5

    .line 62
    if-eqz v7, :cond_8

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 63
    :goto_6
    if-eqz v8, :cond_9

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 64
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    move v4, v11

    .line 69
    :cond_4
    :goto_8
    if-nez v4, :cond_5

    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 73
    :cond_5
    if-eqz v4, :cond_0

    goto :goto_3

    :cond_6
    move v4, v10

    .line 53
    goto :goto_4

    :cond_7
    move v9, v10

    .line 54
    goto :goto_5

    .line 62
    :cond_8
    const-string v7, ""

    goto :goto_6

    .line 63
    :cond_9
    const-string v8, ""

    goto :goto_7

    .line 66
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 67
    const/4 v4, -0x1

    goto :goto_8

    .line 75
    :cond_b
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/common/util/VersionStringComparator;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
