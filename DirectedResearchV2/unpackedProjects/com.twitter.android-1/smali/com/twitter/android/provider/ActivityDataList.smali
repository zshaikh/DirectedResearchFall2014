.class public Lcom/twitter/android/provider/ActivityDataList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7f292e7c35a857d6L


# instance fields
.field public final creatorUserId:J

.field public final fullName:Ljava/lang/String;

.field public final id:J

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/twitter/android/api/t;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/android/api/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataList;->id:J

    invoke-virtual {p1}, Lcom/twitter/android/api/t;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twitter/android/api/t;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twitter/android/api/t;->h()Lcom/twitter/android/api/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/twitter/android/provider/ActivityDataList;->creatorUserId:J

    return-void

    :cond_0
    iget-wide v0, v0, Lcom/twitter/android/api/c;->a:J

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)[B
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/provider/ActivityDataList;

    check-cast v0, Lcom/twitter/android/api/t;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ActivityDataList;-><init>(Lcom/twitter/android/api/t;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
