.class public final Lcom/facebook/model/OpenGraphAction$Factory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForPost()Lcom/facebook/model/OpenGraphAction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/facebook/model/OpenGraphAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/OpenGraphAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    check-cast p0, Lcom/facebook/model/OpenGraphAction;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lcom/facebook/model/OpenGraphAction;->setType(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
    .locals 1

    const-class v0, Lcom/facebook/model/OpenGraphAction;

    invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;

    move-result-object v0

    return-object v0
.end method
