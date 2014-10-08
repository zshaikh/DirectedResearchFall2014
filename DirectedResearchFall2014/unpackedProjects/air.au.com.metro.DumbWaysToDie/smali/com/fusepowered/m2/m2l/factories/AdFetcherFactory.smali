.class public Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;
.super Ljava/lang/Object;
.source "AdFetcherFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdFetcher;
    .locals 1
    .param p0, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;->internalCreate(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdFetcher;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdFetcherFactory;

    .line 44
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdFetcher;
    .locals 1
    .param p1, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/fusepowered/m2/m2l/AdFetcher;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/m2l/AdFetcher;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;)V

    return-object v0
.end method
