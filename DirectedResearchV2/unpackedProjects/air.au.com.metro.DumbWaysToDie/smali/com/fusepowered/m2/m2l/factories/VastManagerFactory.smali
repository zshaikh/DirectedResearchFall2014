.class public Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;
.super Ljava/lang/Object;
.source "VastManagerFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/fusepowered/m2/m2l/util/vast/VastManager;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;->internalCreate()Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;

    .line 19
    return-void
.end method


# virtual methods
.method public internalCreate()Lcom/fusepowered/m2/m2l/util/vast/VastManager;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;-><init>()V

    return-object v0
.end method
