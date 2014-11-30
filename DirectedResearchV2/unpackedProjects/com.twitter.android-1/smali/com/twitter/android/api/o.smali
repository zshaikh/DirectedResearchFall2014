.class public final Lcom/twitter/android/api/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Z

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/android/api/n;

    invoke-direct {v0}, Lcom/twitter/android/api/n;-><init>()V

    sput-object v0, Lcom/twitter/android/api/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/api/o;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/o;->b:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/twitter/android/api/o;->a:Z

    iput-wide p2, p0, Lcom/twitter/android/api/o;->b:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/android/api/o;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v1, p0}, Lorg/codehaus/jackson/d;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v1}, Lcom/twitter/android/api/o;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/o;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/o;
    .locals 13

    const-wide/16 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-wide v6, v2

    move v8, v4

    :goto_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/twitter/android/api/m;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :cond_1
    move-wide v0, v6

    move v6, v8

    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    move v8, v6

    move-wide v11, v0

    move-object v0, v7

    move-wide v6, v11

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-wide v0, v6

    move v6, v8

    goto :goto_2

    :pswitch_1
    const-string v0, "trend_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->p()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_3
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_4
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/twitter/android/api/m;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_5
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_4

    :pswitch_3
    const-string v0, "woeid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v0

    :goto_6
    move v6, v8

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-wide v0, v2

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    move-wide v0, v6

    move v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "geo_enabled"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_7
    move-wide v11, v6

    move v6, v0

    move-wide v0, v11

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_7

    :cond_7
    new-instance v0, Lcom/twitter/android/api/o;

    invoke-direct {v0, v8, v6, v7}, Lcom/twitter/android/api/o;-><init>(ZJ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    const/16 v1, 0x200

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    sget-object v1, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/d;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "geo_enabled"

    iget-boolean v3, p0, Lcom/twitter/android/api/o;->a:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    const-string v0, "trend_location"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "woeid"

    iget-wide v3, p0, Lcom/twitter/android/api/o;->b:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    const-string v0, ""

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/api/o;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/twitter/android/api/o;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
