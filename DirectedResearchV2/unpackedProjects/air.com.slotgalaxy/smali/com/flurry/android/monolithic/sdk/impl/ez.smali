.class public Lcom/flurry/android/monolithic/sdk/impl/ez;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ez;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ez;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fa;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 29
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 33
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->b()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 35
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->c()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 36
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->d()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 37
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->g()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->i()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 51
    :goto_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->j()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 52
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 53
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 54
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->k()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 55
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->l()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 61
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->p()Ljava/util/Map;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/eh;

    iget v0, v0, Lcom/flurry/android/monolithic/sdk/impl/eh;->a:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 103
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 104
    :goto_3
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ez;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0

    .line 45
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 46
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->i()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ez;->a(D)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 47
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->i()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ez;->a(D)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 48
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->i()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_0

    .line 107
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 58
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->l()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_1

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->n()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ek;

    .line 71
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->e()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_5

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->q()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->o()Ljava/util/List;

    move-result-object v1

    move v4, v7

    move v5, v7

    move v6, v7

    .line 79
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 80
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ej;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ej;->a()I

    move-result v0

    add-int/2addr v0, v5

    .line 81
    const v5, 0x27100

    if-le v0, v5, :cond_5

    .line 82
    const/4 v0, 0x5

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ez;->b:Ljava/lang/String;

    const-string v5, "Error Log size exceeded. No more event details logged."

    invoke-static {v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->m()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v4, v7

    .line 92
    :goto_7
    if-ge v4, v6, :cond_6

    .line 93
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ej;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ej;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 92
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 86
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .line 79
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v0

    goto :goto_6

    .line 97
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 102
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ez;->a:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    invoke-static {v3}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    .line 109
    return-void

    .line 107
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_4

    .line 103
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_3
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ez;->a:[B

    .line 24
    return-void
.end method

.method private a(D)D
    .locals 4

    .prologue
    const-wide v2, 0x408f400000000000L

    .line 119
    mul-double v0, p1, v2

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 121
    div-double/2addr v0, v2

    .line 122
    return-wide v0
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ez;->a:[B

    return-object v0
.end method
