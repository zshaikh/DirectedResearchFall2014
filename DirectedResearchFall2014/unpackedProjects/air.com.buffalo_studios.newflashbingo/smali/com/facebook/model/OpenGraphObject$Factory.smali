.class public final Lcom/facebook/model/OpenGraphObject$Factory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    check-cast p0, Lcom/facebook/model/OpenGraphObject;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lcom/facebook/model/OpenGraphObject;->setType(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Lcom/facebook/model/OpenGraphObject;->setTitle(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/model/OpenGraphObject;->setImageUrls(Ljava/util/List;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p0, p4}, Lcom/facebook/model/OpenGraphObject;->setUrl(Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-interface {p0, p5}, Lcom/facebook/model/OpenGraphObject;->setDescription(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p0, v2}, Lcom/facebook/model/OpenGraphObject;->setCreateObject(Z)V

    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    return-object p0
.end method

.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
    .locals 1

    const-class v0, Lcom/facebook/model/OpenGraphObject;

    invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v0

    return-object v0
.end method
