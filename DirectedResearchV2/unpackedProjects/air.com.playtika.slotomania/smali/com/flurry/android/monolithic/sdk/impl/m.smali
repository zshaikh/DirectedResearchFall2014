.class public Lcom/flurry/android/monolithic/sdk/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private final c:J

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/m;->a:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Lcom/flurry/android/monolithic/sdk/impl/m;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/flurry/android/monolithic/sdk/impl/m;->a:I

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    .line 23
    iput-wide p1, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    .line 24
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    .line 32
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    .line 33
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    .line 37
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 39
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/k;

    invoke-direct {v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/k;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    return v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/k;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 50
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 51
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 53
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/k;

    .line 55
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/k;->a(Ljava/io/DataOutput;)V

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    if-ne p0, p1, :cond_0

    move v0, v5

    .line 91
    :goto_0
    return v0

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/m;

    if-nez v0, :cond_1

    move v0, v4

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 91
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    iget v1, p1, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    iget-wide v2, p1, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 99
    const/16 v0, 0x11

    .line 101
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->b:I

    or-int/2addr v0, v1

    .line 102
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->c:J

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 104
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/m;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 112
    :cond_1
    return v0
.end method
