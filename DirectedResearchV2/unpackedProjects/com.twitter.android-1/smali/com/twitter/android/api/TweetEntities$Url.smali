.class public Lcom/twitter/android/api/TweetEntities$Url;
.super Lcom/twitter/android/api/TweetEntities$Entity;


# static fields
.field private static final serialVersionUID:J = 0x7abfc9bf453724d6L


# instance fields
.field public displayUrl:Ljava/lang/String;

.field public expandedUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/api/TweetEntities$Entity;-><init>()V

    return-void
.end method


# virtual methods
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
    invoke-super {p0, p1}, Lcom/twitter/android/api/TweetEntities$Entity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/twitter/android/api/TweetEntities$Url;

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/api/TweetEntities$Entity;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    goto :goto_0
.end method
