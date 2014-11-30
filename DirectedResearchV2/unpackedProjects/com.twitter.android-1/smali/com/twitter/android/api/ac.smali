.class final Lcom/twitter/android/api/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/twitter/android/api/TweetEntities$Entity;

    check-cast p2, Lcom/twitter/android/api/TweetEntities$Entity;

    iget v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v1, p2, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v1, p2, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
