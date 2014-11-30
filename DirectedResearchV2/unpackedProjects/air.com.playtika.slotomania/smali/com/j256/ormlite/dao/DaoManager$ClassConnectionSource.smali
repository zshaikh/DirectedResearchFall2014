.class Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/DaoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassConnectionSource"
.end annotation


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field connectionSource:Lcom/j256/ormlite/support/ConnectionSource;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 398
    iput-object p2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    .line 399
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_0
    move v2, v4

    .line 418
    :goto_0
    return v2

    .line 412
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    move-object v1, v0

    .line 413
    .local v1, "other":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    iget-object v3, v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 414
    goto :goto_0

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 416
    goto :goto_0

    .line 418
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 402
    const/16 v0, 0x1f

    .line 403
    .local v0, "prime":I
    iget-object v2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 404
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 405
    return v1
.end method
