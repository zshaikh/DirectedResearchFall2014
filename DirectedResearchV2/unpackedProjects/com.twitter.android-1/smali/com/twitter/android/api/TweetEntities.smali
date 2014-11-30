.class public Lcom/twitter/android/api/TweetEntities;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Lcom/twitter/android/api/TweetEntities; = null

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Comparator;

.field private static final serialVersionUID:J = -0x5bf018c4f48a1cf2L


# instance fields
.field public media:Ljava/util/ArrayList;

.field public mentions:Ljava/util/ArrayList;

.field public promotedContent:Lcom/twitter/android/api/TweetEntities$PromotedContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public urls:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/twitter/android/api/TweetEntities;

    invoke-direct {v0}, Lcom/twitter/android/api/TweetEntities;-><init>()V

    sput-object v0, Lcom/twitter/android/api/TweetEntities;->a:Lcom/twitter/android/api/TweetEntities;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "entities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/api/TweetEntities;->b:[Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/api/ac;

    invoke-direct {v0}, Lcom/twitter/android/api/ac;-><init>()V

    sput-object v0, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TweetEntities;
    .locals 12

    const/4 v3, 0x0

    const/4 v0, 0x3

    const/4 v10, 0x1

    new-instance v5, Lcom/twitter/android/api/TweetEntities;

    invoke-direct {v5}, Lcom/twitter/android/api/TweetEntities;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_18

    move-object v0, v3

    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_18

    sget-object v2, Lcom/twitter/android/api/ad;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const-string v2, "urls"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    :goto_2
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    new-instance v8, Lcom/twitter/android/api/TweetEntities$Url;

    invoke-direct {v8}, Lcom/twitter/android/api/TweetEntities$Url;-><init>()V

    :cond_2
    :goto_3
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/api/ad;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_4
    const-string v2, "indices"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v8}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_3

    :pswitch_6
    const-string v2, "url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v2, "expanded_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v2, "display_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    :goto_4
    invoke-static {v2}, Lcom/twitter/android/util/g;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v4}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    iget-object v9, v8, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    iput-object v9, v4, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v9, v8, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    iput-object v9, v4, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    iget-object v9, v8, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    iput-object v9, v4, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/android/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    iget v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    iput v2, v4, Lcom/twitter/android/api/TweetEntities$Media;->start:I

    iget v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    iput v2, v4, Lcom/twitter/android/api/TweetEntities$Media;->end:I

    iput v10, v4, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    iget-object v2, v8, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object v2, v3

    goto :goto_5

    :cond_9
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const-string v2, "user_mentions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/twitter/android/api/TweetEntities$Mention;

    invoke-direct {v1}, Lcom/twitter/android/api/TweetEntities$Mention;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_6
    sget-object v8, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v8, :cond_d

    sget-object v8, Lcom/twitter/android/api/ad;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v8, v2

    packed-switch v2, :pswitch_data_2

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_6

    :pswitch_7
    new-instance v0, Lcom/twitter/android/api/TweetEntities$Mention;

    invoke-direct {v0}, Lcom/twitter/android/api/TweetEntities$Mention;-><init>()V

    goto :goto_7

    :pswitch_8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_9
    const-string v2, "indices"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {p0, v0}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_7

    :pswitch_a
    const-string v2, "screen_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    goto :goto_7

    :pswitch_b
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    goto :goto_7

    :pswitch_c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_d
    iput-object v4, v5, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    move-object v0, v1

    goto/16 :goto_1

    :cond_e
    const-string v2, "media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_f
    :goto_8
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_f

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    :cond_10
    :goto_9
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v4, :cond_16

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/twitter/android/api/ad;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_3

    :pswitch_d
    goto :goto_9

    :pswitch_e
    const-string v4, "indices"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {p0, v2}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_9

    :pswitch_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_9

    :pswitch_10
    const-string v4, "id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    goto :goto_9

    :pswitch_11
    const-string v4, "url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    goto :goto_9

    :cond_12
    const-string v4, "expanded_url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    goto :goto_9

    :cond_13
    const-string v4, "display_url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    goto :goto_9

    :cond_14
    const-string v4, "type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    const-string v8, "photo"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iput v10, v2, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    goto :goto_9

    :cond_15
    const-string v4, "media_url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    goto/16 :goto_9

    :cond_16
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_17
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v5, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    iget-object v0, v5, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_19
    iget-object v0, v5, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget-object v0, v5, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1a
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v5, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    iget-object v0, v5, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1b
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public static a([B)Lcom/twitter/android/api/TweetEntities;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/util/q;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/android/api/TweetEntities;->a:Lcom/twitter/android/api/TweetEntities;

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    move v3, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/android/api/TweetEntities$Entity;

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v8, v0, v4

    const/4 v9, 0x1

    aget v0, v0, v9

    sub-int v8, v0, v8

    iget v9, v1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ge v0, v9, :cond_3

    add-int v0, v2, v8

    add-int/lit8 v2, v3, 0x1

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    iget v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    goto :goto_0

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_2
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ne v1, v2, :cond_1

    iput v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    if-ne v1, v2, :cond_0

    iput v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(J)Z
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Mention;

    iget-wide v2, v0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[B
    .locals 1

    invoke-static {p0}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Media;

    iget v0, v0, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/twitter/android/api/TweetEntities;

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "urls: []"

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "urls:["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    invoke-virtual {v0}, Lcom/twitter/android/api/TweetEntities$Url;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
