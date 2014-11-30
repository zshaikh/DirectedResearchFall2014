.class public Lorg/codehaus/jackson/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/codehaus/jackson/JsonLocation;


# instance fields
.field final b:J

.field final c:J

.field final d:I

.field final e:I

.field final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    .line 22
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8

    .prologue
    .line 42
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sourceRef"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "byteOffset"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "charOffset"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "lineNr"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "columnNr"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    .line 53
    iput-wide p2, p0, Lorg/codehaus/jackson/JsonLocation;->b:J

    .line 54
    iput-wide p4, p0, Lorg/codehaus/jackson/JsonLocation;->c:J

    .line 55
    iput p6, p0, Lorg/codehaus/jackson/JsonLocation;->d:I

    .line 56
    iput p7, p0, Lorg/codehaus/jackson/JsonLocation;->e:I

    .line 57
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/codehaus/jackson/JsonLocation;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 135
    :goto_0
    return v0

    .line 127
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    goto :goto_0

    .line 128
    :cond_1
    instance-of v0, p1, Lorg/codehaus/jackson/JsonLocation;

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    .line 129
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/JsonLocation;

    .line 131
    iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p1, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    iget-object v1, p1, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    .line 135
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/JsonLocation;->d:I

    iget v1, p1, Lorg/codehaus/jackson/JsonLocation;->d:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/codehaus/jackson/JsonLocation;->e:I

    iget v1, p1, Lorg/codehaus/jackson/JsonLocation;->e:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lorg/codehaus/jackson/JsonLocation;->c:J

    iget-wide v2, p1, Lorg/codehaus/jackson/JsonLocation;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonLocation;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonLocation;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->d:I

    xor-int/2addr v0, v1

    .line 117
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->e:I

    add-int/2addr v0, v1

    .line 118
    iget-wide v1, p0, Lorg/codehaus/jackson/JsonLocation;->c:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 119
    iget-wide v1, p0, Lorg/codehaus/jackson/JsonLocation;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 120
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 100
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_0
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lorg/codehaus/jackson/JsonLocation;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/JsonLocation;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
