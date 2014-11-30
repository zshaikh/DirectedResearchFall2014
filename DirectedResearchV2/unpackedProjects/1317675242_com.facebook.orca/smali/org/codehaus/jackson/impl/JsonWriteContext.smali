.class public Lorg/codehaus/jackson/impl/JsonWriteContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "JsonWriteContext.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/impl/JsonWriteContext;

.field protected b:Ljava/lang/String;

.field protected c:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->c:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 49
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->e:I

    .line 50
    iput-object p2, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->a:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->f:I

    .line 52
    return-void
.end method

.method public static a()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lorg/codehaus/jackson/impl/JsonWriteContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    return-object v0
.end method

.method private final a(I)Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 62
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->e:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->f:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->b:Ljava/lang/String;

    .line 65
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 105
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v2

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->b:Ljava/lang/String;

    .line 110
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->f:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 144
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 145
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :goto_1
    return-void

    .line 152
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 156
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->m()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final b()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->c:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->c:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(I)Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->c:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 81
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;-><init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->c:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(I)Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->a:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/StringBuilder;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
