.class public Lmobi/mgeek/util/a/g;
.super Lmobi/mgeek/util/a/e;
.source "StringPart.java"


# instance fields
.field private i:[B

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmobi/mgeek/util/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "text/plain"

    if-nez p3, :cond_0

    const-string p3, "US-ASCII"

    :cond_0
    const-string v1, "8bit"

    invoke-direct {p0, p1, v0, p3, v1}, Lmobi/mgeek/util/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    iput-object p2, p0, Lmobi/mgeek/util/a/g;->j:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private i()[B
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lmobi/mgeek/util/a/g;->i:[B

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lmobi/mgeek/util/a/g;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/mgeek/util/a/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/a/g;->i:[B

    .line 111
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/util/a/g;->i:[B

    return-object v0
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lmobi/mgeek/util/a/g;->i()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected b(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lmobi/mgeek/util/a/g;->i()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 122
    return-void
.end method
