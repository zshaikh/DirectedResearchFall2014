.class public final enum Lcom/flurry/android/monolithic/sdk/impl/pb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/pb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum e:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum f:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum g:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum h:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum i:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum j:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum k:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum l:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field public static final enum m:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field private static final synthetic q:[Lcom/flurry/android/monolithic/sdk/impl/pb;


# instance fields
.field final n:Ljava/lang/String;

.field final o:[C

.field final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->a:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 34
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "START_OBJECT"

    const-string v2, "{"

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 40
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "END_OBJECT"

    const-string v2, "}"

    invoke-direct {v0, v1, v7, v2}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 46
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "START_ARRAY"

    const-string v2, "["

    invoke-direct {v0, v1, v8, v2}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 52
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x4

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 58
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "FIELD_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 72
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_EMBEDDED_OBJECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 79
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_STRING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 87
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_NUMBER_INT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 95
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 101
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_TRUE"

    const/16 v2, 0xa

    const-string v3, "true"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->k:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 107
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_FALSE"

    const/16 v2, 0xb

    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->l:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 113
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    const-string v1, "VALUE_NULL"

    const/16 v2, 0xc

    const-string v3, "null"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/pb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->a:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->k:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->l:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->q:[Lcom/flurry/android/monolithic/sdk/impl/pb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    if-nez p3, :cond_1

    .line 129
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->n:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->o:[C

    .line 131
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->p:[B

    .line 142
    :cond_0
    return-void

    .line 133
    :cond_1
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->n:Ljava/lang/String;

    .line 134
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->o:[C

    .line 136
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->o:[C

    array-length v0, v0

    .line 137
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->p:[B

    .line 138
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->p:[B

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->o:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/pb;

    return-object p0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->q:[Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/pb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/pb;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b()[C
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/pb;->o:[C

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->g:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
