.class final Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/inapp/purchasing/ImplementationRegistry;


# static fields
.field private static final classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/RequestHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/ResponseHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/LogHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/SandboxLogHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImplementation(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method
