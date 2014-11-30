.class public Lorg/apache/a/a/a/b;
.super Ljava/lang/Object;
.source "RegexValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/a/a/a/b;-><init>(Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/apache/a/a/a/b;-><init>([Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Regular expressions are missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lorg/apache/a/a/a/b;->a:[Ljava/util/regex/Pattern;

    .line 112
    if-eqz p2, :cond_3

    move v0, v1

    .line 113
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 114
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regular expression["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 117
    :cond_4
    iget-object v2, p0, Lorg/apache/a/a/a/b;->a:[Ljava/util/regex/Pattern;

    aget-object v3, p1, v1

    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    aput-object v3, v2, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_5
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    const-string v0, "RegexValidator{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/a/a/a/b;->a:[Ljava/util/regex/Pattern;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 207
    if-lez v0, :cond_0

    .line 208
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_0
    iget-object v2, p0, Lorg/apache/a/a/a/b;->a:[Ljava/util/regex/Pattern;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
