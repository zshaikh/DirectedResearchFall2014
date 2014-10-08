.class public Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;
.super Ljava/lang/Object;
.source "CustomEventBannerFactory.java"


# static fields
.field private static instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBanner;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;->internalCreate(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBanner;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;

    .line 49
    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBanner;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 53
    const-class v3, Lcom/fusepowered/m2/m2l/CustomEventBanner;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "bannerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fusepowered/m2/m2l/CustomEventBanner;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 55
    .local v1, "bannerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 56
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m2/m2l/factories/CustomEventBannerFactory;
    check-cast p0, Lcom/fusepowered/m2/m2l/CustomEventBanner;

    return-object p0
.end method
